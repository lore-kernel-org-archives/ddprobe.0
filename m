Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5292EAD10
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770549234; cv=none; b=l88Tww3QZMxvH8OFlVTcNTT45VJWTRqT3M/NEHYSZadXRrXpvVCDsmQLY0TLsSjy1Pdu/1vpKxknCpM6pHbNDw3Jb4iyMSelJGw4ub1q7noXTdqqTuLUSYlFMQQdBZUQbSN3XY2A3WPLpqCuu9VP2eVb35cPNj0D8N7T6YEu7q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770549234; c=relaxed/simple;
	bh=LnIkmssw9pYzgHmGQ3wUyK8vKAdo9NbIJ8sQdjilnO4=;
	h=To:Subject:From:Message-Id:Date; b=XK7K16hL2l0ZD06I1cq2YQaxR+yroFJ8jKZD7ZoL0G27JTHYkVvJgQSXtXcMX89Xw1F5Z91+NzhzFXuHrInv92m78YBIU8BpZIuKWz1CguypJq35DA1bTeW9XEQmSmRtYPKfS1C3l9lwgRnm7kf3IvqNwv5UsWjVxyHtKmlhhco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOpQHh2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOpQHh2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5985C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770549233;
	bh=LnIkmssw9pYzgHmGQ3wUyK8vKAdo9NbIJ8sQdjilnO4=;
	h=To:Subject:From:Date:From;
	b=DOpQHh2EdI4AiGTpIAqnuvE5jzk+ipWNQC2QXbilXMbZUA1z2aad0r9E8t2p6x6rr
	 wrG4qd3GWD3eg3IMj9UzOx6QawmZhT2rsM/X8wLBG8eY3pcLj47tyJk/xe6a7u4rWF
	 I4R2UZOdS05qfzbx6gyW3fmaxfbnKoDpnKqyzQRwWqQmNfhOxmKQsKzuB4CAbkVsLJ
	 Nb4fBHhi4+LruLJxpZLeCzcbQjuOxDhul/H8Bs8a50lPiPtpjuiwMs/6NhCTXqf5Kg
	 tuWJCUeEW2jbP5qrRF1Z987OCz4gntAmZIyOM501S78bEG7LGYBqtRfWu2wiN7OK9/
	 2Rn+r0PGrAgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F12EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054923358.3521.17141945853330751214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73013a1a5d2a3a0d60f1ebc40ba8a33c5cb3fe404e03f2e28fa55e721d057554
Date: Sun, 08 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770549233
