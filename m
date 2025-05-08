Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347B61DE3C0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746686994; cv=none; b=Jy8HNuVQgF924MM3kqMGWRs2GZ9271e+Aj+mmTBemiO5s6145AtNIPUCGbpzkqIg1m62IsGMmxqWIzuFx8eJXS20dRtGOHyjIolRiZeTSJtIqPOJYFzrChB3z34lP4lxXiLcZoj7gigHAwkSxQj/znvgEZXhmawDwi1Loo2DkO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746686994; c=relaxed/simple;
	bh=csjOIQ1SpGK8AbzOojFVAMs0TC9jN1QCqkviFGkpuEE=;
	h=To:Subject:From:Message-Id:Date; b=R2vGjEfJaDEXUqbOmTWcKKVbCCT6SwJJ3JPbjEdye0IpUGhEeNLh7jXUyieAGkw0gWZLUKwAA1Xgzp0FnzMLCRntOb4CUMGsoU+L0P3EasvcB1Od3PzBFzf1Mx2cfMnurVd58PAvzHmd15lDw9kXLiSH/+j3MO0gF00ySkuOLSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMEeNGyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMEeNGyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12EFC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746686993;
	bh=csjOIQ1SpGK8AbzOojFVAMs0TC9jN1QCqkviFGkpuEE=;
	h=To:Subject:From:Date:From;
	b=CMEeNGyrWeZCHyY8SB3il9KVCNH8CkMt0EPETqwHdeNty/C1bnuP/OJkQGajG9giq
	 K4HqgG2nFnohfydizjYuHjXikpNOByePkdvPAF/QREWaGwF5ckG3wquZtgtHT/9Bvz
	 H6rsP1luT6dsuLch6PmY109fTqRwdId87OOgK6zvD6uy4nSAxhg6EHbzeye3N7Rwl9
	 bqGH0T2J+wCyAeNdTu1jVq7h7fmLGlIGVkocnt/JsMTQEYZo4Uk9qmPe9D/sfPE5At
	 C9+in+cXUAZIZItXY/w4RcJ6LWb6kNBQOpZDSSzsQ30kCYpaArWV9Xebe8m/258SP1
	 HW5VwOALgk5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE66C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668699357.29882.1914362574945389278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486449958da2537d1faf9f10873a2c502c6ee6164410fdb3f7b44f55aab940ab
Date: Thu, 08 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746686993
