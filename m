Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D256F526
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707928097; cv=none; b=lPVSj2+tbb5T7Q8idKWYQBq50lfZmZe/lGop4Z2d+TcX45ts3fDkLFY+O86uNaYW2xZ+q71+TAQQTKUFphw4O1Ht3+V0g+Drb0woOnSah5VwS5e+jR3IJRkoZPZdDRsSxhgiICWuFCfbH1ZTGYC9v+k5K9oIHBjF7wBVPVbLB48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707928097; c=relaxed/simple;
	bh=j8AGefXTdRyYM2w7yz5IfmiFQxeO72tGem4OJ+nIBVc=;
	h=To:Subject:From:Message-Id:Date; b=sYaSoFIr3aP9Sg81ZdGDsDebpAwmL9n4AusHvavSGJSoRbpDQDKPCNtO4cM4xos1DNjFmjiUuf87wHI3He37uRoM7UNhROKVRiorK8nYkFyftlUXlygG/K5pUMGSLj8uhrguNoA1p4PrfDAMCNVthscfwA6oC7pWA/SwYTy6dsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/kGMkCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/kGMkCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E9DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707928096;
	bh=j8AGefXTdRyYM2w7yz5IfmiFQxeO72tGem4OJ+nIBVc=;
	h=To:Subject:From:Date:From;
	b=j/kGMkCXjJoQjweTXM1/Ga/L69Wr5CHkIJCiwCPWK4YQWargmd5DIeN6IYVcKNZDy
	 +ChUowwIpueSVx4Nnk7yusK+UtIFjHIdc5uGFE7wIGxviDKKQBEw4nLAZ9gkMKs9o+
	 MyC3WkxV5lNVSs69SXdFubQiWIAmJyMHkx6DnBXFgrLP8u0EIywchRi6wNpROpHq3j
	 T1hB1Ryco+jx15mOGIFtt8XQIFFdW6dU0hpWBrLJr71Z+1CvM4H8zc365IKiRwxDjR
	 iu7Tu9Pr2qPGmZmSHLPirN8+ZLNWJnkPcFgXu/erVaYZPckg5WKnqAAXhFDQEW1Wq2
	 sUcnd1PwEB0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88499C48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170792809651.4357.6991341831067228780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54e20c4d46156c0710df7a4be631105e260a4ac50ce2a7ae9bb4a5fc91a26cf
Date: Wed, 14 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707928096
