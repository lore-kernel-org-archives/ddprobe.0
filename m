Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EBE74407
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715773943; cv=none; b=ByocsXDZ0EwI/UKA7jjECNe2JJvyEdX93+kLiOuMjnVI+alSwRHsGAiVuKThQifijzavRMHO0Rwe2TAOnVvrtBCDNov+oCw0WriOduj99mXMfYdyR6VPbaUybYvtCriPCdO4Mus+jaGi5XU3wDJXVnH8hpuZxFzBKjBVYi1NSII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715773943; c=relaxed/simple;
	bh=LSgMEXoSLYnSq5k8SHb5+tQiziwIhSTFKvTnlYBDLLI=;
	h=To:Subject:From:Message-Id:Date; b=akqPqvOzImG7/nbHiljQiqLD95Yj5Zc5f/DwGxDRzytHKkP5ijwb0i/nkLKk49LrjLMM03gTKKPLoisAoLmTz+Z1AgTKaYwYucYZvBa1VAmnUzUKjzl27BDGcux7/BtA/tthzSBC5cGDRn8ljDYwxDPe5cDaCIWo1biY1wu9mc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX3k0R3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX3k0R3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12FAC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715773942;
	bh=LSgMEXoSLYnSq5k8SHb5+tQiziwIhSTFKvTnlYBDLLI=;
	h=To:Subject:From:Date:From;
	b=VX3k0R3rCS6jdSdctlIUz4p05RP18Bajutp4LkBSlxX1d9lm+rSHMUGad89u3tK62
	 Q300a4e+76q0PLh9JArOJXi6vEdV1JV8Gfi3h0/FY3g2xuIwLsJS1knJ3sfei8aiU8
	 VHZquH12rvh4AAwhbhdmD0Yo8Vezis8jWYaQU37FRXtOzzBdOwAnTDlPHSXM0b6Mzg
	 7ar17T2eEc8enT28Mk1qzxMUero7XfP6IjCIB8OCh+U9UtFzLVSjViqhcqlWocmvCi
	 qIeVumy4ULITGeNPS4WkMIJ63JJ5wOOCryRd3tC/EmwQV/DfSpNeL1kpl/qg2hg18z
	 Nn8dAyqPBXnnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2A5C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171577394277.5360.8281967734017171301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1394a2fbd5ff07655865ca129353e1629dc446fae2b3b869f5c4df64af771ad
Date: Wed, 15 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715773942
