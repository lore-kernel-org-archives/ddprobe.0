Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1423A2E0A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783641514; cv=none; b=HpByPcqKoHHrRH7xvrDzBMzRNqnsUMCZLCFjp/ZOkoo2tShlVlboPbvcZY/x453HttXSxEUKuyUZJxyh/W4bJEDiJcyM9iszH6IC9P4KKtI32klMwThMh6nTk6eCveLpKQWNhmz5bQMXmqtJxVxivE9o4quwKh/fxrh41/0aodM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783641514; c=relaxed/simple;
	bh=JrENhFXuJvtzK2RmD1r3kgr2fWqiaMarMGoftYyrDaQ=;
	h=To:Subject:From:Message-Id:Date; b=f5IX/8n/8b/8fQQ6KMWHq20NBdbbzz08PCtqmtI2E8l6Wa/+ogK5rJVL0kJSJyHgTQaglpMIFsSXjgEY0hId5Jh+ifQJJaU8YDLviV4HHFNXShsS3Ma6CVBfgwr4cO9NB4WMwvmR3/0zfi8kZ0DN37OHpCADLiTzK7J8wwEQmGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klsg9NTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klsg9NTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9531C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783641513;
	bh=JrENhFXuJvtzK2RmD1r3kgr2fWqiaMarMGoftYyrDaQ=;
	h=To:Subject:From:Date:From;
	b=klsg9NTmgduOz4w2gcWgGyzuqYskIrxUZRwz9rwD3vZ/N1RcoYq3Z/M2fO7Gv0j9m
	 QZNGSHwLOy32SwSfl4hSIlQIiqkVv9ybjeakGOLySfnyYHHAe995V5NoJIujgr2Jx/
	 wHOJsJ63+rabcH1jlDS0hajVMxSqWV7p1RJkI9qDcbrjSPHReLoIEP1CiGVd0M/UdA
	 h//JBBUP4yaEttLsrZ+YBtafg9uENirquE+zuT3DoAbSvXdHaV5FPOho4xUmE4Xngv
	 C2ZVTPRfmpB9AgZwVQ5bX4kDTfP0mlupu5mKYILpSMTNOHTkgTMBp+OxNGfvG4ctOB
	 xnV6REdn+StOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8851C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364151368.11691.965942505370278716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9985adb4a00c5643eac3218a3d16ecb7638dff51a0284a92621e507fa319972f
Date: Thu, 09 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783641513
