require 'spec_helper'
require 'rails_helper'

describe 'destinations/edit', :type => :view do
  context "form do" do
    it "renders the form" do
        assign(:destination, Destination.create(name: "test"))
      render

      expect(rendered).to have_tag("form", with: { method: "post"}), "In the view, did you add a form?"
    end
  end
end
