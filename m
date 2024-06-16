Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2419D8BA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543303; cv=none; b=OhYJHWDyyzTRP1Nxk8YAkgjLl+/iG9GTpO5yx5ryyu4GJn+UdEdLOxluC3uyaCzfWEQiCxNB47DIpw5Fso8ZnP4qFdyOXGBKaATmgo2KX6E//Wbv+/5WM5rYPZUH9xvNuICve+xnrDn4HvOPn6g4QUPAeqGhx6Dko0raaXfr6G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543303; c=relaxed/simple;
	bh=YRvfvcExniIEMmYFh6wfxjblIIZH1N9r2dk7tkWJsG8=;
	h=To:Subject:From:Message-Id:Date; b=YN6iotBoaGobnkazdWyNl7qYDB2dGlYqWTQtkoQohek1Y1L7d/j5ZKMk1bVOURLo6QqjWsOeLTGCXsHhE+fJn9pj2egcmzFYu94Kbr5VFgf9NB0grRTryI/T8maNU8iyTMD3ynGbjj0tTH/AhqnhAJkhyIInN3nnmcufz4yhif0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRK3yQQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRK3yQQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC780C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718543302;
	bh=YRvfvcExniIEMmYFh6wfxjblIIZH1N9r2dk7tkWJsG8=;
	h=To:Subject:From:Date:From;
	b=hRK3yQQHGOli0PjwPtDFKLKcq5VIvGt2WFfOidoVlBSYqNNwARY5SQ9Ncp39Cic+R
	 Cu5Im2qCK+t4BoBkOVgRkR19+x+tZU+2arhnx6L/WXhb4OgfPh25+kqca43/qnhBCO
	 g0uq2UprsA1+xsGk8spIDqo4NW/WJcYheNLN28O1YkTMbPJdNViJoPvdQYpTpeDJW2
	 kEn8REtr3vea7YGeau+sRpuEGCiE8zc+9+YV+hJUZExViKfwiGEEh662I1r0oNHsSG
	 L0KV7csOShFQav9K95L+iEF0P2cP7Mpnt4ou+As8eCas7wMEPwGQUrBEv3ZZJ+t1ME
	 gIvh/XcNJw2OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C210DC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854330278.14017.11168484535307969133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7957f2898a3c5d4c26c3416508c598c3b79a3732dd139781e5722e94b82e66c
Date: Sun, 16 Jun 2024 13:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718543302
