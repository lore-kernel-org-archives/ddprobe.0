Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8A11922FB
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725941754; cv=none; b=WLPq/ua7VxqEwlEWMCtfxgCkGLIMIkI92GSi7CPn+LROOQivBOX0UtmgOOzxr9KrHvRDsT5gcgkb4FwQC8jttM5ENSIOK2p8Ba3Eu46Gvjn9y7B2rfr9EqqktEq+1aiJw1yefjGwd9dXXsIZC1CKm4CXBnaMbQPpJXyaso/Ogag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725941754; c=relaxed/simple;
	bh=gnKCsA4wBCLXsyhIkd3XPQioRijU3eIqcdl1Py7g8do=;
	h=To:Subject:From:Message-Id:Date; b=KyvI9zG3YNY6wwci8FwCq2dj2VXKgmLXS6Ew1+IpzWmL9EnWgioXycn2uJuR6oMy3O+ywagiYBaSi4xteuMBkCZT4Sr9mk5XEaTEMX5hWfScSOXEzhHwOv0sOPmshPRs5skE4oegzm9bc8MialpA5OsdOQ3ymAnmXA+TDcXhjEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oqbjtmb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oqbjtmb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FA8C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725941753;
	bh=gnKCsA4wBCLXsyhIkd3XPQioRijU3eIqcdl1Py7g8do=;
	h=To:Subject:From:Date:From;
	b=Oqbjtmb1rH/xQrkwHoSrG+brtRaK401+n3Z/ONg1FBh1JwF7TL86u7spsvu9198I1
	 1yI7VsDQx/uFeo8JpRPvNaws955uix6EfrlLSw5+RxEoKGoC5XBtuoCdyprM+3EUOR
	 grgBSXA4si2EvMZkafBOI/BrZJKQv5qZRN3N9JOZI4+wSTN/O5AL8YUjIcFGCGpds6
	 BVWzsfRCGWv1AUUR8FiNb5NuyDyVp2Oohro7j7uo12G3SZ1G4RiU3r7My9yuumXGoa
	 VfTPvB67lwTeeMG8rFzM3urpLDQh44owuUMp+j3X7VK0YuwP0r+rri3QvTL4sr14ED
	 CNeqTK74x0tmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D9EECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172594175370.26120.13539434371550339641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc4f00ce28574d283220ddedff5f4bdac82c70fafbdcbd1617a2ad9da5b3ee7
Date: Tue, 10 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725941753
