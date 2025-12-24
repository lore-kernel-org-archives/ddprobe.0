Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3783271F6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766536434; cv=none; b=sl562sRt700W7o3u1SAIDvB4y3IiVO8mXzAesYoNC01I/AmUKezGVTMSfvQEv+Y1QA7CHxzfH2EciNV2S0r22UBUiZZFnpLJ2MPhuMI5bSsHzF3lqfvyZ6WAbagAoj4pGjf+EzQpIETrR57sDGMEs8oETugYzDlh1iVRYDy7MT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766536434; c=relaxed/simple;
	bh=PY4Pa7Ev7tyVpOdL/GNx93jYgYQX++LRS9Ykb6Jf7f8=;
	h=To:Subject:From:Message-Id:Date; b=KqEV0yw2XFvLMpM8V3662/bBVKQcYKOQS3vdfXU7TRDf0xGeCMjJgp22rl2zD4pxbwSmeSAlWUmqq0veuCVFMd17WSYYxdXXEwv0VrNzseqjN/ic4Io8TsuRRQLMZAtyhD1hxHg3g7gMhhedByF106M9N1DhcoaZhk3tqT3Uwx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRe2YJ1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRe2YJ1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59E2C116C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766536433;
	bh=PY4Pa7Ev7tyVpOdL/GNx93jYgYQX++LRS9Ykb6Jf7f8=;
	h=To:Subject:From:Date:From;
	b=JRe2YJ1npJLi3wH99JiBJ47P9GTLZRck6YurAa8zt9DqExCAVfKA5Is3zqjiWnCbf
	 WdGCX7GNoSw8OxnrFk7Zc7G88DBU1wKGRrLnxgaIW8FKDsllnfl/dpT1/YlzBP8WFE
	 06KIZklJL0DxAYi6Z5H+rCMAppIGsILGl5pRusc4ml9fmFohoP3WbMuCgH6AvrfyG3
	 qS4ENwJ2cKkgFjWhLpGZ8r9M1UsNs+nHsdzejT3Me50SYOu/HdGYi2yfA2TJ9MA6Fu
	 StI6CXCX8lKwa2kmufHQNaR80hoPGFLWQNcjsW4aHdh7CLAxwDBV60NFB2Z0+GT0mV
	 LYgmx6W07a1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9396EE6FE26
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653643358.32037.17080548964491679174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e0eb33d9f48d0509b6b49cf157b8559b757e587c062222d95c995c41efa6cb
Date: Wed, 24 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766536433
