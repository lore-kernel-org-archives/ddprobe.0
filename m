Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503EC17BA2
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718440703; cv=none; b=FnUCf8N2Co+ULsrDmYu8oB/mouTIRgAMB0Immbtds3uQ6Pd3yzl2vlk2kRRx/x1NOz51X3y9rWsmSZXDeaOaAsSI3BGjxGQ/QXperSCLyOoeXMXAwCnH9Kzuw1KobSznCkB4Ezavle8hvDVH4OHF4Jt8gsEG0TCoZTxFtDr8K4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718440703; c=relaxed/simple;
	bh=JIChipmTqir1LWJ2TVCGEJEYmouDEn1Af5frJW1owz4=;
	h=To:Subject:From:Message-Id:Date; b=DHs+YhhT+FcbjzE0PogNO95OjXkyVUNAYJLrbIVE1R/Lvahov+KNXmTTioPP1xJUlBzNNSvcLiEy9b2xQrWWa1M6Jt3N43vJh59jERxRjg2vbTrnbwZhuSZgfswMfVx8BPrA6WR7CHapfqpEXM2/zoacegUXHB47JscyFjTi0/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyMGMwWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyMGMwWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D13C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718440702;
	bh=JIChipmTqir1LWJ2TVCGEJEYmouDEn1Af5frJW1owz4=;
	h=To:Subject:From:Date:From;
	b=hyMGMwWDfqWRgH4TKEPnQSBQ4gisIMXFzV7y55ml4dFQydR2NJsqNHhLYwwxK6j6U
	 MQbJrgp68fQY9NhfTSEQfbMIFBzx/m3Cvvae+xBTcvJDRU1TBjzWEL0JWk+PSSJiQG
	 8i9stz+PyV/rE7jNhZXIBcs4UB+8tKk1UlPcYkrSfA0iMu0EyLBPvEfF2zvkPS9dUQ
	 +MHwK/nvkK8dlfCDJ/cvCJve3/xQs0L0PL+OtxZtsiW8BD9WIap+lxVGGVjb1KP4DV
	 1ZpmDJMUTDJm4GwVMaur17nAhbwJke/bUcK/kD2LHTwbBnFwvqKPuTkAxkDDMIkbKa
	 dN43iqvIqErmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03ABC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844070277.9238.7668637019685071563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d8b9729896e613638a328c5935f90c40346cf03c6d6a24758cabdacf75925f
Date: Sat, 15 Jun 2024 08:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718440702
