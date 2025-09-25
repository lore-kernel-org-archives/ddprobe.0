Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C4A31FEC4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758830994; cv=none; b=Lgf2MebPzK956Y1yS3Tm6via/E5pSDsoFkGX50JBOdyyZzV39ANYakdhP5UcOdauCUtAM4HC0zwRu7+TZ7OsNGpVlJdTlEfeT5dSK74T3lAEt3mI13KBhQQzswgSSzYWKJ5kI0u99aZ3lSW8lNkwn2ZDj1M31AIvpvpgruBaT+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758830994; c=relaxed/simple;
	bh=JRduRodq8vwjO4m6ChKLIpxLlXaiSviaos5/z54ZVeg=;
	h=To:Subject:From:Message-Id:Date; b=Hg7XsNHZZbtPrIlRfSDCKOnO+U3nCb6s9ThvB+2MuL9t94CpKouB9lH9RhFbe26AJtbw9EKqSaNoQpLF0fkU11Ynzg1CsGapMwtNcJcV58scpBGCDRwCDipl+r9H2bPdNsEbcenQEUqaH810ZJW+PPtJyIHGzMZKVnhYIk4d8gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9aW/KGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9aW/KGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B79C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758830993;
	bh=JRduRodq8vwjO4m6ChKLIpxLlXaiSviaos5/z54ZVeg=;
	h=To:Subject:From:Date:From;
	b=q9aW/KGfGiOS+PhgO/KPHC31C2VJdNzFn6hSIcb8kK6iBVV4Zmv+woaTyoXgBY2Lu
	 2TH2hfnfmQw0Nz2C2v9Id2lqVhgjXINpCGlh95pIiERZ72/IrOAmzyqevy0KhWXpST
	 KdzJZWID9E2Jp294Q940LIqaI3p/hpljKLg6/AGlBX+ZPcqzJCCAKOOobvtMjjvdRS
	 xKpz15xuy9l0JD9LII3hbAHfpVNCPbV7aJht2FVqukyvN7XWDmcoiJKtVZsS/MtLL+
	 YL1kVRgNaI260micYkGuUQkVJ1Tf8o4H2qXVpNPO/sca0SvXLnvgo77oIJpLalfbdD
	 EGGnE+gMON4JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FDCAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883099359.17371.17029773195429327647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780111126c66915c2fa74816fa08d8bba6c385ff4c9f67f022b9e9945d6bfd37
Date: Thu, 25 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758830993
