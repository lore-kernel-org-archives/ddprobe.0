Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268B41F9AB2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735904154; cv=none; b=l0PNd2yP2GvLOrzYkn9X+x+/taZXe7sKIg8nck/6EYDuOQockBxDKyUJ8byuyBD7grdGaiVorEunAYcIJkyBQhQJ7AfMQZBhuiDIGgY37h9T3h5bvGc2QXQls8wa5Iz9V0slPTRD+QQ+h+fXDbTE/jIFs7JXti0KXkrZcurP4CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735904154; c=relaxed/simple;
	bh=JhTHUWCDOjzNjUFCDUY2aaBB1FfFjIXDsTdZxzoACqE=;
	h=To:Subject:From:Message-Id:Date; b=dg5hNjlOzFWJhhK2xthxsnY4nALjSGSC09F3P3Wa8YICKdqZQnL1cyUk2X4QB2g492aNIKOuvgY/fiGQczN9PTQMVR44et3LhCtyBLeiuZu1BUwWaAK0fExJusYxGQCezK+WXJ4FALcIkxTjZSLoKULtPhI/c0+yyOHXy8tzr6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnloD0LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnloD0LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2558C4CED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735904153;
	bh=JhTHUWCDOjzNjUFCDUY2aaBB1FfFjIXDsTdZxzoACqE=;
	h=To:Subject:From:Date:From;
	b=OnloD0LGp/sZIoKhJblG/bFwyLGjmrUjq57n7ZKv4g2TnDNmRXG+xDF6civIg6o53
	 2eyMOkBw+YpS/sBUcib6U1MXNcABa/RWvIf/3TtHrAmyBWRp2x9af4QSuNrh2Yu7LT
	 3+edE1fCpFxObjyB1u5x8PrPW46fpMAQUYveZ25ID6o06DXtJlt0vWDXduVfSmKtAB
	 9Tj7e6OFfgUgRvPhMMWKz8gj5mWj9b7mFAfJcDtegdHjEAwLmXlNujYAmSYeritd33
	 /14zTQ4dv4c7J7l6WQxTdx8Jb5zxHf90lRVR+8yctbfkCDa7fTkPbnSRLSzEWyOwan
	 ytCavB5jmnrtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904BDE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590415358.26923.240796249080737112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc03a74f2b0941c4c832d7ff0937f83063d7413b84410d9930232df2099c847
Date: Fri, 03 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735904153
