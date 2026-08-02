Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF2A37206F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785657034; cv=none; b=iN+aNewPIg3RlJNGjVKMXSuPHE2cx0qFMEod1llpcdLB2wtVwfxPS0NHRa003gGaZrTx8sjH+npDCVcZddQcHVPIuzJKS9pWODPLA3L8eANFdfKE04qDmrECP/lzPE+E5ob3J9+F/couhWioI8xmYvMAm8aUqCV27Tbkslf2HRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785657034; c=relaxed/simple;
	bh=C1zZnpZeqxeAp4nj0VgmT34gkKqQjLMZWck/zD3YO7E=;
	h=To:Subject:From:Message-Id:Date; b=UBCmEflU35F6oVNYAvFYyhuiRPRUb5m+7BD6I4DaZl99c1y1S20xr/GrajgEA6n2NJWyy/cVq9wKijtr9DGIfufklw6fWOmy3qfBlvGfFeWHM5BzFkRPb4v8St4gTrK3fLjvvCfkLtTYfWFE9M+o7k/LqnWwYAgpFZQ4hYNFaIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrMG2rB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrMG2rB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE8EC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785657033;
	bh=C1zZnpZeqxeAp4nj0VgmT34gkKqQjLMZWck/zD3YO7E=;
	h=To:Subject:From:Date:From;
	b=WrMG2rB+w/e0jQVzBmtI5sE6NvMpR+yP8MsTmIsuLCRz3mGFrxxLmBxeEZoxjilU0
	 go0/5kXy3I0P77Ohev6tALX2h4B4myooyKj1F5uB8HSNkEm+iARpTere+ylOxULc06
	 HtAgC8LkAAvT4x3Q+iZckwaxtn2BOx9IgdrDQGRev0vQWfuaFRInHFRhvsVADhnu0U
	 T8EKJpTa1kOhhJ9tUb/i9uGXd1+9GQkWWbDbZiNFWYj687sP8xI+r8/CLV73zQLDsS
	 oNo+d3txNGGUYNZvjIS3NO1XJt9YXP3voXka/lsExyY2Pc3G2FRX+Q2yVHmzrhqVQM
	 r7JARuXTYGhcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE540C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565703368.11186.13209658617942346152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc266ef7dd7205d5248fda6240507d0e9c15b8549da1c732aca775b92b3748b
Date: Sun, 02 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785657033
