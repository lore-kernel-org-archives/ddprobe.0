Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321722DEA8F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775692534; cv=none; b=T4100xykIFYGQoQa2arTXEQivZ/EGXylmn/vKmqVfQu/MvtesbY3BWaifECKXyLIZ+wkkRaZDnMXEp9OfxGnBNoymeuHLF8+jUxmtIJ9+lXVrDj1my4gqBl23/o1x9qA4Db4nNo2pwwB/U3iovwx/mo+JIwOIhSa1r+tu6HaIRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775692534; c=relaxed/simple;
	bh=k94/CTbjPr1vWR0RUlYn9KmFKxMBgETZOox3uK1NefY=;
	h=To:Subject:From:Message-Id:Date; b=GYEGZErXmNiSq8saq1UCeXYTPgqBrpTPCuyp1yzrcpO0pymFHYw2HRQdSzZTJRo2O9sI8LtESQKxnG56BKMmE8e0oAg5WFmEVGTJpj1t7dhXPvEcOWQM2vMbe42FCQIChSYC1fpp0r8BUAuaZ0a+egjROM6jAvLMig998GlHMpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/GBlodM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/GBlodM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4165C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775692533;
	bh=k94/CTbjPr1vWR0RUlYn9KmFKxMBgETZOox3uK1NefY=;
	h=To:Subject:From:Date:From;
	b=f/GBlodMXg9f8Th1yztEJHCam1W2u1Pb3zRomc5Z/PhBvxGCvg1j3w5bzCgKOuC5u
	 8m4KuGP2WKBiphjhaub4XpDiaS/Gq4d3sgFTRBGzPUyAUumLU3YyfvsZwwxcArT0y4
	 p90ooOxd4yADRCfn4T4cPzxBk2wExJgWtZFoOEpkdi/ukxg80LTi1a6WF3DSUgv0Fl
	 0Sa2QI1SXLKhsBsZx+RaxUHM3lQJLYWRyGyIYWuJCokInQG437Nc9wL08HLIIZbD3F
	 46SC4xT5Q/63e5pjWJkMuzpT6jYh1z6l10ucgt+z4pUyXk2CVcx5bedsiugg2IZmfk
	 PSF6R+38gYm0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD68210FC456
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569253368.23798.1010697866541369837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212fd354edc93477516f6738fbdd57d2a27a3d0e690be2a6acc98148b9200aee
Date: Wed, 08 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775692533
