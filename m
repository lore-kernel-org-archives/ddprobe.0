Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C026281
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729559754; cv=none; b=lLUoRB5TKflaKb1h2LYZoSpKsxhmxY8g26d/6rvfF1knYj/LLrWErmR/sZF1Jw3U10qKJIwmXpT4K4ITwtvPtAuVMeHl6qSoFAxv7etPuFZRGBPHuHBU6NghkVPyC8TH37pl+lA+XIgTdfephJp2PK1cqLOnQY9exeK9yAryE6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729559754; c=relaxed/simple;
	bh=lL/QepRx5y+/h2HsGEkImX/YX3593KdPZ3R8oBLDMJA=;
	h=To:Subject:From:Message-Id:Date; b=Oe+2mmDHx+hdmrscx27imP2XlgT4yWB2+TKywH/eysd/4BQnAvZGDzGLLe8fDmRaTrnVe6ABFRkACAzrl+ZV/sTF+1AnP0TswaTMOT1wBjf0vEBGzJzLrP4ByWu/6HCRe3QmUzAvZo5xVmbsEFtRuGvs3zO9WzjDWKDaIhrpSkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shBrH0kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shBrH0kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3374C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729559753;
	bh=lL/QepRx5y+/h2HsGEkImX/YX3593KdPZ3R8oBLDMJA=;
	h=To:Subject:From:Date:From;
	b=shBrH0kdWLXT1fVvYgkYHPLPniJnzM4oDQGdMnvkB9/EqVlsMSkfFqVoY74hRdU5R
	 6+A7VfeojLuQ4nzSFNA4r5mXZ/1s3TbP12ms7Y+dFis68J2k8kabV8biVPADDU6f3G
	 NBfvh3YtRiIkhRxpDs/LG+O1H0rTivkB3jVLNzTuiosBoPU5EqnO/wdu4a0T2ViJUB
	 agYv7RJZ8bm/RQUZz+GoGjwqYuByzDq8hUSyRurtG+nCw6XR9n1Q4cFqgdopvw0opm
	 wgLLVk2LUY6huCqlRyrtY6OCJdMOF9as74uw2VhGO8Bho1o9sUhfBGP80IYpXqIVSr
	 zY3C+hWxT5WiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D282D17153
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172955975363.26315.7611237717783859880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78e9c957af188d9a20f9d9d7b422f4fe2192f6ba1109dfe3a306906969f1dca
Date: Tue, 22 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729559753
