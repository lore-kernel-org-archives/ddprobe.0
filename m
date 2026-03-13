Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91AC38644A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773441293; cv=none; b=Yo0Bxlqrv0Vwaj5IABZYdQ8gqR0gKG7a26e94C0sLlduhcSKz9JBfRAZ9pgwHqMdtnL+vzTONcm9QnZ7fdxCLbBcEICmSshjpEsvTRfu8VsLVOr2DLh0JQbe60NlTWe/Gvw+K3lSFL1Eelx2ha0tDKJYqGobxqkSqpUn8G9Z+xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773441293; c=relaxed/simple;
	bh=ctCDfzRmyhUzkhB63GNpov/xD3E4nkkqGEv1WZRddow=;
	h=To:Subject:From:Message-Id:Date; b=nRe2lujaIjI0OmtJmvOWPmpilSmRUZXkJjFzyzMXwPSmjTouYR7A/iEBog4c1r2VNnfrYREejg3OWtKoUAhA521EIEqnrqrzFKTjbuoyuav7iiRHpbtGWakqCwlZsto8gXGaahDSyowESMEAIHBjyImxDqiJYAh3vnSntBEuaMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0FozJgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0FozJgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A10C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773441293;
	bh=ctCDfzRmyhUzkhB63GNpov/xD3E4nkkqGEv1WZRddow=;
	h=To:Subject:From:Date:From;
	b=H0FozJgDuEIh5yKeYIVoF+aqP+hkr0sCk6Ut/7GJsfJoWfWsayTllEeHWK52qowBK
	 BjNGrwi+wUK0076fpXIdkNwHdKIMi6UMir2Zc3IPL+CIxwa0S6AoQJErHA6kNprMm3
	 6GJFOpYWaVtFLSOveuMVWDYOFOjMYEPyMAGn86MjHsWDvv6P8Erpg0CmCz5SzYx5CR
	 E1SuBPzo6vjBQbNFAXt/+cwlNoeBABHHymE2tEvRnz2AFUt8S6BNdPg5Uhv8Dzey40
	 KVlLuD0Ny1WurfrKLqaAYUEHJzc7fq02k9ZrqHwC+7FPU73ZVpqRlrD4DjaY1i7Tpv
	 Ydigufvf0X4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCAC107BCE6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344129357.30068.8593620398953614810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d032d36fda9a4343ec660c6cf51b8f6f9569488fdd3b10b492cce269b93f3e9f
Date: Fri, 13 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773441293
