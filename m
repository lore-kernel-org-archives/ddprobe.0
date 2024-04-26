Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6595213A3F6
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714112543; cv=none; b=OUpICFlL3rrF49PZLGTIN9k1o9v+OZTq7B9bizC7j0YrcmQNDevSe7f8Xv2+mw+lCRqCC2eBOxlHwIEBrR/a1FGIdQGjGI52SDBklxf0/E6lUOYgjcJURSK2HJ/ARWV5hz7ies9qJKAxL51pDhXC9O7umhM0IA+paKdQIul8Sy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714112543; c=relaxed/simple;
	bh=F0qP6fjfOV/IH8PeRrkfkzlVnqkdtipUBlmpBfZVWVo=;
	h=To:Subject:From:Message-Id:Date; b=gdyRIqvTYT9WXmGvquTsds+IGbwhYtP5KD2IXvPgx5oJsXy6RpLHItduY47pxvpgD+N6qmqDAvjZukLRt/fV1kdPSYuBKhVRZ2WKaoYvy3/1N7l8iSTpzJUsKwhEzc/zyYQv9G31sjw3WZ/SirNCz243SqWD+AjplWq6OKwx1NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSHHUtRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSHHUtRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C9DC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714112542;
	bh=F0qP6fjfOV/IH8PeRrkfkzlVnqkdtipUBlmpBfZVWVo=;
	h=To:Subject:From:Date:From;
	b=gSHHUtRd/ejq1UJm4d4W4C8DDc3o0p36SdmcjD0NY9Taprg1HvMfu675c29nRGvhe
	 xJIDoh9KOdkEpPdtyU4gbF7eDpWlmlpvfVNGIhFmjsgoU4e1qI364hF0q9ViX+0Ziv
	 wUjqYUELm2VSZ1RWx4C3wYMeHlzuVgGWQ4o7ncnhHmA/zz4yX19RjRZzbkLA2V8Hus
	 Rdjb0/O+/Jdw9vrdLeTZ3SFY3oO/gLe6/mMQdVqiNwWT+9esdQeoLLzP6Lq7bSPGGf
	 4o4oOwQFU+vQVXVLvjW28bCAMsyzowXJzOsw2RC2pIzhTUhPs8IFy59mKhsa1X4Ueh
	 s24MXNLYRddBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9E7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411254277.17953.15017336930821331477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e46f80d8e7b4100a6a69cea301ef5f61d22620541c9586f195d3cff640deb45
Date: Fri, 26 Apr 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714112542
