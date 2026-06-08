Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2F6388361
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780905874; cv=none; b=YaOP3tzRYLCcyQ00MWmT+tQ9PDp0+b++1+sjUQpihEeM0JrQh20Wjzn5i89mlPRX3eq92W7DZ5PyRpLrGPXDeSj6X5OgXJ8zIoGzhL1hAwWQUTLT2NZJP+Nd6BUR875HvkHMa5IXOcNP2oFQkBAZBcTrpjTO35yW75U0qO4kF3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780905874; c=relaxed/simple;
	bh=uwGtLxnwPiNga/cH1jkhAHsWD/wik/PG9ahkzUxzT+8=;
	h=To:Subject:From:Message-Id:Date; b=Y+oce6DjDG62zMuQ1r0Cj5fW5GYYzlBjQL4QkESsgrrEb7eT4h9QcsnLmsFJ3iX4rlPZY0bKG2AQDPGeala3oPthdrnJkLXRuJjoBEYt+jJ+l8zHIt48mcKMXCAhPVZqCW2yde3COQk5xaDf43cj4Gfj4eZWlGLkSK5FqQKbgUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsEDozQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsEDozQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9C2C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780905873;
	bh=uwGtLxnwPiNga/cH1jkhAHsWD/wik/PG9ahkzUxzT+8=;
	h=To:Subject:From:Date:From;
	b=CsEDozQ5ULO9aaeeSVWbi0mgGWXXqIRTCbOR0d8kcpLWhIj+Vvw5Ob5a+WPswr5WL
	 Q+bfotgf1QevgubmhDusjlVSCY6dsxsB/kdgRwohlrUtW6kfpQYCyLu13ttOhEjPJQ
	 XisvMbyEHZIowNeaFNss1vWxj/5BmxaXUOaPQiGAHiS2GxV+vbELwX7CNgg7Z+ZZfE
	 qLOIwbTzUHmFpCIOD+e/z9GgcsmMkVZAwCJtpZ8i/RBTXws0GQAU6iCoo6UujD71eO
	 zLzBdU+Vu6MUdeCyY19LwkkAJDF4lNqzmzmnnAcRUpPJnjSLu7BraUOpyQVzD9s9Jf
	 MpJ2ncx8wYxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6991CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090587373.10034.573520817242673894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb05dc4d1a3823ed890f658f5c688bad43cfb7fcaedce8efdf98c4eca2b4e46
Date: Mon, 08 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780905873
