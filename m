Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7A64C9D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752805794; cv=none; b=TrVmwk/TXrOC2+XyJZCedHFLHjtikYUusaDk2r7tnOJXWksAYqKI8WiGpXZGdDFlTLNhPwwHaYYCgCrqv8UpAJL+uk7uc4BeY4kj4EJsyiNfHbvRM4+2OD5bp6BGSUORHBjjccGqJna7Jsn4h/2GKYfrvixOBogZuXcznqLdHiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752805794; c=relaxed/simple;
	bh=79l69SrCW1L5Al2BjWI49jGG3ACE42zPDzX/4NRtTfI=;
	h=To:Subject:From:Message-Id:Date; b=dJ1rkH4kkHX1ltJp0/wBb0B0C8Gyagu3nYWTSHjb1PZzpcrMF3DSM954aNcjtWrrvK/0j0xsI1MOr70+CCS8Impw1jSoyV6W34DnB4h7G5hZRuM0N1GWETNFb5GVSFVUCVN6Sp1nHS8CAqw30iBHtZwb64UviEmoy3Gtd/I1/hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQKt9mJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQKt9mJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6951C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752805793;
	bh=79l69SrCW1L5Al2BjWI49jGG3ACE42zPDzX/4NRtTfI=;
	h=To:Subject:From:Date:From;
	b=DQKt9mJTNWqDaKaZ34rVoySaYyyl567No6b+qkvp+QERV3bW/pil6BEqIg4p5c2mE
	 jk/FbBWXb2UGz5ELPQyTovYjCoiV49/brD1+czPBb+qA+B6GuiZ7P0XpMxIUt2ugE7
	 L4Bbc+tmgszj62gQ3vbGTizD4ISZbwn4HZjyn/9Syg1tKPh/JruTWiEUVP1UwJr+4Q
	 BtHAyqJEWw8NvGaVtEZpcsYtX8Aaz7u3MlrR4+X+bV/aotcx5h8LK5bvic02cQevCq
	 qKkAFRD7iowTiMPr0UIpeioEJLz79VFhnS6m/kAyWLR2WHtnMPPcYOrkQYY+pGU3Hy
	 sVFwj0gl/JGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6DC83F22
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280579358.28952.14515057855810246348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a448cc24b0fb561ffaa65a2880a4ff87482c35f063f999d42ee1371f72d5133
Date: Fri, 18 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752805793
