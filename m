Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C64341D23D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786535434; cv=none; b=pLJjy9rQg8fhy752C6eW5drW9Q9qH0adqtKeoh7wUS52EYAtpT0nC7XPwXFxUzlb6PIS31EAy+bJLy2ub30qNRJLsK5RMweCHUPMZeqT6rwsj99GCTkb8ouJmIlrGcuepp52lBshSsP1JFEEYbYIUQpgqGCDJTStEc+ZZNLzUVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786535434; c=relaxed/simple;
	bh=HdSxdoLifwBhqUvrVuzwV4t8QxvzJN3JCQG0g/gHk5w=;
	h=To:Subject:From:Message-Id:Date; b=SjO6oWCyB5991ME0VXAFIo389ilkvYUb9pfOMp0SBGKlmQceRjNY+IMq/3Sv9LVew51kEAwPwB3sIDP+mc3ExLd14dPt6ALde8RDTn6Zdandx17zda/x8eErdlGdDXVATTJrbCh5myJE4EIOAV9Zkp+22kU4+ipeXeMr+k0okSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNNpP3BV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNNpP3BV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9632C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786535433;
	bh=HdSxdoLifwBhqUvrVuzwV4t8QxvzJN3JCQG0g/gHk5w=;
	h=To:Subject:From:Date:From;
	b=WNNpP3BVXmT9Nt+WJe6iNjzWLIg4nLtcmIjyvgJIjeDsuQZvN9StzVTB/WS+qA54f
	 0ppHqcB8Mp0upoayUH/xRnfgpAOLCcSpZGR984L7A/8I7apMMA39Ev7YcKjgdwXtTJ
	 LFyieCi9msYShhI4dbWoWayG3P3EG247SX+CG2OQKVJMnKMXRvx/gabtQMxpgT5Igk
	 LX//y3vg7HGZyjk+lC9UnkAYAQUXZ1VHYhoVa37hHVWgbwrcShbq1e/Gzb0BwQZMQK
	 dEbcS2NGYBSj7p1Tv1mmkaxQGSrYXX9OVsMsn0nMpcDTYTwzUR+XsJnQb/aXsIDufX
	 ydvwptOsDR43Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFCC5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653543368.4067.9890272729681827290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb6bfb99d34e0ac3680a2e60b28e0a1cd29610a7989d3e623857ae6052d62e0
Date: Wed, 12 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786535433
