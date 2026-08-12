Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4230E30DD30
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786527634; cv=none; b=gUyZoV4pa55WWW0r4qaD9Ei8YJAjqmgqG0AHXeGvtSogFdc3DvMIjmknrBwu69g84kxYsm71ez4+YM1JxH86rHW5dAUrmz9y+lDWUsFaeJsEN7ORfQ19BSQ7Z9FUx5o3S+kXOuwHOx32+JBxS2CLpeI8qmfDYeFk1aBm97p8vtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786527634; c=relaxed/simple;
	bh=q5C2+5hkx0FS1yGJeNMya4BzIrjub4kWCgcal1Y1zSM=;
	h=To:Subject:From:Message-Id:Date; b=MCEpJWoigI4KYA5tCkBXmeIISHljDPWJXHqzOmxHyuV1FUOIdyvy7FdxTmNS/SoY3ljKYMD7WxSdrSODlFFY5EFqOh5IAYmkbA2PatUqqmIijCcD6NPFM9ymEGSZHRo0/UEnuIMtw7XstjMpqKAFNTxsVsMte553In/SXmjTy8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcCEJ5St; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcCEJ5St"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6BFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527633;
	bh=q5C2+5hkx0FS1yGJeNMya4BzIrjub4kWCgcal1Y1zSM=;
	h=To:Subject:From:Date:From;
	b=gcCEJ5StFYI1qmRMPtDVi20UhATjgBr8n3mDy6Rs9AI5zXyt2E14GYAfxpobMtxWK
	 wAGTPDoKoLGoRBHDVo7hsj2QtCYW1cqIphFFhSUwvSVktJJq68p91dHkEmQcn0OJUh
	 R3fbyXWKJgQGnBTgTGKk4SR+r9jEMKpw60tucSMStg6OHyETPfwJRi34siqg24SW0H
	 xWcA7/yEiZI9U8OAew39a0wyBcWoB+reihcsr5zwq6BbSdg7ThCQ+wCDwmBqHwG5Zr
	 C4jwF952gwqcxE7Zwf07j/L7s4v69RQ3ZK6PrYBsjgEeJtAIcBm9ENCyM9CvSqpBac
	 wmkaMd3dIEp+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B10C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652763368.31001.11419762851634059703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd07a245d506b2f70cce191dfd17dda9482d50076a99b4cb80303353c05ab790
Date: Wed, 12 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786527633
