Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489CB211A39
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744005594; cv=none; b=BcyLjFmd807yYyB6n62qFv7HdjBMpPGQP3q3Yuzx9Ee6YTLILwyD2BK8mnk6HyG4M4ueRloufoE/oeviJ5ooGAMXG/fmSgionbiQzVqHhkVhrstw516LoX9VLcR/zwylveJrFl3WRvBBnGjuyNbwDcUME1uk2ppsptsKqLgdhWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744005594; c=relaxed/simple;
	bh=qPcxIQmABKUGE9VNgQ9YBdICfgwLVWmiw8uRCV7Pi8Q=;
	h=To:Subject:From:Message-Id:Date; b=rHxyJK6Ut/iobfAUMQiLBLQFCy3VA8X5LOigH0TXxLXi+d5en/5yJNVgc6Lh+KBX1uKfNFTpmCDO/hmXnBHvdcf7RIcQ4sMkVjtHZKlbhuNKI5AlQ/fnMveiEFZMinpRobl8hTlh0TNsFeDHbphhVHef8WzvUORtXJWZzGPiJ8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bg0IJ6m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bg0IJ6m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A71C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744005593;
	bh=qPcxIQmABKUGE9VNgQ9YBdICfgwLVWmiw8uRCV7Pi8Q=;
	h=To:Subject:From:Date:From;
	b=Bg0IJ6m9W3g49/GM/ETHSZHvaOfM9k2v96OYXJ+WOmd/PaTP1PCddwlNxBcacugvI
	 D2DV4r0U5SGV2RcwNTaA7KUfV9hbtQ/hAzHZkpFnyvSL2hLqeYzu6Q585vTw4oEeID
	 o/DFIn1t4LNDmcAMpox1RyBAsA+ZobptWUhCFshI8hjzDJAUV7hoQ2LSpObSIueo6/
	 hhL3JbC2mp7pftp14LiQIqQhJW2EOsBwAnBhSgKzFchzNrLoJJv5mcerBzaYt0XaAl
	 dPxqAl/PkV5PabUDFv0e6KoaPbb8vnDbR1scp/8d8Qv0xWj8b19il93/w6tN4VE2RM
	 qYpft6ldaEPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E941C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400559363.8507.43187803930683844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd7c9d09d63618ff3c04d0c02219fa8f8bbe85696362f5737b0e1a5ce6fe3f0
Date: Mon, 07 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744005593
