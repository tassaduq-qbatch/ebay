nokogiri = Nokogiri.HTML(content)

#get the seller info
seller = nokogiri.at_css('.si-inner .mbg-nw')&text

#get the feedback content
feedback = nokogiri.at_css('.si-inner #si-fb')&text

#save the the rendered values into the output collection
outputs << {
  _collection: 'listings',
  title: page['vars']['title']
  price: page['vars']['price']
  seller: seller,
  feedback: feedback
}
