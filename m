Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D94547057
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790730634; cv=none; b=Jh+GpJzUdAdc2C0yxasNjKUBLB7qP/IYm6Llo9qOHA6WWjIu+hwfaWn4/oQQ8xr3bTawc6VdfcJVG/HvgUO+m45V1m9aJ32v2Pp5znAofUNBtORXDseUkJgs53g/AzHrRzr0R2rhOWM0HC909HKoVOhLDRjITbmMlQ22x59+5sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790730634; c=relaxed/simple;
	bh=HbefLkgzLBpapFuoa4pOynpfR90VjvMlp9obL3KWSf8=;
	h=To:Subject:From:Message-Id:Date; b=ORp8IZpzMvTK7RL3y0ng++kglhv6ah4ntKKbR0WWZDwyUDo5x7843/A74jl93R+6XQ/bc85yxoMgM4BqOnT5kTgKe7ehcgAcxmfn0MPH0CEk/UMYcsJ1SIqFPaLs/ATgofCOBOR1TbynKmx0NxErKT/m7FCYBNw4Z2yuIgvrVM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1ZyFa1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1ZyFa1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE6BC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790730633;
	bh=HbefLkgzLBpapFuoa4pOynpfR90VjvMlp9obL3KWSf8=;
	h=To:Subject:From:Date:From;
	b=E1ZyFa1FdlNlUjuAi1GVZZ0+bo78Lt9cKADErD/Vnv1Kl734RmQuIKVhRmfm0gc/F
	 u8gEq1GcgJLQAl7z+nZnNDvPntpkmDof+P/pwF+3oNeXLy5uNfzck9fZsrMm32ipM/
	 lJbjPJQ7PELyJuDd245dT3fSAULs15Uc9ykPfGFmSW3BAbD1K5GltvfZg6QQ8DWOOd
	 XHmWIvqGBZEq9LcZmXhz7oC+VPwGqiigI+vqYkRzC9fpdeLpcUC1aBEnitPZ2p1gKq
	 p+I1zoNrrpUrYPETeMMVrnBI27HSiisf462jnGufl+tM/RSsvFrSZfx7a38euCJ9HN
	 NQzq6tpW0kOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72DCA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073063369.773.10184132084318974693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389b4063688964ec5a5350449b466b4e33f0707a4755b3341ae960802e46cf5c
Date: Wed, 30 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790730633
