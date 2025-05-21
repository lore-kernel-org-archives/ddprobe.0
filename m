Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E20124168A
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747819794; cv=none; b=XZ+kyfBDRKAAohcGv/u4beSc7EGQ1kiBBIUkqHxdhonWgbOaXEowTEs7bpaz3h/0Q8zkZt1nCKsrcvdBEEp+u007oTp3p26DT3MzDEusvZjCcuMVmk+XX02PNtWZHGrr8xs9W09l4oPxYCGV0a3OeYX4mbX8huPP4gkjAF/DRiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747819794; c=relaxed/simple;
	bh=ILLCSbK510Q661FH6jFGTGdn6tTHYDLwmHcY6tRew7w=;
	h=To:Subject:From:Message-Id:Date; b=JCC40JDY1QOXJPBn0/jVgcKRR86QyZX3Uw6cz1bOTiUJkccn3GKI7q+Gj2qEPyevOvMiawiD/cCp9vHBQTeHZnVOdzQ5kAqMw1qqSyGZNR5m2UmwPHMPXxwTCQHn00UI/1/I5e5n0tJaKBpKnvGKUuwHN13qd1vMPyIaIoHUU9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZm7F5m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZm7F5m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E604C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747819793;
	bh=ILLCSbK510Q661FH6jFGTGdn6tTHYDLwmHcY6tRew7w=;
	h=To:Subject:From:Date:From;
	b=UZm7F5m9VCF6+l1iEHrs3l//6RhvWRfZQSyhwIRT4XBfgLqWuBn+HN4oM+N2IQnz4
	 1T/JXdZsNk6j2cEtbQt0ED/N6x/B9INZN0HDILzeg8+9dpA1KVy538aF/cJzz8GTSB
	 pSoGNiuehe3T4xm1pW6dzzgzCNATDDynY4BZmBzNDxLgFiSgjANMssID2f+t3jdVpP
	 L5a49qlPnhRhxtYbUIeptwRoAr9Kr93VEa2GMHP9ukFqZdP/yr4IeSOjkuih/iQnQd
	 55AzzIWKQiLX4F6tEq/nfeeYAL5ByvwJtMdjEHY5yS56Ldj37rJs4m/mM7sCy6RBkN
	 BP+VOs4UOM1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EDC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781979357.21156.13242754166936049610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c57ec9455e6d81b8965a0243d432c95cd292a98e62c1856f4c53152c02f0707
Date: Wed, 21 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747819793
