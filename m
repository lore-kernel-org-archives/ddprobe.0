Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066773BB44
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770509634; cv=none; b=lC8hWQaDN/0RISrKsYKkgxlg4Zx2nICXdC6wLCmhz82mtfSFUVRUoPSqoyK8vMgRaWMpb1cur7tqhcaHBixiGZIhIxD+MlN+w8rWTqBhDUdrI105br2JZ/viSpKqQ1IF6dqBuNTQUxTkPS/SpedmwG7cuU9VejqWhb+qhoDBz6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770509634; c=relaxed/simple;
	bh=hLN7ZTrAmTSd9CnuTBINc/0vdTEE7xxerQaILdLMZh4=;
	h=To:Subject:From:Message-Id:Date; b=CiUnneePiR1e3VvwUhgzwC75fBtyWQcRvFLwEfORplWchnsuRQzFhXPYWPp6Jd1yMNORRpmFH9BghPyAdwK1hLdF6xKZHhwwiZ+PdiDMrR+ZHZAlSH4eZyqMVGITwCfaZwRvycc3GiQmUSg9CODshZFL8EwqmXfzI1iC4z2iHZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVANwimi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVANwimi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4F0C19421
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770509633;
	bh=hLN7ZTrAmTSd9CnuTBINc/0vdTEE7xxerQaILdLMZh4=;
	h=To:Subject:From:Date:From;
	b=mVANwimido6xUO35Y/s1Y/rOV3gIwvfCqBEJwTABhoxXY16jz9X5e5P0YVr3VMfQS
	 1m/i0DoGJNEf65Tem/RGHqZXyHkSrroxhqWeZe08Tuo8i2f4gqlTQKU1dwnaqbDRIX
	 hqQv1TDwA+YY765H2Pfb93of5w9ZDEeio8duTvMbQna+409/jRnd9CYMXPDIXCm6Bc
	 OGk/QsZIuZRwZGq3qQj4ctO8tOzUphPIkv/5pAFHOmlixd76H/GkH+4J9za88t5RHl
	 TF//+xxt0TBOEDaR0YhtMWYLR6t9SSFXo2ryoVu7Clb76hErFkGhCMqqqzYxhjtCdw
	 gqHtfYGUfQFbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975EFEE0AF8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050963360.1961.17265321592532293632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f718f7fcfc00e676cd3ccec5502a7748fdd4582c8d3d3407bf8a9de2ea460ae1
Date: Sun, 08 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770509633
