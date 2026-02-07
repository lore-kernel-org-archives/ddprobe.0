Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2877D1A9FAF
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770487434; cv=none; b=gN4AEc/EbgYwxr68GOvIpJim4+ZyOren1SrWLKVDptGhZtTbnDdvHXu8Oh72XctMplW/PALl0pXHV5fCq3AEqTMwZU+LG/GDkc7TbdcnOgmjkDaMNJZsHpSGqpo/5LCSB6vMRMOA+iYmulg6kUhEYsiZWDAoT/7zarGpGhMCNQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770487434; c=relaxed/simple;
	bh=GGfcgqQvAeDLgTJyDNtCXgL0dSHalC+X7zthdXYM4BM=;
	h=To:Subject:From:Message-Id:Date; b=IHGT9XTbKM9Fz4ucFf/rj1gXE73h0nRTwSSf+n7FA9fRmRknE70xNUeUHXbfc6EdNmVA7Xr1L/dOHTEqZ8F5k7yCjSrlNH7dU/fIG0+gHc05EcGoc2x6PmKcSFJZx+a8dtQEzOpaTEecMccIbduSkbFeEu3wDsez9yfVJHqEOSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBRZNawh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBRZNawh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFC6C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770487433;
	bh=GGfcgqQvAeDLgTJyDNtCXgL0dSHalC+X7zthdXYM4BM=;
	h=To:Subject:From:Date:From;
	b=qBRZNawhTl1k4DhUgRL19FHpJRLj1jaCaaRIqBzBqcT1eYFKttARFtaPzqV8G1Y1Q
	 K1eHPQKdx/ztABM2l4x1SsTZJnfCz8O2LEJlnNM4BHdw5J3AdrYNYBDFTMSuc8AI4W
	 ESK8QG1sP/2Y5p6N5Ya/g9ju5cCKG4+Xgn10ccsywvpddppiQc/69SzNtixSTeyF5g
	 3crb/zyu++B/Ad7Achm+c7betw+HI/rmCuMwbN9r83RIR0UZvisDAoNihgMSOIbDxu
	 iSfYvk0uVfTD+UrcYVlSE14BPHy+ASMEKAQbl0OKmcNkDscYZw0qbkLMjcwl+a13TB
	 +yjDTwXLLPMsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0BEE0AEF
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048743363.19540.9586994654977686276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c16301c8b8e292639b39b1124aaf0681c95f594163e78b6c848a4385547b76
Date: Sat, 07 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770487433
