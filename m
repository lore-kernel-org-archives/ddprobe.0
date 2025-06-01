Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2D283A14
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748783994; cv=none; b=WX74XiAF3gdh/bRm1wBoVMCVGn+QOKjmv5W/rp0MaBdRpDfgqrq/ohX2aV1exZSaSYg34gh2JL4asfjv2mSMVumzNEXBlPpLKCLgCFIEWVfwXUMkejFFdbzsVAzMYjrOgQq7U9ROHw2EKgqfCRWCO1jTI/Kxb18qt5PZUTFEq2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748783994; c=relaxed/simple;
	bh=R0zMTFkkGmCxle7aS7C1LxqMAeuJ93b9sKlvvdi2nhk=;
	h=To:Subject:From:Message-Id:Date; b=dAuYevVw1wu7E5B5dRIkwFOyrzjbjg8D690OAc6/XU5THLWJPvX3me38CI05Z9EgDqTkB8CG72Uyu7Nipn+rtdBl6r01xSQt488ZcnIValFR8yxyM7G1He/efGDoKhGtq1xCJPp+8kocT078kE3/BAtdDkAL8e8Lc30DTZspyyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU1QvsAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU1QvsAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A843DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748783993;
	bh=R0zMTFkkGmCxle7aS7C1LxqMAeuJ93b9sKlvvdi2nhk=;
	h=To:Subject:From:Date:From;
	b=kU1QvsANnVO9g4N6s1GVo12OIxiFw0paXDSZIcVX0ig10SfIbg1U7HEMh3X140MDm
	 +0QXODdVkk/nrwBQW965z/3HVQZgGyjSZnBQnsn+Uc9fYFhlscFLRDgLwbcAbyKpck
	 gGIrwxCQEaUMf2TpRJEe1HAVTI0If+RjQ/opHgNNynLLsDqojbN6EMLeFMGcQ33zQB
	 8G/QYK5M43ayBMxqG8HX9968pe5RQMHEOQmwkTfIgsYtVBCRqj9UAXbwDzkl+LWM0n
	 DJ6ZwVeG5Xo/XILrjZ+rvQbX6sM5Zal2kyMpMkmhMkb0AaTadfRqfcI/w9Pyt604NW
	 wwlmANIpohojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91858C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878399357.14459.7507880970385316602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56380d5829518abec83d8b0d9fa184b0134e644f55da7094a074b8911ad61107
Date: Sun, 01 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748783993
