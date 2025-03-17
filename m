Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E011201278
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742246994; cv=none; b=hXDir9VekctSdQmyF7j6sa1Rvha2qfI52nMi7bdjzTRbVChF3ejM620kCnamyZotwausUrQHcjRX20viQv92yLwIF5mQi22NvYnJsIWiGYpV579nvNsfELD37Fat7adp9UBvSS/OkHFF3POO+hyVWtW/VR2q73dzPqeDMIbaWWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742246994; c=relaxed/simple;
	bh=vFhmZVWOOAQMwbfCaZDS5aKsel5Xv5VQ3ZHZLo2cZTw=;
	h=To:Subject:From:Message-Id:Date; b=npenTGfK5l83csd6UYiX3TmGi7CXPI9VFjlKJWdJf9UcHi6sy5LeULlU5bedakqOoEj6QqDlvBSrsnGECjHT7BF38mWPhjVw6DDWqR7gxHLaHXdTWW7CDC1xPkzUOYpTxCouOtsnON7IpmqMVUmqjDbes4Ura5MYFq8teX2Ly7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3R6dc1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3R6dc1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D21C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742246993;
	bh=vFhmZVWOOAQMwbfCaZDS5aKsel5Xv5VQ3ZHZLo2cZTw=;
	h=To:Subject:From:Date:From;
	b=n3R6dc1DD/fBL6O42iMaEJaseV0hEyLH3OZRbFFsTncles9Ipnm7sbX8WoLcSY9xg
	 ttHpXx9T+SEens7NQjxKLpUA1BAdF6fC9GFc0hZrNhOHWHL/cVTD0BYLYdIS4p273r
	 5OgyUwgKVnRX0Z+SZLwgHerjRTkSQajcI5UQgwcJlBbWOwPUwNAF385t1izCChVdav
	 3ohKHz7tVk3D4FAIq5mVhOC5QaqbIMVM38AyR5d9byxBVcotSOg3FJqdRh7rdDXoud
	 pvx6lVqzFaFoomDldrUyUN7Q5lm+Evzt3QTIaXtNrnXboXyQ81vnmQgvKo+ME43cVr
	 KS5YB/44hRDcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD48C28B28
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224699369.8259.14469121812177738821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d10217be7984989d6879c649413cc9967004019f3b2c301b75d209f631cf8cc
Date: Mon, 17 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742246993
