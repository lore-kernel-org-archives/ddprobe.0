Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9082E2665
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789401634; cv=none; b=ZLqIfJRxIlU+onorvhAk3EefGu137C28l0Y7p7TyxnONTcZt68si4mSmke0JiXY1Z9UcfyED6d5TxzoVvmjCHtQdJn4dRdh8D9ftNwvLa/t0jUeNnBcER1Df6a/jD/yQG1OSpIojUvURKZhqdSznfL2qdWO8LPraOqPF3daYf7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789401634; c=relaxed/simple;
	bh=co6DO5Q3D3KNnaPVgcad0asDYrxaHE7F8vB6Xi+vgFc=;
	h=To:Subject:From:Message-Id:Date; b=FZZTf1p994qKOvIId0Mqa0CyckUFWFwosqGJV6JupTlt6uB7Wh9P/7PDDNftkoYld6QcUKj8atII5KjrYxeGz0S72gbKU6hACHkkzZRS7j8Il8fwgndWvtUSyHDnVr7RhBeVkAYkV+sVCnUnzeyLmRcAponqu0RwbybUq7UB64U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5hOqNN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5hOqNN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D818DC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789401633;
	bh=co6DO5Q3D3KNnaPVgcad0asDYrxaHE7F8vB6Xi+vgFc=;
	h=To:Subject:From:Date:From;
	b=e5hOqNN+xHqk1FLSqkoLCTcrg80+HiHu8FdCiLQJz5VIsFH3Unpay9UnKDrv8PgFy
	 VTA0V2bf3zyLVqtf+Fm+lrNHm3c8lq+xj3ZX5XhPE/YQ0nkjDqwFXtD5h/xrcvD7aP
	 FvugEShEtxd4J8R/DfdDIc0HX16umuSoPyEn/IwdDltng/K57g6JGfSRF8K4F7o7eu
	 MZcNxXx/PgWXOaik/fR9Gczg4bdKUIiEZN0dUFfo5wP+9+PEOIWbYFKC+wm6wvt9Jn
	 tS6hXmVaPbPtHhRhl3n7kQ1tSkysCWWYyRxEwXCFma64y27w89ZeGo06m4gtNNNXBH
	 shcIVuWtbNcEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04B4C88E6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940163371.30254.14708005381221209313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04be066a37d9b470d0d9e5a8582f0319427c1a48ec39e6e4eac02a1e621803be
Date: Mon, 14 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789401633
