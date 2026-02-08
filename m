Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D23B6F2F2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770535434; cv=none; b=Rhn5yLtOO5e9MhJfxGdgMc/ziy2qY88s/xCS93ffKwlgn/LQlWhYb8MM1Os1/2n6OXXQySqHy7a7yBuDp667Fll+3LZO1XavDX2yiYEjeQ8RbDQbL9wWqeePqRv7BUGFhepXDFNvOrOgxeGMeIkpaBc1djEhkOUWbCg1I7xmhkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770535434; c=relaxed/simple;
	bh=4/g7zCiq21awwnaNqr8MWnglVHnftgfLOKtCBqnijuc=;
	h=To:Subject:From:Message-Id:Date; b=M4p++yvJ/TOltZ/d/afds09AA0on0vmD641GNMJ49cKkGqwO3K5FaBIJgcTySfZ9Ne2mPYnIzQsLflndLN7M8ItuoeXq6m+CMUJ4BfwPmDK2iE4tHk8QVJTbyGBWWUCQzCYc0fOZDH9M/2NudKAZyWNLS8mVU/lpxOBJSGJRCDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eii62p+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eii62p+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BA3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770535433;
	bh=4/g7zCiq21awwnaNqr8MWnglVHnftgfLOKtCBqnijuc=;
	h=To:Subject:From:Date:From;
	b=eii62p+I7vK2Pr85l5Nnge4EtuNXW0qeTpTVHKyOeTZD7dkOYS06UGLiAVTRK6CWK
	 DdKpdWL2vCff5Zr1UGon8feeWXjtWOZz920KUc7bS0A8Ngp+ax0EVnW/sfy7xZQci0
	 rkh+U39Nc2ywsbVLnbJTwZuKJjUrg1ZOPcvnMimAxCt5C9aRJvjGumj9WuuKop4w1S
	 4OSY21lVFeAZ1VssYxhM4NIoRjSTylyCO/jG2TgS05nO0jyZqGLMWeZNwAawDwOQ1O
	 Kb4ehNHBgSwjjKT2IUY7OK+pJkIu6y1vL32qKxrB8SXPVRzp7tK6LSiCyn/LJG9AF8
	 kHsjtelLDF7Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EBEEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053543364.31046.15008724651939676733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8255b09650a52beb74f70f0621e40e9700f02eb5388f147ea437ff36b996f024
Date: Sun, 08 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770535433
