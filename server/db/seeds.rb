# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rake db:create
# rake db:migrate
# rake db:seed

User.delete_all
Category.delete_all
Product.delete_all

category1 = Category.create!(name: 'GIA ĐÌNH & VƯỜN')
category2 = Category.create!(name: 'DU LỊCH & THỂ THAO')
category3 = Category.create!(name: 'GIA DỤNG & ĐIỆN')
category4 = Category.create!(name: 'SỨC KHỎE & SẮC ĐẸP')
category5 = Category.create!(name: 'ĐỒ CHƠI')
category6 = Category.create!(name: 'Ô TÔ')
category7 = Category.create!(name: 'XE MÁY')
category8 = Category.create!(name: 'CÔNG CỤ')
User.create!(email: 'bossdiemmaimai@gmail.com', password: '123456')
User.create!(email: 'abc@gmail.com', password: '123456')
#
# 10.times do
#   User.create!(name: FFaker::Name.name,email: FFaker::Internet.free_email,phone: FFaker::PhoneNumber.phone_number,password_digest: '123456')
# end


  p1 = Product.create!(name: FFaker::Product.product_name,bid_price: 1000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)
  p2 = Product.create!(name: FFaker::Product.product_name,bid_price: 2000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)
  p3 = Product.create!(name: FFaker::Product.product_name,bid_price: 3000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)
  p4 = Product.create!(name: FFaker::Product.product_name,bid_price: 4000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)
  p5 = Product.create!(name: FFaker::Product.product_name,bid_price: 5000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)
  p6 = Product.create!(name: FFaker::Product.product_name,bid_price: 6000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)
  p7 = Product.create!(name: FFaker::Product.product_name,bid_price: 7000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)
  p8 = Product.create!(name: FFaker::Product.product_name,bid_price: 8000,bid_jump: 1000,buy_price: 100000,
  start_time: FFaker::Time.datetime, end_time: FFaker::Time.datetime, description: FFaker::Lorem.paragraph)

  CategoryProduct.create!(category_id: category1.id, product_id: p1.id)
  CategoryProduct.create!(category_id: category1.id, product_id: p2.id)
  CategoryProduct.create!(category_id: category2.id, product_id: p2.id)
  CategoryProduct.create!(category_id: category2.id, product_id: p3.id)
  CategoryProduct.create!(category_id: category3.id, product_id: p3.id)
  CategoryProduct.create!(category_id: category5.id, product_id: p4.id)
  CategoryProduct.create!(category_id: category3.id, product_id: p4.id)
  CategoryProduct.create!(category_id: category6.id, product_id: p5.id)
  CategoryProduct.create!(category_id: category8.id, product_id: p5.id)
  CategoryProduct.create!(category_id: category7.id, product_id: p5.id)
  CategoryProduct.create!(category_id: category4.id, product_id: p6.id)
  CategoryProduct.create!(category_id: category7.id, product_id: p6.id)
  CategoryProduct.create!(category_id: category8.id, product_id: p7.id)
  CategoryProduct.create!(category_id: category7.id, product_id: p8.id)
  CategoryProduct.create!(category_id: category8.id, product_id: p8.id)
  CategoryProduct.create!(category_id: category7.id, product_id: p8.id)
