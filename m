Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB6E2770C
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715367743; cv=none; b=lubj7U9ufHOFV2FUS0HxJmJjxZOGDVaNcfGL+8ct/PMHGDVf+ckkJ+898LrsM/VaKUJNqJ+di3HqqJCyzO+amh9YgPzM+iH53hLa7VeklD820r3dYM+9pxAewcXPdZFqnluvBKFiupFKJl24jNdiYnXkcI3Lh9oonY3vMXrKckA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715367743; c=relaxed/simple;
	bh=ZAUi9B7NK/90xPx9EpchWHksYqLHPijQkYZY8ay3JRs=;
	h=To:Subject:From:Message-Id:Date; b=QqoeET2GkXQHdD93nmp9mR2hqAKQH7J1krwxuPhNiVGLZfju/r9rVtGtbcz7yPpUYbg6hp1RlUVvGdxftrueG94V/uYggbGCC/EwcaalyVoILqVbwO5qyvQ6xRU2/VDXCoTOgNFcbtb9nTvXMkbmaDNsoVyF8ZIBXpZajcrI9AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv9IX2y4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dv9IX2y4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D95C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715367742;
	bh=ZAUi9B7NK/90xPx9EpchWHksYqLHPijQkYZY8ay3JRs=;
	h=To:Subject:From:Date:From;
	b=dv9IX2y4RV6YUx/YUMy8uJRiNkYza0iTRPiygStYuZzzws8m3LYZkOhQ1vmGlmAxd
	 miQYRp5bTOi2eUGZ6tluQxx/STHiQNCV6g86+A3PP82duGq/prCYIMZYDmjxoSs9dW
	 1NoI8VIg4SWw7CbdRFOlk3+p+fXMPTn5wmY1rh1jZYE0gpx3edwHuwLQuTGaksmtcl
	 uX7rYEn3OV16ypw4KeIeViJwOhtoA5d6MPY8QItfL/1UKSl6c82UU7HacyIlMc+4ve
	 JZVh/Gow+Oo4UivETaPl1+aGkmSRYHLqlX/uYh34KC/s2UKeVt/BZs/78j3kec6vmw
	 RoIak0/tHsD4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C448CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536774279.4904.15180848828059938938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865a6afa1c19e3e758ff237ff9f3dc748bae050e027809695738fe08d90ac4ba
Date: Fri, 10 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715367742
