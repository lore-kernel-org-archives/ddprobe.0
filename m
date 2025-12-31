Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06D186352
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767144233; cv=none; b=Vp36T2tUY6TOc3ELopf9kwGvefTRfTuaNifiilXoH4U/0yFUSDz2RnBCs6CTJDT+VvDppeADRX9d4K7lS7lnbhqYi6lQbw5xkZmcSAzIKtk26Nqt81mih8YElDKj0j0vo9cg33the22MGPFDaB5UhZPJkRef9MsAgqT6ghpdlTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767144233; c=relaxed/simple;
	bh=gFwlK/f6apTxLJR3yr88TyTONluEVquSvVXF978Ltbs=;
	h=To:Subject:From:Message-Id:Date; b=XKtP/4qCkOZocG+GI1ctpOkOppKxGcVoZVZ6z4ITeeqJQE7IJ98E7/fpA5h9EM5XbZFvit8haVeidtYS1Cc9d508FS8AAPHFSKTLh45EPmgVW4MwhHLaRavXryuqMdVp6LYcrzGiCOmVfVo6fapmybjHOtZE0AX1eMgqs3DOYRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw3d45RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw3d45RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1E6C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767144233;
	bh=gFwlK/f6apTxLJR3yr88TyTONluEVquSvVXF978Ltbs=;
	h=To:Subject:From:Date:From;
	b=aw3d45RDSaUAegQQgKKBmkItZdD85uS5IkOB2ZZQWqemVFdeGKZPb9boddd0uXMvZ
	 CM55rUjt50eYniMWGYv0pp/I2HdB9cpsKRTESByCTKW12TgZWwVWqrpc0pbWciGTFl
	 7pA7GvesFy39YdjZtGiN8wjqGcaOG+T5mJbK0RMDpyVwcZKdlNtu6Vt/2jPiyVo7ZC
	 OgAEc/RhYljoOZuI7OrpDrHRsDNWs0zXVIFu3XRm5xE/icLsEiqv0l6GhRB1nS/uLf
	 X5eED7o24gQV5iAMs1ijnnUmYb0UwD+gFhrE80PVaG9sdIGPlTQFGPv7AMLyX+h54S
	 U4zYO4Q/1scng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F915EE57CE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714423357.2790.1937444415760928782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151e6ab14b66f0cd0202bb59d1a0137c979611ca4a9c4a01b721712b26008386
Date: Wed, 31 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767144233
