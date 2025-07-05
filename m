Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350C015B0EC
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751743794; cv=none; b=Az8yX6lgtmNksOxKagMk+PFiRbEsgbH6rRkz6/ACvznT4z9Wt8/vOZB1mXLRhrgWaA9vsQ/16CixXDcEdgchu9uiJJ8FNh/x04vHdTRmMV33RqGq3eIS4QWhza8curbQ24gzeEQ1AP39n61sN7ENt6FL/UvK/BodISHDcR6d28c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751743794; c=relaxed/simple;
	bh=UjaQbUoSg1Ib/c54VErLunLulElpwcCk179/nOv/YYs=;
	h=To:Subject:From:Message-Id:Date; b=W24Oj9v621GgkxpBkl5wVv5ifObqnws0DjP9X/oPhNU1c4AG9rX0LcS3VQ1N+Dn+SJMO7sMHxvaeyHKGQTuiz6aPs3iUIwlvaTEM2bmsaMqSA0V8U5Jpyk/isgl3wck6GaadLFiREJYJYwbA2XWyl/G7F3KZwCq1J26efrc/0iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNTT/kS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNTT/kS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751743793;
	bh=UjaQbUoSg1Ib/c54VErLunLulElpwcCk179/nOv/YYs=;
	h=To:Subject:From:Date:From;
	b=MNTT/kS+G259jiBIxf6oyam2Y2jzpWwxt9+mgOH2CdHGk6imQ4kLMGNZNHMB49cFr
	 speF9WPetvaqCVi/bFLTGBp+O5/VjIyK2YXwE59ZSaZjpALJ5a6r7pSOsCpSuRmqNE
	 ujOwrWoEhGso/uqejZ5O6xg4H1hZxFWJJzPdwGKrsQ1m1vAcCVpNVao80fOuqex/bO
	 ptYMv8LE4adbK8IYmsbMpKRkQmiqnvilWQ/RXeI9X1u0JrI659vanZxeRX0iTx4tMC
	 8al7z+VhivzJ+6YPZKKmCffVxwmZ0l0ad9Pzc3jj0mo660rrExTMFHkIzR9r5BFr4f
	 KAmBqKgRkcz7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D58C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174379357.23873.8207856679040573473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0544f4a25c94957b297a5ba3ab570845ca2c77353a9a3b67293db0ec50670226
Date: Sat, 05 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751743793
