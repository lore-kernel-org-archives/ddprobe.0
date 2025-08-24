Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D86548EE
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756014594; cv=none; b=gOLtrxY9A9E6f5apAhud1Q08mw8af5EY50so/cBwrZOrH6XTWsdqqF5/nwCrCyqdEApbKh6iwJPGR3wD5MNvYNw5ySAecb5MfxBsywfCatRBYPHeyQMMpHmZgeVDXfa9yIZJ9o1cc1y8VWCrcUQfFhAsJa5+fDV32c8jB+sqZ+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756014594; c=relaxed/simple;
	bh=28JEN7nf2qYEnC7zYyHWsQ3jKkfJp0pCZmfkVQjIrnE=;
	h=To:Subject:From:Message-Id:Date; b=TIqOhgw1Opde5iat9llYQeIw7kTa1GaAQogt+P5PsK94M6/jkcV+RYPfI/X9wlKYPf+TMgvoF+HDJmvI2ubv//cqLeYUv95ScovdYxCRLweCxiBqz5A3tvRKeUSEZNmYCdov1/hfY8vfyymBsXdeLmaLB3BPgqdSW1+oZ7EDX9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgTLGhzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgTLGhzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B24C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756014593;
	bh=28JEN7nf2qYEnC7zYyHWsQ3jKkfJp0pCZmfkVQjIrnE=;
	h=To:Subject:From:Date:From;
	b=jgTLGhzWCoLsdUn9Hx19F5e6QB0XMchZqrdJBd/GlSft3pqgh0AlqHrRSmzRmOiXI
	 EBKZtoUCx5AvWQ6QaNYrvX7EtCW2GAvHuWSuovC4DxFrK4CHO8+YsMaOnSA++rt3SC
	 1sDLWCl1sJUlDdkWgldAKgL8/dbhlH4x6P4jZD9FSZ1vpxx5WQpaSNMYr/iADWExRL
	 CSWmzkwMvdtmnvvRZ37SxvH8LV3/EMYAYgVsM+SSxLKO3zFvuG0di59tbK2WOyd+6z
	 BJY+hrb7GVLCNeBXRPDNv9lE0DKfPdkFTgsrETclyJeLdUTUHMzOIVEPujWfZhZUDh
	 xoYfJUJRe9FFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92938CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601459357.9845.7547457510980678901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a346264876fadd2e31def901befb94cb626668c4c6dd4faf746d7638e9c5ce6e
Date: Sun, 24 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756014593
