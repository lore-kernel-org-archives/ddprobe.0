Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FC224DD17
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767103434; cv=none; b=Qls5N5Yz0k7BDmpp2UKIQ5M4f+sVmSmFSMhnmn3DQGQ/foVH1gBByJ8k9nk7Ozmi82t1vjDzZqI51N+5BC0zWFCiWFtPra4i+W7FiR2D/hDQcSuA0n4W3hV1EPY6ATRv1UsyHQ0HLlGKERsEJZWYLhYQaOYgaEr9XFxG7xHXVLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767103434; c=relaxed/simple;
	bh=8Xd+tI8rec0PFScJse9ix4M6i28jw3Dex6Gf2GtjxsU=;
	h=To:Subject:From:Message-Id:Date; b=a+L7lfZCui4OjiE45KENZGuKF9T9h0mLOVE3T+JvZ6ynjWSd6dI5U51aTREPxgLiEXwTDggpYHjHVrdOBBPtBqoUpe1ZumjWGd1MsKUJSuB6YKoveTzynnqQce5bAeQWuGKT2K8u97doFiuH9oIdlD6la++wibEYb/7bAwFUWoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCJZTpMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCJZTpMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0044C19422
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767103433;
	bh=8Xd+tI8rec0PFScJse9ix4M6i28jw3Dex6Gf2GtjxsU=;
	h=To:Subject:From:Date:From;
	b=rCJZTpMQOe8M+uZMac+HJEN4qCoIVL2h4QxneLtwOXcL8X36sHVe185oUNqFqwv0w
	 /rE+Slroa2B7QJK1d8iARZw8rothQp9zEH2rT7lWGmRHQAJjja3+J8T/3QB3UCMnxt
	 paf1gGHB2czsvll3kTNVvTdTDM2ce7zqMQO7BE3I2tAMhPK/qjo9Xmk+9UmP++M6jS
	 KVetQSY92es7aB0SJaU5yK/QysjUsIyMa29yRxr3/RDBPK4UeR88SehjyaTclltnR0
	 8iK/H+fSPrrE1VyCpSICZ/USY91CscJR8vqlxdyuW2l/5a6HxM8tDJMAVnnwgav7gS
	 UXwIX0t+PHLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BCE95A95
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710343358.712.13785303344557203973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28097b4c2e3195dfe1098d2b16082b3bca600635f2d24786ddf0b255d781964
Date: Tue, 30 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767103433
