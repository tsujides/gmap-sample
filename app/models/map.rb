class Map < ApplicationRecord
  # 以下2行でaddressの文字列から自動で緯度と経度のカラムに値を代入してくれる。
  # byebug で map.save の前で止めて
  # map.validate とすると 緯度・軽度 の値がセットされるのが分かる。
  geocoded_by :address
  after_validation :geocode
end
