Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D240415F1C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788182434; cv=none; b=MV1K4GmNHjJSlkNGrBwFekuGOTVreuIue4LPWRM6vvK+f1mTEIv7Ezbha6AyWLCYP/V5ybSTvFD6qOlYc5oLLJ1W9OTPWwFO+pKeiROder00UL++dBi1L3FCBVkDm/uOXCrlh+xwlp5A+b4pkselaKnMlfstMutzB+NPR8iimxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788182434; c=relaxed/simple;
	bh=Qa/Gslv1uOHh9dyODepclASv4XZHX/c5zzuWBJndUAk=;
	h=To:Subject:From:Message-Id:Date; b=ZUvzQEGxA8kyX8Ma7Jrq8kp/cBA0fvt23v/IEdFwTV97ESl2vei3/zPeiPMlVC7ieCesd4OWOHFzmz/v0arAx7CI6gjrqOBS29THV/zC4IdDhgbhTA7Trgk33Urb4dwvwE3FP/YIYfFBYu7J0NhCOF5U/dZUyhyKGc+1avJLEzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Htr28VUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Htr28VUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1F9C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788182433;
	bh=Qa/Gslv1uOHh9dyODepclASv4XZHX/c5zzuWBJndUAk=;
	h=To:Subject:From:Date:From;
	b=Htr28VUbsll15oRc3GfR+u/OBIhjoIvvL5pwkCCCS0Dp0lAO4hOmOn5Xo17X35UgK
	 oAxrtGcEw9Mquw0mCChTZsAU9EExKXmJWFYeeamNAjirIym/ZwhulGv06skR2rjnQQ
	 VpDQivmWwmdLFW5pcm+vdnSlYPGxiomnXo6NdqUsZdIocm4F9/X2WTMPnesaWT0FHQ
	 N/pW0NI7/QfKn+k3x5WDxMBgZZlUUrG8BAV1Zvq7m3UVCv0aLdspegEyqDw455fw5y
	 wdAOEyvDOtvqpeujMt7l9e8yDVby+OTa4stIoGm/4dx++Xw8I14FUUNtOlHq73Fg9G
	 m0LiQ6FNEPkTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B776FC624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818243373.24752.13677777303820478990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3796c49616544f6f4cadb5d335fde8a4f4f411b7e7b42ceae341063a3542710
Date: Mon, 31 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788182433
