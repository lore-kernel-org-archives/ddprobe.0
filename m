Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247B32F8EB7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778400634; cv=none; b=GFeZLPl1OihtOAsmcE+sA7sAzPYbjxPJ4r+SqfCPm73nyXis/SI273fIfFsa/AVV0ZgmOOyK/kkzg+MMsECxWQrmLQHsshheRSiviuurvcm1/3QT9zbUjV3PW0qGlf50Gp+niEYu8td9PnZN0QQLK70+OQJ9hSzE7AWrQNGGn4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778400634; c=relaxed/simple;
	bh=VI3IpF5lN7pxMFSBERzi9tkT7JFsldlUwbFENxhI4j0=;
	h=To:Subject:From:Message-Id:Date; b=Lh6P7AqX2WRjw1hsO31uubvlO3NqsHIAgrS7J3+iZMksEEBbXfg5hIRvi5MsAbovbttisGkxi7qPAEbwjaAyTTLJwfCGbCbiGwJ1YTrScFi7POVfL2GRR95eE6ejfldzZwmMdvq1WWUVSfyKdRYcsAR9Vga2ytlIbEB1DAsd4MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e78QvpFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e78QvpFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08F0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778400633;
	bh=VI3IpF5lN7pxMFSBERzi9tkT7JFsldlUwbFENxhI4j0=;
	h=To:Subject:From:Date:From;
	b=e78QvpFSy3qc2ERmi7yZzyS0L/UTuyTfIh8G4KCzLu/Djn5xANFfgr9Uh+bwbGCWZ
	 XBAbHurUeAm6Ejx2WyJiRZ8phPNq6aRl1RWSMAXu3XuBB4Ze/dAJKM4tzyTT42xWfn
	 qAxN6l25uWq0ko1+z0SVobAsyCWCcGZ25qIzeRGxEdWNe/bvFWuEf+RGWiz2ONr+CU
	 aSSnt0y08TJewKyLGIEj/S+eubso21vL15+ICVInBcnZFLumWc0s8Evvglcgf0jcRk
	 K64y12Msa3FZpgydn1Jfs47U6YcSh87EXEMwR8bWMG25hgbbCP9e4CEfdrRKNNwRMF
	 RmUzSA2uKe38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B006ECD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840063368.7153.13348685152031212014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f0d08e207bdc9c864e727f0e463505755261acd90e5e057f0bc7d040ea0135
Date: Sun, 10 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778400633
