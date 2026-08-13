Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E0747A863
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786627834; cv=none; b=SjOWoWS5cCHliG0IOd81rdvE/wttCy5ZsAflS1yaoS70lZ8PnUVDjeFKAvXdheUjLopUgehhYgyNHacnN2Wodybzi1nyMpPBMAIzzQ3WgfMHhARQfygiVRb8n0JyKZkzbTVrhHjIqDl5xVqXf40wAuoO4S1Mvo7gubAKXZgBU1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786627834; c=relaxed/simple;
	bh=d7+TyYx3d8wkU+YEN4ePGuhi3LFNj6AM4HSBRrleukw=;
	h=To:Subject:From:Message-Id:Date; b=NryC1wrAsQP2quakzCXXY0whD7XYdolnByhr3xgMyWtXJoqlDK5Qo92cFan5U0a6xmuGKGS80vE1QQEMEi8b9Yk8lWo2OuHarRccsQiDZQ5g/xof4p8t9493pGamS1srj3IX0xY69bEILgTMVT9t1wUGyUWQCN+yQTmDQxZSsOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssbpvLZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssbpvLZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3D9C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786627833;
	bh=d7+TyYx3d8wkU+YEN4ePGuhi3LFNj6AM4HSBRrleukw=;
	h=To:Subject:From:Date:From;
	b=ssbpvLZmc5LMFQbakr9digk8INvHeZL5UUNanjX5SfBsTtL7sDJ9qun5HkwPuGr+/
	 T4LRIVGVzPQmdUki9ZCQq9wlcWmNJvDPoZyFGUamujYnICM3oY5Kog8biFuTs9DEpw
	 mulVPMVYXw+49hMMQOWq0MPQ0/PpjsbAYUIM7sGEya1fGRaEBC/Bh6XDCsMI6MDFvA
	 YOFhcoIcudD4oUk/Stk0W1DEMXbbool2gwmmprU3tu5pgMnzIv1J8jaiLBrLTAl90d
	 gfOHax0vDmnWI3bE+2ux22Mb7NA8UF3tHKqncOQgBAoBblzWo3g9oj+ibLey5lZ3EO
	 WR+gq8nqgB9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D4CC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662783368.14367.13958532262901126735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe29203df67e68725088ab09af5e3c78f738fd9416479a6e21b5c487154501c
Date: Thu, 13 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786627833
