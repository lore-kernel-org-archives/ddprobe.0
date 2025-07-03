Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECF92F2C7D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751570994; cv=none; b=gd+h0Tmr9+Bty8k9VdKbNW+1nplGce6wcZfGONYWPEkGEMbyOwpu9G2zFxS2W5w1EFg+4JD4Vc63N4+LCsGbQ7Pz4bHiH6P/Ifu+KOomEkz5KcVXlHoz5SW9OnZtfqYL3FUUdwPDhit013ZYWA0rz6VnHdk2+hE+Rfi8yj1n5LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751570994; c=relaxed/simple;
	bh=Ino7L2zhidx4UYKE93DVdF9/Ss7gdCFoP/rAGM4Raf4=;
	h=To:Subject:From:Message-Id:Date; b=DH2WElFG+mhKNIQBkP9MD45YnxAcnnpCEWNO8ijl3CeQLgkMN8NRmOybsiZry9r9iAbdFotTmpiTLEaMloitpYbx8sJ/pA3Cp6PsVdyF0MsKCVbA8crwcMmVjvm83V2CVJitGuSq/rmUmE8JF1ghacIJ3FL9uGAj9KFeRe67tfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK5Q+prG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK5Q+prG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1048C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751570993;
	bh=Ino7L2zhidx4UYKE93DVdF9/Ss7gdCFoP/rAGM4Raf4=;
	h=To:Subject:From:Date:From;
	b=jK5Q+prGLcLF9wZBDaYBee+aPihnu9O8A8uw997LEfGw4oLzl8DBR3z+p73z2U1Kl
	 ILr5Gcocj0Gjw26nJxyPYiGLPnegZ8pix23IbMNVdlEr0MoOcKJoW9NxKxskjr6/AE
	 8jxEsko6yRPpEN9haAz5g5u3HRq2hPKbsaHPyqGKNJRBX27zJAT5S38vqKtMuvH9rW
	 Nj5XPf65rpo0363p0Gx4XUAmTwQUG47F3l0Si4YVw7ya6fJXGkaAuxGE+EaY6NfAwG
	 ovjBrdZ6AErECuS0PX7wmhHHKCkPaCmhC69IbhrkEAL18nuF/P33WY0P4lAMbrj7Nz
	 ih8srRNoEtTbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F780C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157099357.18502.3256357148372984660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0917dcc270736f6b9648f308d3f8f2eb6d1260b0a676ab5da79c834e7f83b18
Date: Thu, 03 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751570993
