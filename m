Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FF8391E5F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782545314; cv=none; b=iOGelnUjzvZbAJ9i6j+jqgIBjZg2F6OibX9goDrLQcbnUZ5aemf9/AYWEYOGmONbD1LoYl9GXOFl8iYyuMx3GTCley1Sgr/pb+QYCqOmdQzF5tgw3S4XEH4OZbzaljTR6LeC6v4G23AvhE/tC7iAJw5wjhjUeyotCAtOX4WjTCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782545314; c=relaxed/simple;
	bh=T3eB60vjP323ybu+DshaIqOINRt4FHC0TNczV96vrHg=;
	h=To:Subject:From:Message-Id:Date; b=F5518QkqA1CuoyLq58Rhxx0EE0kM4IEBupcgWEy80bMM4NMXqKB30yAI1cDnp034l2t7oaLcdU+u3i6d917XIe/zTH+pph8UL2wOSYaUjHcVoPdmZIV0aHxjrSHpPDlPqQ3sIMIbTuDvHyD4YFP4xtRy8LB3qpBl0mH2PzWKAZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa26FIzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa26FIzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FD3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782545313;
	bh=T3eB60vjP323ybu+DshaIqOINRt4FHC0TNczV96vrHg=;
	h=To:Subject:From:Date:From;
	b=Qa26FIznJAC+zMfuMIbMNOfNhmnYjpcmHBoXFxoR8aq+GSawitK4uEpsqEXj5zHox
	 nPDi37yrmhfJSr8dIKcU9F6ixrBv3s19Vi3aw4BcLsBDtWxV3DAyGAn2kZbGckNg34
	 1t53lFfmmjHZxGEoIcM52IAFSEqj2HVMAkKwAkQoOpzXji6x5aXUtE3Zg4tmkRqd0I
	 d3zGAcwbtxzao++YOXAFfAWjelw9IpL1P4SnrHXP3fSW9lSDS/LuLs0WcxTNpjaVvU
	 JK/HVmVyhnwaLSNJJxumrCIrOa3xkpqXWTIpQ7/8HKO1ysgOhvOGKhXtQbIIUhkJwp
	 kxW2YYYdfwNog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F0C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254531368.26682.15266049852515266685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af267455758b8c239183896d48a3f46fbd838a568df82f2110e89b92722f8a65
Date: Sat, 27 Jun 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782545313
