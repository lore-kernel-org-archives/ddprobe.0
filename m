Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAFC346A1E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780507474; cv=none; b=WCYlMzbYHVpHC7xfE+3uD56Pc1GuKDv67qABe96Nu2WiNERCRzdV5+lXSyUZb06BV5Blj5LMz6jetXNzc44XcoeDtza+X0sc1Q+7WWp6PxB21rrVgz5jld2NrWtEUK05gCUcjlXfQ1YdhyQZCvfmHbMaR2/Grfb27WyPre6nXYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780507474; c=relaxed/simple;
	bh=rxXLBV6E1tsB2ePd/GsKllJisunPf9tMcNvTBXKAn34=;
	h=To:Subject:From:Message-Id:Date; b=UVoacOsQ0Ylr1H9PXIr9407thXFpg1WbbD+fOaD3QACiZmbbWeu10hrMuk+aF3kO6C662aTmoLvmTmZTKv6+yvsjaSYgkTLXKLHcxmWUpPCr2E5LS5P+1hgNzZN7Cy9Z2ZGxxnjej1wvxJvWu9i+EaJwtJjeu9oRjEn74Z+EUC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjNN9jqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjNN9jqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6383C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780507473;
	bh=rxXLBV6E1tsB2ePd/GsKllJisunPf9tMcNvTBXKAn34=;
	h=To:Subject:From:Date:From;
	b=WjNN9jqW3ZdBGpjE4wV3Nhr4LEVLq+hrWRT+wVvxpyA5NAJj38N1v60W26qnBbZVp
	 dmz0IfcpGqI4UfUighvZqYlphfcdSQsWP23Hn9C/TurXUTuMDt4EkYkDwEUa32vtE8
	 YUlCFeRMYmRh8pH1gLh4vqfxeGYgW3/1ARGOWdCoGXcBV3e1Rk0sSxh1ceCME8mIx/
	 hRniUaSbaxde3OgnimlJdWxUULghCvUExX9SzAI/SxGzC1vhHFmZE4R0W5tmdrPGKK
	 h3YVrCUV+ZQQDRWm2d2i2fdy988UtZ+stsIbCiA4TnMMN4gO01zIokEO+pQ8qjzSh7
	 cU9pEZZXeinJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC669CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050747369.7472.8477113483488967899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0541cc39953bb0eb85996d09c886dc20d23b7f4308f7cc1fba937da24895f76d
Date: Wed, 03 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780507473
