Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646513126BC
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757589594; cv=none; b=q9ykx6G7+JM3gTWBfCh9Hz/h+ol1ouWYdZl4JNyy0jN3fS+6bkzvIgOwlgGbqqGq78Xhj+TW6rTc638mjj8iJNBxY8vWL7aLmE52NTd03TLShVw5aAAHFaWwRYQkNO8dAMscweUVOUXmHeC2yHGLRytDtQXb0Ut71IfciID8UN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757589594; c=relaxed/simple;
	bh=bfdxQd5BZKwP9Uo0+5HaETio0C1ntkSn0B1TfxD3B/o=;
	h=To:Subject:From:Message-Id:Date; b=IFAmAkcKOfAtG2O/ZUH/lTjZdxiq3FvlTV9hDl5Omzd7oRfMVzTXSDWbv7AjgZ6xT/F3f5jcdHFt+DOeHVMeQxUvGjcPBNKmsbMOlIhP+QDnpv5XvrbzT1rx7rS94NIae2yIZxaVMDo6TjYAArpUkbGK2gSQ2WljmpxDGz5/f3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PauGTRB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PauGTRB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B570C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757589593;
	bh=bfdxQd5BZKwP9Uo0+5HaETio0C1ntkSn0B1TfxD3B/o=;
	h=To:Subject:From:Date:From;
	b=PauGTRB+PDEDZTi/0Tr/U38r0L1Oj9vrEXYQayRQLYezzKtnbPDsR43B/7Jy+dkbE
	 g3cY5lpU347m2Jbdi81NLuCKcD0KUgCaah5JBSsdhMM/G2Y2z5Ir+qolmUiFAoAVk2
	 4/dhC1wVSWzN0LMTZZfLdpuINUKFhRuOGhVRQbCcoWzOveCAdms1jf99w5PDfrGyPk
	 PIgULZnFUoX9LQHHO37SODoMLrSfbzv8TVv+hgsyRnzddSCRrOP9RZ9bpPVMfAK2h8
	 ZALRptpsSPTv8phkb0mjYABoBzb+fOe/kgy/AYGAJPiWR74LV83d5HxVUHUsnSCZlw
	 559pVp4FwMPTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F790CAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758959357.24970.9005825779586429274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b70d01daab9d1b667691b4052563b95ea36f1ebdb5d8ed36d0654ff710dbf5f
Date: Thu, 11 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757589593
