Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C102C3247
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767269634; cv=none; b=F9Mr1FAlOCRga9UBqk0cQZUqd5ZDpWEc+lbBWLh9zF7ewTuRNMFAUOtw66m23hOs6itWFlyN5X9nbUVkmit+jWky/728gQ9afiVWck0wHnt3MZx09+KdTfXS3WGYlZqnUdsc6GQEPimu2TqPD2Djm+tbzx2TzDTkbn6FEEjEVSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767269634; c=relaxed/simple;
	bh=Prc06+Hr4SMtBur0xoshs+bmErbZ6Rdz2lCUmKGxa+w=;
	h=To:Subject:From:Message-Id:Date; b=u0xOIkvU+FPt0rBfeeJvJEiAAylUiba21inplAANctmfM9ryop76fQtjB24jXTjNSzx3jTvSlQg3EWTDWZoNBjLCtCRfPggnkGw7XcWTCnbzGi2+LbngndIiU73qjwsqQGBv3ycGcZhf+X3biaI7HcWioOHkcLWY+xaBWO7+ReI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VArsZuem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VArsZuem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767269633;
	bh=Prc06+Hr4SMtBur0xoshs+bmErbZ6Rdz2lCUmKGxa+w=;
	h=To:Subject:From:Date:From;
	b=VArsZuemplyKb7+VsJ4cp0SMNs7OhKNpwG57Az+MdGV8rwixDAothHJTKUXpbSSaw
	 Ety2fEec45jRLud/HACmd3JIwbKNlG1HTsGr5YPJyrXTjM6OsKX5oOjL9i/skp6E43
	 0aVrAnsoi0Wrdgebm69wZBvhMNrNNnHIShyZQ7vdlMzEj+L5RCQ4eH7bgCUKAuSU2Q
	 RKIfJc6pIpzddyVOmWaYl7wfWp46uMv5EPFSKrL2xo9t8r374HwwM9xx1KLKlETEJ9
	 GvPcwxVFbnobxIDS9F+m0fN+0ERl0AyJVl2VAaXb7lILBsj1ktac8RA5HoSrewLolM
	 nBghfy/EhdBZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D15EEB585
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726963357.2922.517788626376870138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecc57525ed6405f046b8de9985a2b61583e75229b96aa4ef4ffbb6411935c38
Date: Thu, 01 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767269633
