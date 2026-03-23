Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F803A8752
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774269294; cv=none; b=eilxUnItsGMRVKA3XPxE3SzQFYLvqxYLerSYRKye0rrCgXS7jNmTeQxZjP20xawK1HWXhGCunSYHZumk8GEwOgT6304VVVxpi+dhtQC8kYlvXObU6bCgB4oYPh1zsOEOsUkxM/wnN4ymQT9ev1irX2Bl0XRQkEhiReHC+vDqFwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774269294; c=relaxed/simple;
	bh=JpEeAdvYZmQR8WtNy5pL2Rqi6QU751E5v5o70pTT8/U=;
	h=To:Subject:From:Message-Id:Date; b=WWbWQMy+c+hPsG59w3ojz4lz7LnZfubSc6fvlj+E4y8LsdX+sMMbdu3/Nx9uA4CX2VuYRe5pJ8iD6+a6vDOFiMrvnqpYHS7Ym8rAVEL/YNHotghDwlS2MHqOF+OL8bZMT2uX/AYQR0XhSRq18tDIohQZr2S0lNMSCLVJ29vXSy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKw/f551; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKw/f551"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774269293;
	bh=JpEeAdvYZmQR8WtNy5pL2Rqi6QU751E5v5o70pTT8/U=;
	h=To:Subject:From:Date:From;
	b=OKw/f551y0mOSd0K9oyWRIw3Z7TD62Kxos8vSq0Q+SaCX5iwqe98LTk94O7eQrtzW
	 5sRNA+3JlRS33Upw941oakDAI+8iJkpFyRiMQtOEZI9Kdq0BeXm7w2ijXT2gAV09jq
	 Y3n+xcIemEzYIWuc5TPe4aLlBDlkCFBXIkuXB5V36Sn2d1NawJbjeDR5Xn6uJUn2z6
	 q2RNy7/GZTYU39rjNOvsDpqNbGEkIIIoMQdJFoZ7+bGeWssG+GCACC5tYAMGk6S1dU
	 ciP0Uzm1N22fAXkGaQ8QyX9j7gUarMfzJZNZCbfuaOp3OX/yM0ROWquAaWCBIBWpdF
	 vMZKSVmfbk8YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91524FC72C5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426929358.21220.725464260058291380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2427a30f3f8a2c5815c7c440e222d3e74b4d582e4ea388ed44b6a5bffd155a
Date: Mon, 23 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774269293
