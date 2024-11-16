Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5928217E44A
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731760554; cv=none; b=FJt/kITmjnTD2k8H5cWfCcmOFlkKY2w2PB7Jr9q2Nn2moptRVXetC73oKa2pgUoGNi2lwb6cc07c+lx0Q1h5H00PnV/OpW8O8MO7L05ACcxDDMKMQBccH5w2amrcfb2RcFyWGCdqm2zyxv9g4WxKHILVDXlA2YEBUZID65JlD/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731760554; c=relaxed/simple;
	bh=cLH49gI0V20Y0Axvnvc45t9N1c+tCoPwghjkO4sI6R0=;
	h=To:Subject:From:Message-Id:Date; b=CV03WWCh5+A0ors6u7ksqAdIlosdThQImj4aLY4IVoVpB9zfcxjdotf2P5hTagh+x270dbwCtFUqa6Sf4p6tHHhZ6v9GBRhkP1r0KlblgtulMlCjOYywPluUKUyWTIS+j+l6Yhd+QJjTq00ihJt49pftPsqEb8h7M7zqaoXeAlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYFqWBdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYFqWBdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82A6C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731760553;
	bh=cLH49gI0V20Y0Axvnvc45t9N1c+tCoPwghjkO4sI6R0=;
	h=To:Subject:From:Date:From;
	b=pYFqWBdLuNi2LUWRE40+x0AB4xj4+iEeTeSwbBoRZCBEyJ6TS3WsP0YeX8bBjA6ee
	 cRYbvqvCGjUxJINeDI89WUVO4sQb8ixiFYVxSEK36TYxB4cZ036Jh9cetOU53swUTh
	 RDPFoaSkOMWCTtZKWjG+noJtlIaRGjLo9S2o0iRNf2YUut8iqlPulqOzqOV9w012Zp
	 pYpYW0nPMaDzyX/ACDAoAp0po5wJo4/8NQyrBC/pB9iBBrY03hsu5hcPDH6R6Ta/bS
	 zcUNRAj2HKHmH5Wsm3HZZvE/+ZhI6Lag2mRUgXs+JXLapphYR/9/0oWFF9kDkCzR7D
	 a//6b2azyeb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7CBD68BDC
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173176055363.12426.5276543953832354142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e876294b7bcabcc4897f63081f52570be988aced79b9407ba580989848b88c6f
Date: Sat, 16 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731760553
