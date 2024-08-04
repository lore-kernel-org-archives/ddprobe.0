Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DF7AD59
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722812154; cv=none; b=XEFcnnYKTXsKQWpWQaailsgwibhfDh1jH4QfQDNeLsjcsycynPUWGpty16rWziS4IO+i1nkz6o0CKw2gEYp5fX3envCEfvU5asSY+xsXoPH1XtXyfyFfgPH2cnR7YNTf0w0nUcZa8AzglyHC/cZ7CjO50BDYuJbWuVwGNJ9K4cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722812154; c=relaxed/simple;
	bh=imwguAq79NDT09vi/389wipq6DtF3WbUDHmq2Pqd8E4=;
	h=To:Subject:From:Message-Id:Date; b=if2y7GFJ0rs4Lbhezj6/RDcHuGSNBOQuyITXEW1o2M435/6bVVppLyaQrv0bxoile0cHk37/165bohljqSuu6KseBWl8Qve79fTgJ1Tude3L98403e7RkV23TlKoQatseFitpbq2zYxatI4qCpG0aY29GtOnW7+kj8icvifYys0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjTi4ZQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjTi4ZQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B34C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722812153;
	bh=imwguAq79NDT09vi/389wipq6DtF3WbUDHmq2Pqd8E4=;
	h=To:Subject:From:Date:From;
	b=kjTi4ZQ6UoWfjqzt36bQV8A6fmkGlIVfTP6HHJ5glcsLAIfvergMSAlQNYMJlfIsE
	 lygV3Kmucx5Aweq2CxbtoyXZGnwiBz3SYu6SwXgZR9CslpGcr+mRvQw7+Y6/D0ohZ3
	 FbPk90j+RQbUuz+tWgpBVG1A7t9IRuhf/UYsAISuzOOe5UW1SynlWZPm8a6ScAJM0t
	 msWFcmhh97FpoMEDi8mekBnJqSkKD6BffWEjsHxS/kL4HpIow6tN0TlMCMgQAaqhh5
	 O+RInJa50EuGQvV9NVkcAAKDWRAj849JHKcAn/R4QdZ4jhXWQ17Hz8aoJvmWo158GL
	 hTLplNhacc3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92404C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281215357.9108.5570046095686250564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1be54d328c3b741fba5ec36ca868c51ebf0f66b422802c7781d074d481672f
Date: Sun, 04 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722812153
