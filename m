Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA56334706
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756403394; cv=none; b=HhekEh4S8Zl1qTlBLVyKHMAXC9pAbZ7Hk9ZoEoaweHnt47IK+5sMeak+8MpJ9xoiyzy1jatHvCxwZlEvAQbGTbp+K1pYoyqYCzkfoLGF+2c5rdAwhJunG8DzdON9n7HrZR4ImD6FkcYMPR/Lixoj32hRtq0HZZyktuy4WqxehcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756403394; c=relaxed/simple;
	bh=o61JDEKECyTdkZDkZZTFI/jzVI0K4kfjDf0Ngs0fJCs=;
	h=To:Subject:From:Message-Id:Date; b=cxDWNd8JLtPnO4V6sCJ8su9xoanPFZWOX4OBAT2fiAOV0YwIcalIMSLLodhQ2GrXXhkbNpC7E8esDaobqXNupXuN7UfopnxmZ3vrz4SZoFgkckcl6rWAox+PA6ViDt0+1+YLQJX1j9+rYvbXuDga811tu996WDJWfRXQ9xhmNKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmLe7z4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmLe7z4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB157C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756403393;
	bh=o61JDEKECyTdkZDkZZTFI/jzVI0K4kfjDf0Ngs0fJCs=;
	h=To:Subject:From:Date:From;
	b=FmLe7z4wbFyP6cFpV9kT8M3+vHXjkZESlwHTpAj+tHFBzmXsTlFQYU0o8a8MyMKDs
	 GN4/zWyu9krw7dbWR0BvpC1/tBzaHuJm5BI7qX2JX4Cf8plb0XEueNYlEA2gmTH8A5
	 SUzKFM+HpwYpwj5+Nx6XbnuWAebDcTtS+5lqBYGd5MLi+0b1cRlEhiPxi8TD4w8v9Z
	 doiPEGG2h82HK3hDhEHztZpQTWN1XrfxdTD7klh/htHc/khiiq6dzwNB2XXHGIK62c
	 O799D1X1jTD0GKMvboVk6PU7jSD/ZzCBrwmbDPBkDClJf41l3a2MbrERy116PxAm2H
	 DWhl/3WQEqwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760AC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640339361.20812.1168694432016184623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6ec7e05c3584ba73fb2e170184e7e8e36b04981689d689a0ec767b4b7b458f
Date: Thu, 28 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756403393
