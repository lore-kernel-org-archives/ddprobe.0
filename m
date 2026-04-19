Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A972AD10
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776557854; cv=none; b=LIBmLm5Rk1d9ltdprIxEffkw3hya6Tp01dAVW8ZIDllmbWtmfSGctA1F5PHRpg7LjYWtb/UXxmnoXI62oo9+Ykz2EKZyWwUYVnmAkSNUZhTahKw3GMMY+47PFqkfbTemvDVEes5tJthoaDdu7PKi1x+tINc5Sc/pzHwf9xGGdLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776557854; c=relaxed/simple;
	bh=Fjs2F4o2XMiQWUkQ+6OSM52ur/rG3bU2DJktdyBqQY0=;
	h=To:Subject:From:Message-Id:Date; b=gMAVJRYZEaOSSCIBNdYHHfSJvUhpcbz1OVlHx/AE2zSdmVkrA4J35Zi6GSC6QgRVkHDgTjKxa5F9Q9vQjAxV6ojUrzz3pdIhermMxlfZJeKgtCt8V3P/qgDzY28UPBGG4TSMG0wGktmZfwroP3AITE0dSvaIjjnGPjWL63YoO24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPz2jWog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPz2jWog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC11C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776557853;
	bh=Fjs2F4o2XMiQWUkQ+6OSM52ur/rG3bU2DJktdyBqQY0=;
	h=To:Subject:From:Date:From;
	b=MPz2jWog/rUaGnhIFiB7pKF5+v+iWSj1Ts4e1TJ5rdQ42ZmRCQOp4QUrYNybebIGe
	 UUVFCnfWuENm55jxVyAGE5ZhpE8xEzojbXg+mNgIdK4tTHBurxQ6bYu3o4L/pPPWNa
	 iQ6dfnraTwJqUOFWgzj1VifgrGLWHrMiwNZkZkHIz2nsOc8ZkiyAYV9FsBOTt/XhuL
	 38LmTuEWbuZgYNzELbmRWIaLodsCUMkgD74oikt9vQ651K3HzloyeZPq/zyyylk3G2
	 490iyoL98aN+Xm0e03crp4wqmaB/LeDG++Xfm551iNrbNN1O3TTxZt2w4GEiljSs8v
	 JT2QAyj3gSWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9642F99C8D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655785368.10361.9948051413340983838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8007b65bf7d884c1f402001247396c31616951503e2af322123378246aa615
Date: Sun, 19 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776557853
