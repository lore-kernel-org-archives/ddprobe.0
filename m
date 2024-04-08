Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F255C2F50
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712615897; cv=none; b=DUhuqyPWGn4rk46WYl4PvNP57gPGU4zbroPVk2Iq71VgFKYjMJR717DNcUWUcBvkUxgWzOB9HkWXe3nEXwQsDOHLB0GfeA8FoRlAvI7oZQI30v48dAqSP2zD0V5iMi2JbBs6MnBSoadYyJa4og/ROq1wmEP1o+tboDxSt86zcSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712615897; c=relaxed/simple;
	bh=LVSEmOqHM2+lYGjXdLK5vE1IKUCovr5PARJADHbnYXY=;
	h=To:Subject:From:Message-Id:Date; b=iex6mkqCKdAj3myuAeh+8G/QelicexsRCKsZ7Qz8nA2jdlj11wqujsXeWLAUKnIEN0QDoSTKS5BGPXsorlvaVnpcW3YBVtGpJNSCCxFqZMyvmzYtE5IBtk+OAs5j1QNLl/0gauotqkdonbLHCMSIVGi/JuldKklg1Tj5x0JXnt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSBICRSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSBICRSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF22C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712615896;
	bh=LVSEmOqHM2+lYGjXdLK5vE1IKUCovr5PARJADHbnYXY=;
	h=To:Subject:From:Date:From;
	b=kSBICRSoEBts66g0HbcBprRUfMKkgiJ4iYrmGTwtUviOkT/AWr3YtKgJZXfvUEeAq
	 17IfxW++AlgSRBQmlvNT4sdxf3NvqiUUfpTNBRWWAumyUN7HGcldnvUNGNj2F3wi3r
	 PgEBrEg9PB6z7MUUzYIRF+Xeoge9vBVJOgdruvFle1mFhnE6kXuOS+qG6vpRn8XN3q
	 JGljNSdedT3JP17uFiFqUzIR4uu25/Hv8AtOHRma8/M1ZJOtx/nSPFQRkLDpJ81+3D
	 PW0kXTz1OJyzZaHeS6KJWq0vCdjpMAgdW8XY0Z3GrM/g1zfghdMFTyRinx8WBTVUed
	 3VvxIfwP9ghbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648B2C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171261589640.28485.4732404878417846813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15295ec021d751c87daa438768a8f359cb79cd7e499c3401265e27f82e48036
Date: Mon, 08 Apr 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712615896
