Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5031AD3E1
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743373794; cv=none; b=L45oirmA0Qoe1pvaZQiGydrmdGN4zgTyW7zUxGaKGQihHFiPeiuewMzK//kAAfNn6eFJpcF6ayZeubKXd8+soRf9hzrwXusG3hXoZbSbjX11wufCXa9dVZsHLhSv8ihZCr3HN8ryasiacdCZ8NYqLvUjoDNPEoVRu/c6Ot2XqzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743373794; c=relaxed/simple;
	bh=+9ehb8eCMHqMghh8WOquxUzE0hRp3GXgs9ElLSNSdmg=;
	h=To:Subject:From:Message-Id:Date; b=BuseWznLVikunWMWDOV6r99IQIi2vyfDMs2usohf1VLwY0grjNFYJkglmN9RsRuQyQLvVyZfLtMQMomtBOhcI9JArYYzre5940NALTX8CCaKc5oIsu5IPZJjxWswWq5rqvf34V5u8ktA5+5rL+cvIv9es3jQKrccyxxKYO3TZ7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ5lobYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ5lobYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2456C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743373793;
	bh=+9ehb8eCMHqMghh8WOquxUzE0hRp3GXgs9ElLSNSdmg=;
	h=To:Subject:From:Date:From;
	b=MJ5lobYMqwCVLVYAKrs+vI/6fRGOLSA62H6DITMM6PbneoRzV4Kf3dez9ufU9c8Nj
	 WXYaUNHGfHX96yU+3tGT4jPAS5SijWkAZuY5r5UGXLIikgQ7T06+zxcr4pIFpJ7nhG
	 JsLKi8Bmv2iOXLRDcLOrwaa9skZh5ysEdLKdNQhoLr2WdRf03XEV4rH02o6q7o21jI
	 paB7jsfwW5xn1371n5YOBGTdvv2sC7N4AGfT3CdKGbbqB6+y9Ch+bzQ/b2c5OLHqcS
	 aIcMO0RusYjbnZMa9mc+J4mgIWnPi8ZaBU14gt2Tfd6oJH/WcLYrMq1OSx8glk24me
	 LBivj6vFVGlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5CC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337379359.1869.524114751663901801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5232be495f32087eb74aca64e808719a390e7e2021a70304055fd197f93adb2
Date: Sun, 30 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743373793
