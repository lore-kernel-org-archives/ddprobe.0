Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5753C9ED6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782769114; cv=none; b=BVFaVhoUwicMttnWqnV1/NY+0PpF6mL1gW7eIlQk3HVWa6hbuzghMhRKM2kCyg31x4EN7k8IRP8CvSuKgBFWeGu+diUnEtdQv/RV34cjqGAFQeHHITbAUGMYJR6sxiBFkch6F2SBwtDz/Dx/mWaRJK57tbScr/KtdjK6Vvi8/Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782769114; c=relaxed/simple;
	bh=E/0JHsbO1KpgTjgSErnhxA7xI0Lp0AxhlcTuxEHLj/8=;
	h=To:Subject:From:Message-Id:Date; b=jkMHm6zW4fWFyzWylH89W+9qjpKyQwaTEIKSEDgxq7jh0ugk4TF4Q2wswkL1qX/9bN3O2AeJKILeZBspoDiNu64+UdyVwCiQD5MvzoYmxnPCnbNrf4kc2xZHk0ipXGLH1odqv71jTatYU7WlUAahwVb5dwwjOGmFlQE6GX0i3g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nrq0NzOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nrq0NzOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C075FC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782769113;
	bh=E/0JHsbO1KpgTjgSErnhxA7xI0Lp0AxhlcTuxEHLj/8=;
	h=To:Subject:From:Date:From;
	b=Nrq0NzOjXhOS6nwg8ag8z0EhkasafzDFE2t3dxZp4kndw6XWvlaTvMst1V3p+jUPh
	 zeUhCw23N4I0IAn2oCFxpMog3uX7itnAgNFLiqsgWPa7DY5IAxO2x9cPpZPxOWLkZt
	 JWslg70XyTwW1TvCzdgXTTwyTEYz+28NBoMIi6MMoObIvC1dkzeik4SNPGT0kjZ4g6
	 J8EqrPoa32zI2Xmrugq8dnfNYUspspBW1KEK8RJFY318QHigMOd7b6PRwBpkS/zCbn
	 aizbi9oFFA/MiEm9zNyaqjRtWZsfIOHRsHs3Hb4Cn14CokSEzxbos5vjsHxHAIrPWG
	 Mmy+a83bV7KKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D4EC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276911368.8541.9767058941563557326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37492d4735eaf092a59178e2eca4ee1a7bc2556685321c426064c912b3c8d9d6
Date: Mon, 29 Jun 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782769113
