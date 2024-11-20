-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 09:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mavanvy_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` float(15,2) NOT NULL,
  `featured_image` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `sku`, `price`, `featured_image`, `date`) VALUES
(2440, 'EPOI – WordPress Points and Rewards', 'epoi-wordpress-points-and-rewards', 33.00, 'Ảnh chụp màn hình 2024-10-07 005341.png', '2024-11-19'),
(2442, 'WebPOS – WooCommerce POS – Point of Sale – Restaurant – Grocery', 'webpos-point-of-sale-for-woocommerce', 55.00, 'Ảnh chụp màn hình 2024-10-07 005341.png', '2024-11-19'),
(2443, 'REDIS – WooCommerce Dynamic Pricing and Discounts', 'redis-woocommerce-dynamic-pricing-and-discounts', 36.00, 'Ảnh chụp màn hình 2024-10-06 094640.png', '2024-11-19'),
(2502, 'b', 'mvenw-tupcs-rxchx', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20'),
(2503, 'v', 'bvtfx-hbgwm-jsyvu', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20'),
(2508, 'Men\'s plus size T-shirt S', 'xtuci-tgepi-gnoha', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20'),
(2509, 'Men\'s plus size T-shirt М', 'rgnys-ipuic-qdvul', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20'),
(2510, 'Men\'s plus size T-shirt L', 'ipcwu-uegwl-zaicz', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20'),
(2511, 'Men\'s plus size T-shirt XL', 'jdqqq-deazi-sajmf', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20'),
(2512, 'Men\'s plus size T-shirt 2XL', 'edill-xoybf-cpdul', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20'),
(2513, 'Men\'s plus size T-shirt 3XL', 'zhpcr-lssfm-kuwbs', 7.18, 'https://ae04.alicdn.com/kf/Sa5a34d9c0d6d466095cc4518fa0a2fa7U.jpg_50x50.jpg', '2024-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `product_property`
--

CREATE TABLE `product_property` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_property`
--

INSERT INTO `product_property` (`id`, `product_id`, `property_id`) VALUES
(3095, 2440, 2797),
(3096, 2440, 2798),
(3097, 2440, 2799),
(3098, 2440, 2717),
(3099, 2440, 2718),
(3100, 2440, 2719),
(3106, 2442, 2717),
(3107, 2442, 2718),
(3108, 2442, 2719),
(3109, 2442, 2801),
(3110, 2443, 2717),
(3111, 2443, 2718),
(3112, 2443, 2719),
(3113, 2443, 2720),
(3114, 2443, 2802),
(3148, 2503, 2717),
(3149, 2503, 2718),
(3150, 2502, 2717),
(3151, 2502, 2718);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `name_` text NOT NULL,
  `type_` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name_`, `type_`) VALUES
(2717, 'Plugins', 'category'),
(2718, 'apartment', 'tag'),
(2719, 'ecommerce', 'tag'),
(2720, 'land', 'tag'),
(2721, 'real estate for woocommerce', 'tag'),
(2722, 'REES', 'tag'),
(2723, 'woocommerce', 'tag'),
(2724, 'woocommerce for real estate', 'tag'),
(2725, 'woocommerce real estate', 'tag'),
(2726, 'wordpress', 'tag'),
(2797, 'Ảnh chụp màn hình 2024-10-06 210619.png', 'gallery'),
(2798, 'Ảnh chụp màn hình 2024-10-06 234718.png', 'gallery'),
(2799, 'Ảnh chụp màn hình 2024-10-07 005341.png', 'gallery'),
(2801, 'Ảnh chụp màn hình 2024-10-06 210619.png', 'gallery'),
(2802, 'Ảnh chụp màn hình 2024-10-06 210619.png', 'gallery');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_property`
--
ALTER TABLE `product_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2514;

--
-- AUTO_INCREMENT for table `product_property`
--
ALTER TABLE `product_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3154;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2816;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_property`
--
ALTER TABLE `product_property`
  ADD CONSTRAINT `product_property_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
