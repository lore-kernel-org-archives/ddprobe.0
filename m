Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D75030CDA1
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771403694; cv=none; b=MB1JwEk8qIw1JjVkxd92RGch2xtwptoDldcROceUMBVdKwpiIUuDJVWB0v0RKChdWhnrVqskpufD6dzu4MqY2vZZga9VN7FVNt5FTQCrG+PlS3ni23CblDux5oc0I9NMJke6ACZiSgyso43YWkzUhOaR88I8gPi2Y8zTfI3SHkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771403694; c=relaxed/simple;
	bh=u49ZHapgfxhssIPWNXpw7uD32JL9YaZD02Ql0ry01e0=;
	h=To:Subject:From:Message-Id:Date; b=pnwJ9M6Vkktp3DsDOBVzhfSjm9Kl67FQLmpge39unVE7jPgrb4Nlgl8ndreM/6FmBKLVJ0HCEqPzFxjWNaJaz0P4eTntsrLPnBVZ3KHUY6TOHpJwOcCoXhwRDBrUIUUfmOGO2AxdsHajgx2bNfPFvecgcq3Wootp2r6/60gRdg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/wcBntw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/wcBntw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C40C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771403693;
	bh=u49ZHapgfxhssIPWNXpw7uD32JL9YaZD02Ql0ry01e0=;
	h=To:Subject:From:Date:From;
	b=r/wcBntw2Dl3WUS8But0byTiLXiYhQXI513qUXR6dzH6AQcLD6wrWTQuAQZhvHqwC
	 fbe4H0GQeaL99I4qecKiAxKXcEu2gL5NYelIAC8IP3Y6FjKjT0Tva4HUS+Q18aVrdQ
	 AL3XCeBBhG+kZhvR/F+AYtkypgkDMkLsvZpaV3CavtUwaNVrxJeX6a2qBa8GtkqugP
	 824ErgE8qOFFWe8kCXy5xF+25zqW2jc3eHkbE4yEQLTJCm1TbIRxpkN51LQ2sueXlW
	 pM8lPdfRAveF7zMiZ8Yl13mhycV6xJSNj/FVT/WcvweN6tAN5HuoywLD3Uw1pHJgPt
	 ur4w2u8gejkWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988BEE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140369358.2755.15012603450549583389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150e8b14f695ccdcf1d2420d7c64141c80bb2482c3d488dd89a2853ba8bef1f0
Date: Wed, 18 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771403693
