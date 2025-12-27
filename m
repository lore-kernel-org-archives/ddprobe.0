Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C61F4262
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766800434; cv=none; b=hRSqBvpdosd6njxTx0AjzAjjfqZLkCEwmV8a4J3HyV7jD6hNJvj8cdzrSDssnpGxU/vktoTyOrL5vBIxLmTdroLC8njIGw9V2+1imHQd95d37R66bjkH7A9hVwrDo0Ry7OZ0en7YZrQR/rFAtbYiEgrvCv28LEhuCYWaHkU/xUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766800434; c=relaxed/simple;
	bh=XVdXL1LHEcK0bh6dcLum9agNSrPE/7ir6cIzQ1ncPFU=;
	h=To:Subject:From:Message-Id:Date; b=TXw6zpPjkw4XURnduHhCyImP6CaI7s8zce/FK4+cXEBiApHpFx+fZtNpPRmGZ0UhJJhpL/Z1FnZx3myK5cJ5GD4YnWp7VvTP/4TAJQTdupIYLaIaacpk83Ib1tySzNqK4bqzRCNInALrtxHkOJI0/Vg46e1SQDmiXk4dinj6bjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akII2Yz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akII2Yz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63D7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766800433;
	bh=XVdXL1LHEcK0bh6dcLum9agNSrPE/7ir6cIzQ1ncPFU=;
	h=To:Subject:From:Date:From;
	b=akII2Yz/N6iQRsPcsgi34Zrap1Nm59HGxvDp3NxhExEkbSYdhRoSIFlaRCq6bgd+1
	 OC3dE4ezGCXfzc8a6x92FHvFbMVKw6q30HGNty16xwD7PqIwjcLv6cJqz1vSvoAWsx
	 qC6P1ZRSaHMoyET+/SmHp1vDtqyACm7yd/0Wy1odzo0NT5HzzSIi2pYDMNwdaKuxkh
	 IWolO70iWePzUs3VS4vVxiySkRUXu4uomnlLyy6ha/lAAu3Fnx9gz8NelOfOOI3BDG
	 wyiV5DRvvBCnsiaeNxWFWpptM5DL8xpnCMnkAtqhFsSFPjDy+EgH2BSEyEUZdpe952
	 wJ2ckdoX08TZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9686AE8FDB1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680043358.17305.4598509026991419252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b0890ee1c314c3093d8f4f946c70bc4b4b74c5f2093cdb3ea5e1053022ffad
Date: Sat, 27 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766800433
