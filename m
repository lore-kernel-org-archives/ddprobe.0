Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B25274B23
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780787074; cv=none; b=gHRcARtI6iQAA282hmme5zEbBRogB7aariod4toS+rZ+xaE4PU3IgGgUOB1d/e7iiCKg7MM38XR9qMyR0grd6ZDqDsS42yL1FjTOnJV9nPAsXjJ5qpg+9RPgn/CVIwiVodL7OEdPrrhhmSw2SVFwp8Nf0pjth/dNXIagKDfz8i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780787074; c=relaxed/simple;
	bh=ZvleLYfuKkzZV/9ih/6xBYm/MXgCt1M7X2+q2CxuAEM=;
	h=To:Subject:From:Message-Id:Date; b=LhYSL7a4eJXgPRjqpvLORoFgxrcHGQJOAmIClzva/uzIVI7ikk/hNq87ZFUFelxXFroT0oSL7KHmHbIrYJuSzwkeUQ3gusn0yCf9mJ7bvn06Z6atMsnwUgmz64JM1xGKcmh+CFBTNLajQyXs79cDsK/8DhnSHg25/54bJ7cEddE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOABA9lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOABA9lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7F2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780787073;
	bh=ZvleLYfuKkzZV/9ih/6xBYm/MXgCt1M7X2+q2CxuAEM=;
	h=To:Subject:From:Date:From;
	b=HOABA9lgsd54JkmWPy5wttSrEJjwCJRSO2Uj3c6mz+ROXLG2UYdjvoZ3lzCqN3Pxw
	 36O+i0XPtZos4e+C967sxFeokSTtaJIF4/OgMLw3v42ZzTTErtHngkL/SNJGgsjGpr
	 2jl8KUij9JF6CfueE9jOG26GAbWV38DO9klzISpGcTLL9tDBHMNW95jX2HtBm5VlHM
	 Jyf3zaH/IspLNXbUDP/6OiUhE1DO0Vm59A9qslyYAExO3jMyI2A3qqDKGWN2XBx6E9
	 c8DJSqaZBO+hOakYUxXw+a0fBzoMcl+0LefhoUEEogv8Js70DQZpPaCE2QzbZ3dCiM
	 lTglK/TG8TUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D1CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078707368.9359.10882005897598081098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00172a2d1771f3f32a9899ceea154ceea9014f33c3a19496d984e42b4b7c229
Date: Sat, 06 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780787073
