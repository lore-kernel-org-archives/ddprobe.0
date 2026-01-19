Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067541A285
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768838034; cv=none; b=ZJGMRII0LOG1eeGYyXJ7fGGwGy3Ey8mI2iTbvCVHZQAR0eaCap2Q50yU9Tng2H0C3nVq9x5npMR4cY7HAT4FTqFtk0WyMyqTwu31NBxfVedJUZwbvquZF7ZZwb50Rbwl/oE2i2mJhhscMW25V2bic6Qu5DCwjfJ9tVOOopep+xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768838034; c=relaxed/simple;
	bh=Tj6S8JR0XfEh8x5DyMG931SMd6LRTMCUm+zfIqu85ak=;
	h=To:Subject:From:Message-Id:Date; b=JkpTP/aPvNcsSx2ONnXOmESAgb4hA+5jAqCYX5Z8p1fZeGBjXxjZ2xd8DKOjm6zExmlB4ZUMNkDaybOpTNddXRAgCJuTku/tsS3/fE6X650eFKV052XpNOsO/hfvwmDH0FZZKqtbz5TBVS2yvXFluOW9/hPh+0xnrK8Im80Dt/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7pwX2/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7pwX2/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC0C19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768838033;
	bh=Tj6S8JR0XfEh8x5DyMG931SMd6LRTMCUm+zfIqu85ak=;
	h=To:Subject:From:Date:From;
	b=q7pwX2/LVppP7PH3wgQeBfD6qCwgMeL3SwKk459+otEpfhVDZ8oFCDpJbGDuEZRwE
	 i5KGF2GBTFRpNV1eoSRvUzIzLrEW9NkudvGFDn9NmNPFH5dPMS0QYBNyn6K9mXTEqf
	 oxr4C5QWwCmEtkjnYAlcnWmS45iCr4Vcz2JRL2MQ+QwAcnlUPrq35SLvgYQ5C8+qYw
	 ZYcBccLYDeSl0w9tNjAo7epWfhj39aGr7QDdwMSJIMpPla7U4UzoENK3ajXRVHrkQW
	 AOfBGW5J8St+DLWtzEg/2fzAI6n/qfOkT4m52HI+hw5RQLrSfMlIUJgVOlMGC/4F+7
	 x3n+lyBkiwE3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD5D29C39
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883803358.30861.11750398397253801895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47679340cecd30607b7cf5fdc68b303e4a4f62f459d9c505e88e04e2a01830f3
Date: Mon, 19 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768838033
