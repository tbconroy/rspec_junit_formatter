require "spec_helper"
require_relative "shared_examples"

describe "some example specs" do
  it "should succeed" do
    expect(true).to be(true)
  end

  it "should fail" do
    expect(false).to be(true)
  end

  it "should raise" do
    raise ArgumentError
  end

  it "should be pending" do
    if defined? skip
      skip
    else
      pending
    end
  end

  it "shows diffs cleanly" do
    expect({a: "b", c: "d"}).to eql({a: 2, c: 4})
  end

  it_should_behave_like "shared examples"

  it "can capture stdout and stderr" do
    $stdout.puts "Test"
    $stderr.puts "Bar"
  end
end
