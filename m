Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4C55380F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719222743; cv=none; b=PelwCD4YNJYc1gvaK+hUdEBzT5l9RcPRq2CulWBljFL9/FUfWsHIgqH/Sf9vE7EvUoB9TMKeeSzcN/hUr5533ktNDyeEg0VDEH4raF5uCG5hzW7ZPrLbhK3M9QsI0JsLnfBdfQ+L6kzcuPt0s4Tv/0v2KIUj7eIWfgDVqkKAvt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719222743; c=relaxed/simple;
	bh=8wcTRseZYkb47NhvueakSjjkSiDPBqodk2jMbUUPXbw=;
	h=To:Subject:From:Message-Id:Date; b=dQQ+qlYhLC5LZcacxYIl6QJk/uQctRU/dz/9a7LZL10sADSMfKDg1aFU5mxxToKqZTl3ka49JCEiPV/Z+CvMDeIelxoBo1MMicIaBx2Gt+YfubnGXg4Wm+QNmBrmQC/rCfciPPcipcmHgiJEwDZGIuh+k+1BPFMROST3fsr7jUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yof8zfLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yof8zfLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D10C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719222742;
	bh=8wcTRseZYkb47NhvueakSjjkSiDPBqodk2jMbUUPXbw=;
	h=To:Subject:From:Date:From;
	b=Yof8zfLCrwE7M7Wi7ixxzGUHzOgm6tX2wtaOisc8alYAOXJxurQqpHzkIY2wLhYah
	 oDbJACZznKWxX8n3NJWUgWOkaBQqdVF02xMQ+iU9j546aDg9Ah73HGGULEDNhsR9k4
	 8jwNZ19v6h1D/V2A5bwBO7dypLp8mP/LH4UFSvO0DBstl2CnUNIbV85iEl5CWTwVk4
	 ix/yjHkkVxtRd0lFRKCSynjDvUd8auWpw8A/rKAr4YltzCMZPozdHcEc6am12+eWpF
	 WTkcoo4jxbf/TkM7M5TUlrGPlQ0dPBa77AZTblJZzxZG0T4M31oX+qzPjiS2+uXF5w
	 6omJzgahiJ/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D67C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922274280.3238.8453475929489478061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f318c77fa8a8dcfa3aa7bdcfd86c9c2601a796c1ad800c33aed73d54e57721
Date: Mon, 24 Jun 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719222742
