Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F56220F55
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755188394; cv=none; b=RD4ACDRwMjf/BAdfHwVCV+FNrsByGfPBM4mq4ByH5ftFWCVbwKXGEcLULdfMqTXJycO8gYmED0HNYpTZPj3TKnk2rbXONK1zEvCYdX7J84hlmOi/4AuWTod0aOypYAc40PMtvCJ9Ym12Up+fngTdeWMZoUb6lUBTUs2nFEmL0L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755188394; c=relaxed/simple;
	bh=sCWd7LY5fUgmfyfO+pv1qyWVHj812HaDuDtppXEpwkU=;
	h=To:Subject:From:Message-Id:Date; b=BuJ/nx/55tXX0ebhKswUBptep0cZZpdIUUGQ2s+y/4747V8szFogKzaFF58bZRlnIZbit88dTU3w5lLr0Z48/AxDpyaub3io296VYvEGrkkLPGoQWTH6yONHIbre7mLjCqL1JdOs9Nb0yE3EYilGCJdHCBCiOgCyddEuAO1GTTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQcJ2Tti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQcJ2Tti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E743C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755188393;
	bh=sCWd7LY5fUgmfyfO+pv1qyWVHj812HaDuDtppXEpwkU=;
	h=To:Subject:From:Date:From;
	b=mQcJ2TtiYY3La3KH1fXLB9myD89Wy0SdCilIvl/57RW209biAQdgTnioN4+xdjN35
	 M/aEGWtiaJ7czBLFVi8bEVng3FM0966vDii3IMbZi5YqyatZu0N90mi4Nx6lRSvrSC
	 92t0h2wM02r6hZE4gm31A5B3XUP6zQz6/eeuo2eGLi8WH8MuAJqcw8J0Z6y0/W4vc9
	 5ACPErp0eD64eS0A559/TwtfLfkxIM3XxrsaHVsKYM6ckO+u4tXEuwO1jRrob5xxaG
	 1pU+FCPCXcwAxljyIcP46Tmu4oUYfarQeTmhKk11zlJWmdHLM2ZQQyQftbOXa7+ZK+
	 J1d9sj6tmU81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F0CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518839357.26710.4127198148746583439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0250e358a0b0516cdc5aeb169a1e6d548316fb4496bcc0895b82d4f48f7bca
Date: Thu, 14 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755188393
