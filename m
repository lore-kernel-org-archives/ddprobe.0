Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6222B34402B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770828294; cv=none; b=XFjWHynAhgnSj61d5w2UcisVqT3QnSEg4evHAXsr7I7RBTA0QxCbbpcYuO3PkFSghnZ5YDPGSIk/H4GzKY3zsvEcGqXSlcc+i8FZ0gNCwMEAt2m1+vfvwnEtFkfEkLPhMh3qkKLCvEyssYSPqJ3o9yJ774u38RcYfl97PENBP3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770828294; c=relaxed/simple;
	bh=LFCz+PA5O++qbwPsnRCgJkAkMhz4l25h611Sun/96SE=;
	h=To:Subject:From:Message-Id:Date; b=rLkTBh6VHEG5VqKCUvbHH9jqcWQbpR0UG3HpksWVS5kqzdamdW5qKfhfwiPsorfl65dy64QG3lpMzaQWzrqMS5whjr0wVx/E7DGAZK5N9mvpab28VAw4x2sefOjvb+jLOjaZVsRwH3+mEuzapF1LsimwtINd8YEqoWiAw6fiVqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQPANpSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQPANpSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BE48C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770828294;
	bh=LFCz+PA5O++qbwPsnRCgJkAkMhz4l25h611Sun/96SE=;
	h=To:Subject:From:Date:From;
	b=SQPANpSbB5SN/Z3YxtFd6CQS4MB7ByyEHw9v98e4utXQPOENPP9Rdk/wcSOBQGO9F
	 ezRtqjCkhBTnLbVgolB42pNNj1cyunvqWpEEdETLc/xou6EuHOPkomIPsuPlX5G4YX
	 Dg3MEdEQ172ST5AFk5azY8/mxhUB6Jvli2Y6sg1l6pd4zt08k4I9lCWRVE3fDmD0G0
	 +yvkACO/6YRRtTdBakJwyLUvsVeA0TIw1s14p/d5caeK8jrOukM+G0fufCzSdLrIRQ
	 j82s9SZJjqNeBJZNSXTCjcSwbk+/EI5+cOjKSfBtUqjrtiCPF+Dy8Zn3LancsEbfQ8
	 kVbH8bJlVWQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1681ECD6C1
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082829394.19403.17412349898387158031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a3c8981bca011e5d98a3fe3821f747532b0f967d50cef2e279260cd3809ca4
Date: Wed, 11 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770828293
