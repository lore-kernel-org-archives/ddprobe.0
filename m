Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF33C0601
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792320034; cv=none; b=IRPX6xxcQiawj81OIWxAKdDA8XQdjyJ9fpFJoMSdCgXQDnSqGmK94rBC+cHKwJynZ25oB8g4jYUSsvnhdlSNpMoPlOCRpvEJ5ToIYES8FB3sKDIdOU5NEaY5zShKcrxFJp9syG9uirObQeDY+7+DNkN5+ejMMGn/9o8G0HXXT2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792320034; c=relaxed/simple;
	bh=ON7iY79jiZNJogqWREXW4WzTzmn1qgSVgMIqu4zGLhM=;
	h=To:Subject:From:Message-Id:Date; b=A5yl4yLYVFAauq7MDIFt5ueAHXWMwxQ+uzxBJvjs/sW8xzruXfciWnp0YcGCdG62kutqRLsmjQOhdUSQ6b+87ceFSEmYqHWK0XMs+iCZsrLuz81mC4ypmQWQGsGoCtkPNtQlgpqd24HcU3hPTlyfagcv6xFsjtdWFmtEtK1c0Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euRkNGqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euRkNGqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD21C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792320033;
	bh=ON7iY79jiZNJogqWREXW4WzTzmn1qgSVgMIqu4zGLhM=;
	h=To:Subject:From:Date:From;
	b=euRkNGqaB1az79jX/VIXsNx87zjsXOE0TvXvzgFFpIbseQfC9uU+/VuuaSQYLG440
	 5AC5+RMhy+04Ef42iqX4dlxKnJR/4Jc6H7KCTuKpgUKcGFUB/Q473B8OFWS/cbmcQQ
	 +WZhVeHLUhKUoHqmgqBjGRI8Vsz1A2iKc3gjhaOrKSrCHaFvPqu3C4iFfp4vHmDtYG
	 m5dIe37AJF/9LUJmXyxdDjZvPwvQyfxkM61Mh2ksXq5N1M+5DCTsqpOfv432X5qmkn
	 WsQ/O89cIoLSNo5MZ78PIejPL1VPu72LfoEpwNwf7dvJ2/dkLFtYX8LzlpbRhJY4O9
	 O9m8z3oilWn+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC9FCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232003369.24721.16445851807666859810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016583daa163a64ad84ad0bdae18b1a2a86b79b30d67a1b2b423fc995904c105
Date: Sun, 18 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792320033
