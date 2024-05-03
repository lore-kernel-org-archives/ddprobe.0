Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E7CC13D
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714698743; cv=none; b=r8p9/FQ6cETLdbpqPC5MZ/TSb1c91+fdioN/XdFwVPqeqwiPB6dImV9B/guFYXuTyOs9YElc85TzpTblNLvnzlgyrpJibGN4IEKYfYnnTD0/+NMNIAiWk9kuevlzLeaSZf9i4ZJJ53olQmpR0pGYTUEZKTh3B680BaC6UG42+CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714698743; c=relaxed/simple;
	bh=A0e/dwc3H2SmZWsGxd7DKYxrahc4n4FW9kWhIoncjzY=;
	h=To:Subject:From:Message-Id:Date; b=Z7bIFFJbNHC0B141fs+guuna7n68g74T9RRuRNQeA6AAz9RrBUs/0oZ/syGz/azYvJJeQxg4+Jz5shekxyFtOby9PYoLYa6EAPmq2pgJTvRp0ktvYHcpUPV/3/ULelguasj81IA4gWwCfgxaxfNCCPWTuOjWU/Xwhcy4Rlwd5T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6mvo4Mp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6mvo4Mp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A43C113CC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714698742;
	bh=A0e/dwc3H2SmZWsGxd7DKYxrahc4n4FW9kWhIoncjzY=;
	h=To:Subject:From:Date:From;
	b=X6mvo4MpcknyphCt+kKYVRrBM+XStt8HGGgOKNrlBSTvIKcyy90IcWBPx0W2XceLn
	 QC3oZwkVAfs12Am1Qre2v1A+WmlnfSiXd8Vwekzfz0e/MUP2G3VDjEo+39S8Tw5ZE7
	 gVx6J6IK4s9UjyizyGhFtSjxo676UUkoYa+cLetg5znTyUqSxXdevRxSjSu+1GdYkL
	 3a2xlvCY0ZbyudBhMPHAqlwkSKgE3L6EUOsm3C7xq+Kn82z60Paxs3/qmIcYKFYrIY
	 jV4cv3MDptlAXEcpvfk0mP/lNzopGPCTarimjtA8VzDRI2pKE93alcgD34TCi70meQ
	 pI+pLCNX43JWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CB7C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171469874276.5291.5517671383361024993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f5abaad20838c0971a482adbca507d36e6750fe620a4c8a85e915dee86c2aa
Date: Fri, 03 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714698742
