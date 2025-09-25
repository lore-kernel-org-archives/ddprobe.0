Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFE51BC9E2
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793194; cv=none; b=TZDZxJh7Te/aVkXJRc5mJQSY7NSkH0dHQkwx34FjQOigbsEO6iSkvDR9XuXJS0bZJGpJdbdVmPZUq6+ugueSu5K+fOQGkT8rVgdDWSoCANtoavjZt3s6jNXT+MC1mvuf9BBVVgl3VhX4K27y2gfI1MUa6W10BD8HqBbUAQhymLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793194; c=relaxed/simple;
	bh=o5ry3eBfQdhOkjntTXz64LWW6VCOFpv/XXpQhL44DcI=;
	h=To:Subject:From:Message-Id:Date; b=o9SlMOrJtPhjLkLjJ+Pdk9kvDstiSZoYvRCCkHDSJgBRYgg/ETQkZbKOiGfzpF7YM4om9ddmVm8ByxsvrifOyKL5aQuBgClSE1VgQMshL0I5jhv86I8iCMBNRpnf8o13jnfy+yGuqL6VrCVsjIVDIg+ryRoSs6ZMiDtFCSEFcjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRo0pic3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRo0pic3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ACE8C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758793193;
	bh=o5ry3eBfQdhOkjntTXz64LWW6VCOFpv/XXpQhL44DcI=;
	h=To:Subject:From:Date:From;
	b=MRo0pic3icXthMtGhxxku3Z8spRl/aJN3xtwpJtKkp6VYj70X8jk8BvWES/BqtdHV
	 8U4GsWOegFvOPIKqVHWmodoVdpjwGPyc+eR9gK3keAYwBv9eDk9v+18tvZOVBGzFEJ
	 BYf0nSw4RQTgHiOwWV+6Pgdx9nfWO9b/ZnuIdbFPvBIObSyh18sPxgJnDYdtowBLbr
	 NOZvW5/dDROR0OGRE354fMK0V2k12wC4YSry3PSJFU+wO01HR/axWLSgesgO5Ih+I0
	 hAdNQCdvDqjcDxKHoxaV4oCquISyJrIWCTTiy1EXRDxUtRLkv58cp+fbLvXm9JorRa
	 4iWyuvcCSGaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA6CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879319358.843.8551772307316085259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c958044e8d37f01cdc0de8c19b6329d0f68ea4760e832f3977d4dfb12af7c78
Date: Thu, 25 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758793193
