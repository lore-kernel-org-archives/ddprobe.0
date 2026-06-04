Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF7434251D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780587274; cv=none; b=HgdZxoSaSuTntqlRcXf0tfp8wXIMW4mvMLjm/DisEtBA8hmErfWc+kzlcdSCq5KZQaCpTXvHcPe3LvrDXRQ5v3sm2AxZJR109qhQiZuiLiMBXOmK4RMSHy9J2yOB+GfePycujJPyA/VHKcdb22lqFz1Hzvv7b/Q4u1BYt7mSe4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780587274; c=relaxed/simple;
	bh=nnp7esJGgib17iCyBfrRrk74qgChhTTE81hy4yGCe2g=;
	h=To:Subject:From:Message-Id:Date; b=UOfZZvnepBKpFp8y+KnFIQHLvKZgahvgrV1ZjiSChDgLEMtKMLce42hRaun4ILBQrFkKNmXGHolWrxjUVnYM1pWG8PBD7JTBxND6Tb/d+miO0KohYqGd2kRh0pjAduZGPPk5Zp9SXzm1zq9y90TV5Upv/VB41wCcKNFhysWjw/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5dbWjR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5dbWjR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C16C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780587273;
	bh=nnp7esJGgib17iCyBfrRrk74qgChhTTE81hy4yGCe2g=;
	h=To:Subject:From:Date:From;
	b=C5dbWjR9/3YUo75CjNCfLK3QeLCaKdBcgFrtMSSFBoJeyFFJrhmCgX0xm1u2yOpfw
	 V7QF54Aq5/cbgMJUIHw3H+FsZE6y+giOABBMgrOzEZXKhcD009Ygyvuknr0Whe5ApB
	 8bx17M1TARvT0YigkRyqqqRJA1xFXwTlrsr7HCtQzvPB+hOSCVSA7ewkpissVyfzk2
	 qHL+EReTQ8Ph7oOWFoAYU3RQ7GhKtXKnCPpurQiCZnC5y98RGm/umdLKNcgq5bqtBb
	 gPAOmuLzpxfk3ujULcM1q/SFdnMWinFtKlp5ApvTFhNt0Ny0DR6O/S5OqFeGfK0Dmj
	 zhOBOUZMjw7ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC087CD6E77
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058727369.5425.12656998808492618731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c195554e75dea01d2ddc0896c2f180d8772031fccd56ea1d75b575680740a757
Date: Thu, 04 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780587273
