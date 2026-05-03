Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EE8182D0
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777786054; cv=none; b=j4NWG83E80zfV4WYUAdzoPVZfd+2gtcyFQsvGCYUOF/x4Yj1jQ2RXtY1I3v/2gIL1gmkqvvY15auenv5nzh6srSGtj+89sqguqYkLbC5mW8k0+FtTVsTiPn0Ow/OA6sqe85xu9QpdQ7FKOp58dFdaxKmPMpkKzd2MwKhbwZbmq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777786054; c=relaxed/simple;
	bh=S7lLQVBw0vUANr1NYz3WL3TXEZdzHd3+dUfH7PnTD0Y=;
	h=To:Subject:From:Message-Id:Date; b=EFbfpeItHU2hXUB68rwxKVqMndsyG781xqoXESh2DPtKo5RQDbZipUsg9s3W6g7r3uELPbdYQvJHbtbVxvnSrsa/NNGKDDpX3zhLs5MxaWTqV32eka+iriIg4k4207zOhRebTx02jUEABFclelbMMeNsF80qWRc5e3H8jhbU9kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0/cMVzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0/cMVzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C074DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777786053;
	bh=S7lLQVBw0vUANr1NYz3WL3TXEZdzHd3+dUfH7PnTD0Y=;
	h=To:Subject:From:Date:From;
	b=f0/cMVzHU7SMOi4lfvoF4qMnV+6DWOaxOIcXVj+sKy0ld7BEodd56LKsubhTwNEie
	 xVzWJfFbfT58EQUSE6FZpz/7NRLJs/nlCqSQhFNg8m8gksilfrABkpyqzin/h4phNJ
	 txlYwhC9mDB4EiNYZbIkzbCVYdLHqkbdQ3RLGFbo4/qZRbAQu+zFv6ZuwYntp214+R
	 jqVxQf1zslnNuBQoZv1ZmhoDEji4zVXYEmjVRgqRQI8PLX66mSrmwf0edchbUtzAOB
	 NLokTAAiCmP0T2vqrybvfMz1Sd7Art41Y9OpnniaU2JLRKasQz9X5djG4mNRU/IyVQ
	 IMqJi2RtWatlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9C0FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778605368.22283.4209668475821933355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abde5e75f7b5f76044fa3bc1a8c85d4bfd3607d2f5901a195977c24bb2964743
Date: Sun, 03 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777786053
