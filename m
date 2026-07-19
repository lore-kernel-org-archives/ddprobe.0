Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CE01F936
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784441914; cv=none; b=AODKxS3rEYHAvbv+UiJRmXAssSfhr699zwbq8z3PhGDDRZ/wgRoLrXw7fI2NQagRuwzFNotExKNnGOeoGdQMXMqXqVoR1f8rwmVFzjDv7w6kGYG+q65b/TWyJoVKku9S92JPgtBJ9fJ5mNLPb5/UxcKGRGRYplZelFTiHLnN4ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784441914; c=relaxed/simple;
	bh=Kj1XUD8CvEpGmDqf4VCHF01R+DecY6uJ9dG7q5OqVvA=;
	h=To:Subject:From:Message-Id:Date; b=O71he2pzQVAmAPW1/sL3nSzCzc/x/MW/NjGGbOJYFxdLan/MEmlPdfo+j2QS+iH8eaqo9CG2/U6/geLJtnb1J4X0V+ZUmnXfcn8nQIqll/GPKP0X5FCoSGYZRiA8OynUXpta1MqDsqZ+plYZFCmkmajjDYFax5DuXyd+gZTWwrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFK7PxcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFK7PxcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39A5C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784441913;
	bh=Kj1XUD8CvEpGmDqf4VCHF01R+DecY6uJ9dG7q5OqVvA=;
	h=To:Subject:From:Date:From;
	b=SFK7PxcBxMPz87ogNhdotriqHo16b1N7X+GVJcrWG4G1FuQY3wJLh6a8RdgNWQjxr
	 fDPitKk7uYZV0vsS5HIRCAxfl22ZLOOoKw9jAFAdjtL2iTDvtzdTKFS+AqCdTw5nww
	 w3n0/tKtIs8LebIoPPOshickGOMGYwqSO2hNqIB5pK2HaCx7zs84rOjs146vZORii8
	 TnpQoSguBvuMp+FjZVb6ynW9MRu35m0RgYy05AbvAWgsShQQgYFAO4S4O1j49mBHMb
	 zryJ62pTBMimfiaMLyxJ4Xm2+Is7GZ9/FYx0liQHBERWd1wLZzcYma0FdPvP2YXoIf
	 sw+6NNl5aqAUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA999C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444191367.28135.13727663987757216434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c1b9437ac65ce48fea2fa68eec143d6cbc38e7843ae7cee4f46d56bd8f772f
Date: Sun, 19 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784441913
