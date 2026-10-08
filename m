Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F4C3A6B9D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791426634; cv=none; b=D25bXtd+9ej56/47Wvt5rs8h/IUqIuUOVWMGpz18W/jxWj/BxH/M+GIbvjWwcDCSC0B4hx5gSMuMhprosJ6mWws181PO/rxd++mndGwBjVGDmOdu+1qpozqxEeiCsxoNuphyOIVnhQXlWqoLRoVGzk/i9m1Vb2/pn4waHlOB14c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791426634; c=relaxed/simple;
	bh=K40KXpet+s4WerN1D7eoBwq0IEkxg4WsevIgRBi0ysM=;
	h=To:Subject:From:Message-Id:Date; b=B8RhV8OrVpojFW73ijEXPRPfnZBR/RXHt9YgRfYGYiS/Pdpcl1o/0bz27pfInLgZoLfZr5NbsODE1ueau2wak4U+i1PKe/miT++HO4EesdjtkLpODAa9YQFiJq11bw3etYG3tyGywXPkUTZLNFUrLCzksG4fKwEJ6yDG71/SWVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQ0gMShR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQ0gMShR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF62FC2BCFB
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791426633;
	bh=K40KXpet+s4WerN1D7eoBwq0IEkxg4WsevIgRBi0ysM=;
	h=To:Subject:From:Date:From;
	b=pQ0gMShRAryLweZZwl7vFDN8xwGMTvFCVRhs6dZiRgIWUusnEnEMdXQ8iiRNjIOu/
	 XEucf8sGl57IYK8uVV7iTcRI60L3lmweDplV6ILLPGkoewrFUl5Xrr1FzJwxfLc0VG
	 76/c5G9uV3FBtJfXiJhVL1V92q0PPeovZmSt6CwbhkNFG5k224T3hg6mBW0sNKzSWf
	 oDLcmVecDX2ZX72bba2lrXfKYZrD1xpXzHz4J2DDxZtj5Rl2v0z6z9mLtAcVWZWrCW
	 U+7WF6SwsCueRVm/8Opl829HTwPOh45DbxHlfMJlF1BAXQBdj6RlQA9d76yUMb6a5G
	 zKJ8WpbhaI0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C36CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142663368.24798.16785984341354146341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bb763e5a1195c1906d66e3e8dfb2af1f1c3792fc7c63f6b8704473b4b3637f
Date: Thu, 08 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791426633
