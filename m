Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5988D8003D
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790382034; cv=none; b=mPkf29VwrTUPUZRS4vvhMIyT0fe+932U4DJ18OwBLHIb2sQTXMi/WZ1zEwl+ZLv9MTTKk1c1J52d5gP6PK9vvWL8wPKiTE2LbEUMf1chPcQHKtexJl4cXiCS0pevGrb0bDzOmBxC3sMmRZq+MdbwTno4QSqsU28vOtsQteEQu9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790382034; c=relaxed/simple;
	bh=JBsLWfwg+v2MHLQfeZnfu6bFbyv8JSz/u4KD5ZCxvu4=;
	h=To:Subject:From:Message-Id:Date; b=BaZ5idlbDROt0bpoDgAwRTwihu3QSMnK+zn4MeWZPQG5JAL42oczcWT60zVVyvB+SaQxc3loOCK5LVuynGBS5XVp5aX7Evyt7UqnRbYyTJnq9+gLuktbr5aLYu5iHzfSggiK7dpvhZ1z334HQvDHHgGU3NR9Du2ggWjQ9EEOToM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkcuQHSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkcuQHSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD72FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790382033;
	bh=JBsLWfwg+v2MHLQfeZnfu6bFbyv8JSz/u4KD5ZCxvu4=;
	h=To:Subject:From:Date:From;
	b=hkcuQHSMMDFxeKHNP777Zd3WoV8d8crrFKIxPqjyeH3BhO8j76tOeRw/TrKkNUq2R
	 fTSX2ZxYZOMQB1aiARpqpT0Zf5QBFbvTImQfyzWW7fBwOg7Gqytp0Ie8jg812OLg6m
	 yJ8lF8yYSESCcoOgPVXg3LdEx6vbQuCCyNCFawtq4/ivVpOAn0yjihgga9pRIsUX+M
	 oBwbenlsic61EDQhFqIvIu+zJbu1SrqjXRjvj0aLsb8dT6X+IuJ5p/1g6CknaJJCF6
	 q7NjYSaHYwmzn7oha4UniTkFxLefs0saAzwGX/fmH1lDu3nYYJ0OH3qo0cs5gXQ0Y7
	 0xRbQchfIGbsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1097C98326
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038203370.5893.14204704405921684750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d794c27a2605342712ad7a47f93cc697b24d0f451de4bad4b50d4b8ad13386
Date: Sat, 26 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790382033
