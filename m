Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14025346AF2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768209234; cv=none; b=nQr8RaLszfbOXwmU5oMpdIxD4jWy0QCA8K1uKdvAqEAh+Abl4wkAyZhYPMFVVP++arqnrJPWc4Rt/cVnV4ES0ioTv7yt1t88Shme5WPaw8mwPIrathAdsTmnwYU1FWHOgwYh5PeES6CXr/jYrh5ZsoqrOJKKQAs3Ny4VYaeXeEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768209234; c=relaxed/simple;
	bh=hIOgm2mL1rv3ndYyEjT7bZa0n35KoEYuXgN24F4qFnw=;
	h=To:Subject:From:Message-Id:Date; b=ojgjdTVm9aH87EiTleyRSfODOQQ09Eu8VuiTZ2BAnOfeMKtuaZb6Pc5K80pQM3dDSTZO38Q7WuAtqADB3IcGyi5D/yJzJM7axJkpHaot9yq7Sash6WVYpjlR4/nPguMrrEqVFT0SnXCMRzZIAuTwkccxvwP9NtGFEotCnEs0BhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhzI4GXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhzI4GXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2617C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768209233;
	bh=hIOgm2mL1rv3ndYyEjT7bZa0n35KoEYuXgN24F4qFnw=;
	h=To:Subject:From:Date:From;
	b=fhzI4GXmCVcLokxMC4VKBy6/y/fO4Y1FBgykv3dSODe8cQksxuL7wPgLqbkbRqf9G
	 E+kIpxcxQQXqHkvdHiW/F3KOchS5jmp7u5GWApBnjMhjHhYxjzqqz0sGpPF9w0GHDv
	 TSRaa+3W0BewIcpxU2HJp0VFEqwmY1XjthHXXtK1NamOZDKgb9uagFUpX5Wxn4hFMj
	 Aw2Cbnk5ATcyErkOmtS4FR88gfgKapTmbMyrtZRmmURCzo2dcptX159ALgIC5qzXp1
	 1ioM28wUx9aKAHcUZG9QIbC1wijgPFT2cwQEBOhiaUUT9v+sLiU5Lm1J2U9qgI5uV4
	 Bb93f4N00E3Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF54D2505B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820923363.12808.918596262508243530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bf0e5955f5f0f48927b1d740ba05a38424fe81a27e0a06aefcd0eec51484bb
Date: Mon, 12 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768209233
