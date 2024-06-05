Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29219D8AB
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717598243; cv=none; b=F8eB10CY/Wb5IXWVO6RUmRWLsYUjv154+tI4aoNdbru6iErkQoIEtn7zd8Q/OpIyRl6gLPzLV6Tq3aH8swiZYoPFpYu4swfPO0l5L9LgrfWGRN6OFVIO+0lsSMF6XvTXB2VaIBkHjmnflFFIp6YJFa4c2JHkgmcL1Gq3avCkJAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717598243; c=relaxed/simple;
	bh=NA3fiEAhusbziIJsCwTt3BWegtPFOYpBdLm3aJZOPWQ=;
	h=To:Subject:From:Message-Id:Date; b=T91yAngjg6vugswbiRZfZyL3cKYtdryZA8PBNoxUIqAV0H7icxIKSStukXKeq7dVcrk9AmaWtx1hWpmaaIwUgMDGg+ysJQc2h/JdyTHuOZJFSL08bZFYWI925iNZmRSxHnwoeSMov2CZ3++17Kub/hhUVv3gTMw137Uj/+UROho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRq79f+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRq79f+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00716C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717598243;
	bh=NA3fiEAhusbziIJsCwTt3BWegtPFOYpBdLm3aJZOPWQ=;
	h=To:Subject:From:Date:From;
	b=eRq79f+r8/njdPJh6je3cwMbA9SDd8RMmXR/QGelSY8R3euDPbPb7n52A2UB8ysQR
	 vnY86tQ4jzhtrFA/qu+/IAi3LCxB+fqdSBB0llZEmVHG+R1z5YPrS4TitKxLKiBLye
	 l2HHoRGSzF9WNBDVl4gXsZ0baSPBIxmNa4fksYbHtARBug+2Iq9yTNVlXxUy0JpdxI
	 hIiMe2KdTxKZZ07ADrdqR/k1+Qv9/1bvoYJV8IKe9Z/xZ5ZLISPV88txq+7rM1rSPp
	 4BZmCAWhtjX0DGsW9uCdpVeoeeJIVEmWBPGxnyvRWFKerKMVWiSny9NnP6gV/BP4wF
	 A2rylFsnqdcRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC5EAC27C53
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759824288.19807.10536400510960697174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e7f091ba9e85a6c4653fb902fbf0fff8469843e2f1bce2b71e0c28b11f3e7c
Date: Wed, 05 Jun 2024 14:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717598242
