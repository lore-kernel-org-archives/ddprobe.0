Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A022FC0E
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733709354; cv=none; b=rnuWuah5mKcGb9o0Znq90ppLzV2pIFpNcKmlbTDkgKXsk36iaD6RcpEHO7uFyipvwkx1GDZlcZeKBDMhFKsGXszTdD7IOEq3YGIG1lH/u8fYmlLkolk9waASchpsw7e0ll0CettWmSOaipd9n1mpvSocTuSimN/mt3MOdYO1lm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733709354; c=relaxed/simple;
	bh=6bRMOL6LZJ9FR4fpOu/cdvFJ1ICUinspz1oZOfDNSBc=;
	h=To:Subject:From:Message-Id:Date; b=O3ZGUKDF4t6SEk3sv3p1L2f0LYK2oEYU2Ubo0NDGDIVN9kZpLmYS4MkPXB0wV0iH66y4aL5iofjLUN/szzPh5IgsgvECSrSBJq8D4xZCroK04yBLyWIOnE+FtR9UlZ3pKyqNFdxwcgodlDYudaE2aiaE+csoqiARr6A/a/Odh4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkK+2yz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkK+2yz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9307C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733709353;
	bh=6bRMOL6LZJ9FR4fpOu/cdvFJ1ICUinspz1oZOfDNSBc=;
	h=To:Subject:From:Date:From;
	b=QkK+2yz4cX1bu9Ds4wCGcHM3l6wLhofboqU2csO8LPV4elLvuwz5k1OPaUSf33R1a
	 SOLwaCuaczpQ6nC7DQbNKiDbj3NSv4GeIT5VDJCfBHvVL2C3gtH27tZPJvWWe9LH59
	 jR167mbd//4/UxrrHIBx3JDBQ0ZtxbdLbpgQkV5/TI9wphMHQVV5IyZVqo4KTQFJIL
	 7fJBvvcl9qROtkPEKXOLGeGm05ipBXkx1VjGyEJmH+nHGOd92Z3oWJAX4zRdCwxoDT
	 kGQUMfSS19l/8HFISUDtE2Zo+bkgJ1ax1F9EssbGpxifqzcf4GcCtvFlMrsFBDv2Yr
	 NZJSYBbCKyA4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A346BE77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173370935359.12298.15116385022575550233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7eb0fbb0f5ef93ec340b65d563174aa50a91ac67c2f11980bd775c894ceea0
Date: Mon, 09 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733709353
