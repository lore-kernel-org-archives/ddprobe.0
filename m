Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D694BD10E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790601634; cv=none; b=Z/UUxsxjsYl83o3Sy6kuZqRZYU9z1OpWPFFPLG9rVJ0Hu7OFbN8uInZ3P82WsTM2LcEgmts31GrXjhVYGTCiESuvhj7LdH7nydvxITbg5NNo8bYRvhtgvwsXuo+Gm1xU7ePgIH/qIvG+ZeqoYYj1UjYeyi0b0ruN8g4TneTwhjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790601634; c=relaxed/simple;
	bh=x+LCK8LAN1RUuCFI913XHgMyZM6/Vz6NIS/hWJLdmNs=;
	h=To:Subject:From:Message-Id:Date; b=fArjszQdV+42+doAipR2J4Req4blEiTWhfCLhFdloZth1d9iIt38wPGcCCepD6JcWzUMIqGYNagDSWc9UBtiuD1Gik1CJp6NK7nroLQTN9O2F80/Dm9FOYWAnzJ7Lrt/UcDwuwGcY9LH2y92XoCkRJbNFsB0VmRE2vSGDPZ0sFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHplh0uU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHplh0uU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC972C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790601633;
	bh=x+LCK8LAN1RUuCFI913XHgMyZM6/Vz6NIS/hWJLdmNs=;
	h=To:Subject:From:Date:From;
	b=aHplh0uUzzeIbg6mIkB7oBCQvHzwIOpa8mdjwnZFqkvV1lqt1soURTIVri7F5FZIF
	 SXVA47At536E6jQpZlgOPnfBfxFaf5HtYbk+sBR8ZVQrcKu7UXcICRd1G8qLM+ztPV
	 ZZNEDyFGMs97l3/fCRe48nv24itByD2qQmqHeuydwjl30PIR1xlSVkNuQ2G28cc+o+
	 IbGK4SHCLJs3s3/W0I+TiGAV7/OdFYfkikG524LFxHzFHiSgEz3+Lmd+WlY5dY3Vrb
	 OJYfludMvrduO+pcU6v5Nv4ML/zAwsq42F5s9mecIVk4ZudlJwxWV34GJTekRtS9Gl
	 ++/Pdng3+EALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA007CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060163368.2922.17947402812260723162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e006a75c3afa59a816461157c7026c754b55beadbd2e2af0dda66c250d1c2258
Date: Mon, 28 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790601633
