class Api::TicketmasterController < ApplicationController
  def index
    response = HTTP.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=#{ENV["API_KEY"]}")
    render json: response.parse
  end
end
