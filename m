Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B85F3EBF3A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769238234; cv=none; b=TE3BAosp2jjDwZbPtJWO658XvS2iN6Jwuhd8THlPK/gG+5uXOjIrYOV1WnPxc4S3yRvfd6UEb5FeOYaBr2gnqWEo5NqTdqrW5AUubtBQSOGZ6WQr6jwe4ycWXC28mLAXMeCyBdiQz0uipMTAugMuNk5ba4+Iy41sJKNWiQPNbXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769238234; c=relaxed/simple;
	bh=jYLxxvypAe3yf3rWrE3RuduUNIPfoxf+lffVeczWqQ0=;
	h=To:Subject:From:Message-Id:Date; b=VtMid2cJaH0MCNAvFRGPD/ez+h1iGl0DKcStvYQcnMssFgXcRGN3F9/8dpT4TOjywdQzYFlfmnq3rQjayoqow05NTxExihl6rXfH1ZyvtwnQi5eTacSgh8RBa4a2Laf/ya9KMkP3Tpg4pj8LzbKXEfw+P7sI6VildjfTNxFNDLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYXG/YpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYXG/YpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A745DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769238233;
	bh=jYLxxvypAe3yf3rWrE3RuduUNIPfoxf+lffVeczWqQ0=;
	h=To:Subject:From:Date:From;
	b=WYXG/YpREFTCCEtrInvK4spfmsGUm9vcvGyJ7qoRnkRB3AMKcFK1diawpY834VjFQ
	 VnFjzjvcP57uxviJ5rCIW1MTfnIuz/ANWEdjet5dTxBmT3AWAa/LqKrn9O245jMo99
	 CmiRjvYS3QXJ0x8QZub3Cs83mIoFs1E9S/JSf/k4Bl5Qpr/MX5oKn+ZroKnNjTtWx7
	 3YMmjK5sBe8FyK47hqMk3DEQBne4b65xWv71ZqjueIOSdd+ZonxZxWWvkKcLTKeNol
	 rX4lNLMrBkNUNPWdh49EIgHe+eFCeLF1jlVAwTIt8npYkG2c9i5jFiFsuVTnJ6wrXp
	 Ao4GQDArkD8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92535D715D1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923823357.23916.683242894126396661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9e5eb3ba7e2a3ca42550e3f6c389084faedcd182c0ddd1b78d5ddd74123a83
Date: Sat, 24 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769238233
