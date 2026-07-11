Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395643CDBD3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783790914; cv=none; b=M7zKH1yrmmOfaqUvO6TKIVgCXLrtC5LmAQnV6hAMpHmvpzoyrBI8wGTz9Ewq3P+5KEBf1UrUnyC8a+Y6kCtwKccOS3g8j0TJW+qTYaVEPvMO4bUj73azaQIpljlh1sDnRx2xKiI5p5n1Vy9/JwzFRLorbN/x9vWayq+1j05RAaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783790914; c=relaxed/simple;
	bh=tilpVTdOf9UnDo8JB3ydAxUwae2YGLGXhyBGD3Y/3eY=;
	h=To:Subject:From:Message-Id:Date; b=cly98qqNh7H+vuRWRlD5Z0Zv8MiP2J97GchniaT8Mrz17rlAjd2QLwSwdPu8B/lkuM1ivxLsI0iGy3jMqlsvi3oj5gMVwZFq90NCBtUMerACleBduFDGt/o8V2390PJfoKcckjvEUgvT7LgR8okU/zxqrsJ6wos9GpOK1XqgcME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAZB2M3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAZB2M3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEA1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783790913;
	bh=tilpVTdOf9UnDo8JB3ydAxUwae2YGLGXhyBGD3Y/3eY=;
	h=To:Subject:From:Date:From;
	b=eAZB2M3BfpM4Kir4W0lgZccsRJOesTjsQklHzqNuGcQci53mFpqEIl+AZD2+OMI4K
	 nohGCn68JQ+GM0Qg0VPriDnXpKK8hDPSxRdC1uMON6d8QwGO/MUunTbldv/RfUhWOb
	 gVg1oYD9K4gxYgbYoUUed7rPrIzuxVq1iy+36hjZXy1qHUa2iGOSvuE3cEmLe4wspv
	 qdihO/x/cR/sinPuusAOwh/5R1hymzSXxo8SAT3O5VrsvtR8FGpOdKZTF5yAjwDetj
	 hourMqe0YHq9jiBL+dFXweL+i3iFgFiLxnwH+ImWD++hlb4NhjbIZw+MoF8cM4DSXt
	 qOGpZDSgImr8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD344C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379091368.29016.3368905050784817402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ee8229f18a5a7cf73eb243cc40190e1b00af92afe3cf2daffd0955d2273c9a
Date: Sat, 11 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783790913
