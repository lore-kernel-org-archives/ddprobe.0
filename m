Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BFD2AE7C
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742281194; cv=none; b=Jnr/4bsk1VCSjPaqvgaIyOo+QF7Jdl1U2RvKtmjLg5Y9NsZIZ992eYUKRJkHR8RkSCGRCqpOGOZq4RjX5KxYyO+CA7rnO/XuIpMmH4cHu/nGJ/ymunKNv52nHSDBoRwKXPf1vVF0O147mIgansoLz34YomGwTvbOIm6Z7h66uA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742281194; c=relaxed/simple;
	bh=ydzMDNjQdhitneQABDVOt5p/4FkwYQoRDTSxFuUBSe4=;
	h=To:Subject:From:Message-Id:Date; b=GfQ9cuqD8rBBTZTYCN62ush6ImGAWXGwXkrf+65sgemK7ItJTeyRbAG9t0s2lLsNZDxho1zWTzUIptdmQde8ze2/GSgBfginYFRB+MzNcR8esPtizMdPJuRveq/81sHCD01KFNkLGkWJcDZZM+Rg2ggFKYZzUpAHuQP+EqVKxWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEHNKc1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEHNKc1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37F5C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742281193;
	bh=ydzMDNjQdhitneQABDVOt5p/4FkwYQoRDTSxFuUBSe4=;
	h=To:Subject:From:Date:From;
	b=NEHNKc1cFdmJ2Okz+wa5dCuOrG0nngDqrkhVo0+QKqdyPUf9fHj85FpSeeJx8F1c0
	 2jFKFCZfx5L+BKCGeQUu/4/4DXwlLsqmgfJgkJmhiJnSlnbjWxNnREYhFxGkYsxOk+
	 P3fGO6gRkuOBuqxw/hXpMzj0QV9JbEdiiJ2Qlg5mbk0pdKQs5bTXqDm9nd5q2u1Gh3
	 gFwEZRdZHTxEnaERxBCF9ARxkua1R5eEQn8D6lmkl4m90cWMdPZ00KeLLeCnjyV9LY
	 mA/nzDfL9iVzTJcnmT5l2t+X7bVlt/U0enc4ciZo+nsSm+wFQGO4DK5kWRwO9c9Nmm
	 sF9FJkKOVxDPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17CCC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228119371.9543.17282977767934393703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d13bef962442e5d68e380def42c559d68ff9aca1d0f3150d7aaad7d2c257bdb
Date: Tue, 18 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742281193
