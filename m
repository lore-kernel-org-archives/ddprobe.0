Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063153526E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705807697; cv=none; b=dtMf7eD1XclG3S1WcT4js810WIEYrox88h1TtNYGIOhcnhcwaqb7LzGZUjkNOi/a1yhrzGLupq0PFgOfd49293SaDSS927rbXdGtYzABNJEWnVuzJD9oeN/Wfhghczlh18Ap5ZzcMy7TU+YrEEveG/BymX7whpwd6LJeK7JU9XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705807697; c=relaxed/simple;
	bh=xXh9CQfWDclsmQMH4qVNbeG5izr9kvNu4L/yYXoKQJI=;
	h=To:Subject:From:Message-Id:Date; b=Lru6zy9VMBNgEGWgl3fft+dn27dlpJAUKnZED72qtfmu2jK9AEVLFVDkNmNHtSJMVGDEz9CoMs/TjlIWBm72hUXiVbN8N0dXJmCVM49TmL69JIRRMyXXNDg02yhDNY2D20/K5bDC09aTGLvPHkCumIfumJTMKZnx5UoVe9vKUiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM/DCMjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM/DCMjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CE5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705807696;
	bh=xXh9CQfWDclsmQMH4qVNbeG5izr9kvNu4L/yYXoKQJI=;
	h=To:Subject:From:Date:From;
	b=uM/DCMjfBrXCvYJ34Z3Ps8XMZrX5Cchr8GLAi6hFzO5q+uEr9wtE53WCwV3+PyEH+
	 n0OlH9o6u58pNZEuU2lUwWjLOcx2E+k1lRYmZojtYkQqrF1TBpzQoxFkaCu4HPybjB
	 CB39PMtr1v1o+LyZZQVcE/qH94aubs0ZZFIGko198gZ+UJ1JgTN8BtuWTz9a5u9vZL
	 j5WEEZbIdmMW7AWEdHbwRX5E17behQBYnMIoQxyh5t3pHydPfcfbnx9k0wUoyzfFq1
	 0sp82JY5Pk1qFxm2YyD7g1uj02RKcyCDqMz8zdZ4X5Wi3Ihp+ee7fVZCUiGWmMuBLz
	 vRCX84fYHD+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E399C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170580769636.22147.18116183994886962310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d71ba4d3754f6620afd1aef6dc13434a0913eb37a7341afa8ef33c9ba55747f
Date: Sun, 21 Jan 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705807696
