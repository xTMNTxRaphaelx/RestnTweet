require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "RestnTweet" }
	describe "home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end

		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "#{base_title}")
		end

		it "shoud not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => "| Home")
		end
	end

	describe "help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title} | Help")
		end
	end

	describe "about page" do
		it "should have the content 'about us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{base_title} | About")
		end
	end

	describe "contact page" do
		it "should have the content 'Contact us'" do
			visit '/static_pages/contact'
			page.should have_content('Contact')
		end

		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "#{base_title} | Contact")
		end
	end
end
