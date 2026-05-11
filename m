Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135872032D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778461235; cv=none; b=FUFF7NVx5Vph4LpXKjCSEqWBuxhU1FIYlkwA3QI2PV9i3MTEuBUSNhrarDLB1GGsJztNGh4xg5FtTwcmc5gJ14deBaLxDApdMNVqmKtnjc0O2wKeML4dj04TP3Ovmxp42jhd5AA+ob7JYlK8wTCFAJMKrmJglDEqTrlx2yGUsVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778461235; c=relaxed/simple;
	bh=1nflG7WKu3x06ugDys8Sn1BYvHo9DJWWml9WMuEWsYM=;
	h=To:Subject:From:Message-Id:Date; b=cEvbkeAh2mE4WjDtz+28f6ZyjfbpymtyH0+NWCaGeorjOoz8s0HvyKdiytWI2zbxKdDG9q5rBwLiyQUN0wFkE7FT7Jd3AsSTUkvvGCTZd8wma4oq1q6hU026ahmbbXRYxQ3jbPXQzbPsb6qxHcVEsMcQ7TkUculOLV2//tCKsJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELkmsUMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELkmsUMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCB0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778461234;
	bh=1nflG7WKu3x06ugDys8Sn1BYvHo9DJWWml9WMuEWsYM=;
	h=To:Subject:From:Date:From;
	b=ELkmsUMHwlet0TxTkCBnpGnEFutt7SeIFOWa7t1js8POrzuz+VKZ5rlds6ABSIqy/
	 jbzNjOcgvwY4jz9PHh99fwXBb+2SDAJRrmoiC1UntoTumNAN48JRM9GeSruQEwlFHs
	 zTqotgnEMKn35UiuI17wSxRBkU+GeSx99CAJr48Y2LTYd5aZcvLgS9WeBweHrjo8nr
	 hXyidPTXsK4yCDM6PYupz1YO8RCsjQ7eTfrrb+ckrKOgoyIiMRSSViYwNEieDndtJy
	 gu4RLDtVkb44qWX/8TMkTzIT4rYfx8L40T/ltkE2P69rCzr2H2rqs3g/mWmrhA+Ruk
	 EPSZFTSUG4s5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B9CD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846123368.26857.18079259172540050920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abbc1ffd9ac8ab6218172a24513eb21ccc6682f2aa4e10f90f1997de79a2100
Date: Mon, 11 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778461233
