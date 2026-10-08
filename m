Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867AA3CA497
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791486034; cv=none; b=NW09u28CxuyJV8xqvowIqE3qgbi4xxWamUTP/UMMQ8zihaAkzB3hGGi0z/AfBBZ4qBfOqWXxLs9EWvPOxgEsWspr91SgYIwjSKxH5ZYASTIGKQmL6gTkIGjN4hL8jGs+AgCY6KxfEk6etTr+D8PzwwYjq3N+pPLt1lQGr4UGBX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791486034; c=relaxed/simple;
	bh=3faKO6Kqgkk2cNmXFlOuCCtxn+99ztqOI1ZTMPwL7rk=;
	h=To:Subject:From:Message-Id:Date; b=dqL805Vx6DEZvhdAGCbiUeWLLvcPR1f/sCUn+vgvw7/MRBV8XYrvjj9VniZ1zWR6FrDIBSEjapmD7lLAweI0OqZe24VJ9LhQV2rfrKnXhct9neSrZNEmUYckU0obOGkuCM3IXkdAZjPYFy0l9PxdUrXEdx8yllq1XE535d8Ojpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnV3Nw0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnV3Nw0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8473C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791486033;
	bh=3faKO6Kqgkk2cNmXFlOuCCtxn+99ztqOI1ZTMPwL7rk=;
	h=To:Subject:From:Date:From;
	b=SnV3Nw0WXw6prP3KvhWq/Bc2GkL3x2wXl4GPSv15HYrXPf9PnpK3YOjEmrgjN1wbI
	 Dp6M6tsA2iABhBGdVr4F/R6+shBuQ5QoAyLpknebNAhmqWY+KsX2j/1SNYiUGT9HN0
	 EfSlaKHyzXkxxmMZd8Ta2K8ntYGZjuEGe6qX+71/pRy4CkEIPlrUI3vGTd1HX+gohM
	 6Hc3asPqg8JTsztrKYl1Pvc3bRxDNtILQZfxmdfyfUrWw+3oiN7nRk7hDUDlirVRMF
	 W12qXfWxdmmrHb0+DMJe/N5mgFcsscBKnFwZPrrdmqc9DEcCODuwTyrH4lrcfR0WVN
	 vchbBueeh5aiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB82CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148603368.830.4756345652575212052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef66779cf69dcb142007b4b122cef2fe0e570bc54a0c5b53b000aa57d496b285
Date: Thu, 08 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791486033
