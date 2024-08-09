Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFEC16A36E
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723244755; cv=none; b=qNRKvLnkwR1R1Yi0PAgGHjR7YB5BAoKY15z2atLQcwZhdSTKhlXFCXHujx/OLh/GVD9zZAS9aiRCDEvaYhVf6uXFNo3AaWHj2yAMUbKui1qVNkRnfo+JyVzg2+HpCTblrMqVmsBWJwJLfYImaH+c981ygQHYQBp246VUUxwiL+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723244755; c=relaxed/simple;
	bh=THK1EDR0QEzgrBa0kddXCw6gWLassGHNHMBzabfWtRE=;
	h=To:Subject:From:Message-Id:Date; b=BNSTOOIkRHZ1qvUd1N8SBd+83i5hocqC6flDK45q54OwJ/H9Bk1EOuH+N/KXqpVyX1d/noqGRi6W6mWG/R8XKwebhqn/9O2V8lxCJTnNnzW0zoBGedEc8PaKXftbZ7gs4v6lDYdWaOprtGqomGf3JbV/JvMFV/8+5GK6Qukz96s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiW4aBg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiW4aBg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B4EC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723244754;
	bh=THK1EDR0QEzgrBa0kddXCw6gWLassGHNHMBzabfWtRE=;
	h=To:Subject:From:Date:From;
	b=KiW4aBg1CsZ5XGZthmyd4xAlVerGi/25J0frkPhPIwxsZUzNSMM6TB/t3Vi92klxU
	 40jvb02k90QOThTZVmRMyqCETt8XqG2WBsiMBnAHkfjqT5SCLEC9jgVknmvAKcb9qo
	 Hn53wr4iIsQU3bL5sHaXRGIdkhp8CP1Y4pL3zMqdDOh/H+U7ncdjZyaKEaP1Pbx+eu
	 7jXKpIfgh6hA4A3dVZavdsy4/61mn17swmhCtSOi055RLa8tKnwMvVHZPtQOf1wr+D
	 lN6MtVBDAn4OXImxdjXWuOyfYoxLHx+cNkafWS+pUmB3JZuWsNzSYweXzHEejT/r4T
	 Oe60Nv2OemmQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F8AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172324475359.2637.1344767307472691354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3590f26865f35df3d4fda91e1671381f029d64c90fbbfa0fe72f22c8917e48c0
Date: Fri, 09 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723244753
