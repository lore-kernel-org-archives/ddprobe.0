Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91AE835E1A4
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789288234; cv=none; b=A43tFuQx6MWmXYJVFPYw1D1RIOEksolLoxwn41TPrYGF6vlKMQp1h3CxZ1kPNmmUZ3nqNfQ1kxjr/4ku2L/63VcbXPxBngSfpIHv53KtY/BkF1mh0XzD60i9MDAPG8KtmodoS9S6jDmEGDJ9wBuHXetck4Oyb4dvdT58kPVWb0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789288234; c=relaxed/simple;
	bh=+2qpqPYN3hzoGGpog69YVNHKvKoTN4GBWpt4dMqYA58=;
	h=To:Subject:From:Message-Id:Date; b=MIOTxDGbgPSU74IzmkR2ooQ/ZTOthxm+tw+zelpNvOjc4/wWj+saZDn+6/tLpNeoBLt+7mCihiA8fNHUFH6UPfS+Rl3r95nWSTDkZys2yH2Yx/znEy7FVh2nbDwzL9zp+KNAfX6uwU1pFvTNRz6ks1+v2ZemMJDO6PTiMGB3Z7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOzCue9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOzCue9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCADAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789288233;
	bh=+2qpqPYN3hzoGGpog69YVNHKvKoTN4GBWpt4dMqYA58=;
	h=To:Subject:From:Date:From;
	b=jOzCue9LNGisK10NNv1cmhXf7RRuBw9h/R9Zpik8wVeXIPn/mtCDIhDcQ5OanOEb2
	 b5YTZmP9b9iCrk4t9RPPjDsA0201hmPqAIKrlEOJn8qK2RKI+9wQJB0MkUJ/HyJ4e+
	 FSHjNo/i4MervKVHqW1UH++CEIG86e44am2fvUlE3vyDZHU1ZUow1SBVpEmipj+QMy
	 UNf6nChmCsfaDvKO3HcFNzgYCQAfgGQbRZvQfsb7LYu0Lq1yk+cRaInP6slZ8cegvI
	 6uBF4CIvPhOH6NgGUg7Rc6PmIaB/P8+KkFJJecswgBuRD8MomZ6VzqH3xbfw41rTRh
	 RtJe9HYwzvWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9866C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928823368.24910.4010873386613687071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3503b40039dc8c30094e929f962b904d59ea4944cf2882434fe9712bb2eae7
Date: Sun, 13 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789288233
