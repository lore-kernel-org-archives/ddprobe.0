Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31778362154
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790421034; cv=none; b=T2h3PKCsGHQk1Cgn2pJXIqHENMNWOx6t02YAHe3A6hmr2a2Ru1iAd8yDXRqwtAilCRsCGihkis5FBRYYpnIxlDeaogr4X2ix8UwsvwPU9szQcEEzgPCKEU8K58bjQSem4sFgXum/Pza9IP3n0bke9gx2yEjAOfBEtXW4Jxu35yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790421034; c=relaxed/simple;
	bh=bziXHsGqpeVKv9FP7XYSaf5WHkShO3yzmwYJGeZ0d/E=;
	h=To:Subject:From:Message-Id:Date; b=DU2yalsISla+Ej34N2I2gXhjgtJ8yE4YQBTDQKFXVs/M7IlOK8qa8T1D2Vvk4YmdlKud8GrUIszJDirAwoR3ozK+mVcHVDNMHaQDPMJHSvlnmEN7wFulI7Shd4BOSVjlQPnOhSnS+cMQFUy37IKY4LhRv5d4VsxFDVTlEV2jES0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXaH+9ff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXaH+9ff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD780C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790421033;
	bh=bziXHsGqpeVKv9FP7XYSaf5WHkShO3yzmwYJGeZ0d/E=;
	h=To:Subject:From:Date:From;
	b=AXaH+9ffok8Z1c3rM89uQytQH7nfG+a1lJfed8n3hb6ub0DGOHugbHlPZmZLiCZ4V
	 5XRz+0MNZRKdmrK7jME3wlLO4eb3WCUkmB3PVNhEbEn9qXsJOeBG4UpjPVBpjKWMCo
	 sPh2qiuxiJmBMEnnjzz5I3HrHvlb047Wn7j7yeo9oyPF1WTz87MOlQ4HX1CYZjQ0Bc
	 SJDt09DSWYMLBL9wEuiJsD6JUlrGrGGUqkjYefzOvlJPaI1NEXUvk6JvvHynvI3t3S
	 EcdadQfyPnfHFmi5DV9i2dHjKGPf4/MFHoBbMOWIVz/k06tly1JrduuzGB/PW8/2Yp
	 8oypJXDwBxUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D77C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042103368.11228.7594875636563551481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1cbff9b8abf11b854700cf27bb37d5bc87199ae7ab3924589ae53f1c1d3a56
Date: Sat, 26 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790421033
