Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4972F2DCBEC
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748756394; cv=none; b=dJHbJUTgJgSus7K+AQBFr6t1GyhR81wsNC4eD6Bi3zSE2NauITjl+wX2Ye09dQIDy7iXuqZZBxH7hAT5xoKG0Qo/IxRmAOESLPYVU6jqrQz/kPWkIVAV7Db7H73AA2rMGYkp4W2YEWbrm37+QnA3+XEiSCthMTkxeZPbKSQemYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748756394; c=relaxed/simple;
	bh=NBMyRiJIs23PRxcvLx22o7pGCqDIqDKDkUjVYSZiAW4=;
	h=To:Subject:From:Message-Id:Date; b=SZlkLz1xfUGwyCS+2SRK0pcmrqGufCdUpjhahZeR/iouaHu2paZn6Hu/eQuc0aRKlqC4cV402wMNuq7EZbE7OMD3QYM1TO78v9br3HHMB4TiHltpu0a99FUpja1nQvXrtUbGzt8Wbgs16nUX22BIPuWIU+/3ph2wlNjUkgxfGIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUpFCfEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUpFCfEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD31C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748756393;
	bh=NBMyRiJIs23PRxcvLx22o7pGCqDIqDKDkUjVYSZiAW4=;
	h=To:Subject:From:Date:From;
	b=IUpFCfECA9hvC22Wi8xqy81hpprkoN9LPZsXYVMEAfe75OVVwuh4sU/xNE+UzHW+8
	 FVOvg/KePHi9r+gaBvjLfHOhIpQLxv8u968alVHZY4yHyE3ogWKEktl9QR8vb+kbCB
	 hzyHsA7qiPwlR8JkFzE8J6wsF4hXPdUovnxzJzEq1ly92piKvHdDZH8ExfhFMxgtc/
	 KsPVtvOI1FziPMy3QD9cStWqUvPlKRbIjTqey4ntWDzj8zAJHAIKf6DqoU8kO7ysdG
	 Vrh6TAonIGm5NnZCkaGv9F5/JSci8sNlcYKZKZyjydwFm/UP/2FkFXi91XX4MhS/HP
	 Y3zXqrnIHtXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE0C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875639359.8609.6284353564659417096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ab339a7874cf1bf1c1d43f4172d6e88c580129b43a558c8820f4d618aa7b5d
Date: Sun, 01 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748756393
