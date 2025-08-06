Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C9A21CC6A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754515194; cv=none; b=FEIs74HHQ+vCAA+2t6F+nztDgzLA99FsonpOiycFOQaEPhaREExRYLxK7Oz8hlkmxUlq7Oyt5dgBIgsT9YngTllVaptcM9nCt5a/44BOOOQcF7wEVqP5p2DnT01EtpaxExbHGYp7vLuuaRPa4c2iIqyCnEglotpJ6SYcariOk94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754515194; c=relaxed/simple;
	bh=YO4jdLscroZyyYuNwORLZaARpJySvZqYRB/twkXOeKo=;
	h=To:Subject:From:Message-Id:Date; b=AmEjfjZn6jCFqfygxTkImgmSwThwE7L/dEXvw9EsNCOPo7UDi3ThzO0rQlC+Dt4xwFEDqFRuQRS5HZiu8cQd2p9ekbv21YNW81HJ+cLxPqPMPcPx00HasEa+7uXh51HqTYD2dcKw0v0PrRgcCBaZ1nY6YI3mLptgs7VAu04C63E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDMSWc0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDMSWc0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D2EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754515193;
	bh=YO4jdLscroZyyYuNwORLZaARpJySvZqYRB/twkXOeKo=;
	h=To:Subject:From:Date:From;
	b=fDMSWc0NxJWcD7leWT8s6Cgbr7F11GbNxNWBCTWGLl01wtPtJ5KPwJAKf1KzcT1yU
	 nD/gohFJbqXyBKGaqd8FfAWdILWuCN/qeeYyn7+CVmA/X0nzsurRhkybF+wUzkq9YO
	 +uoTOalG7n3n8lzHMKmGxhiOfU0/yYjiRhDjlh8rcwD/kd1hWQ9fVyBJWvHBadKAju
	 h1s4lCddZxDsISAqk6JWjW5cA9Oebd8I4oSXoPPSCXNEtw+hg1Ap9tITYm99ByvxYn
	 +eyvjua35CLqkEnE3Nuwnoxoc0dN9n3kSMO3jCZIlWrlI4zJ9huWJrOeZRyGlrxkVd
	 ELLLV60/1l6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A85C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451519360.14684.41583047538160733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726fe3c2bb2f736739f785b88557e90480650666eacfb9c2ef499da0f8ee5eb8
Date: Wed, 06 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754515193
