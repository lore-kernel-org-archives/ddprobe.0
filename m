Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CA6248176
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770093834; cv=none; b=iDgoLSRIx0Xv2OSv6tKeH4LFxsvwfYgpFqBJnUGABRWprtIThgzkACfp0kyUHgyMkqNGuNSqJ98A73EzJby6hyCATG2m6vXJeBdrO3Ygw0+1NGDWVmH6L4MT0WUiV+EdmQSwN7LwNElZXz+5/BSpqA7/p97qdXRUg3ZT0omU8hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770093834; c=relaxed/simple;
	bh=sPpQ47F2KyfSDEQieuOQ9ElCI0EruQbBisvjXnmC0zk=;
	h=To:Subject:From:Message-Id:Date; b=n3YBvVT542p0us1xcrOhPcadOo8lwHEro2jgnWLguQbAAaRyU1uvRMAnJ2sUWh0ho2Rg+ekdks0HX/em70j3xguYjyTgICLyGmxNpuI0KbIeAflQ7knZlbNpkFBmCbAvZZjgsqX6BqQ/AaS2ObDqgvFbLtuXgJkB6gxFlTnxbsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+VVBDXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+VVBDXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D3BC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770093833;
	bh=sPpQ47F2KyfSDEQieuOQ9ElCI0EruQbBisvjXnmC0zk=;
	h=To:Subject:From:Date:From;
	b=W+VVBDXUff3GabPvay2pmmMMJZbiP17exZGKH4FAM0SbM4xSvYI+Ip5FylUSeSl0P
	 QBYQI3bxWYde2WTneruWGdBNZUpzso2sxK3GSXStEl503mgTtKqVRWouG6WhJsNg3X
	 Y3z6cAh9NAUKZrnbXTjPWyP2TJ+jSEhrPKGXYmztLyOXJ9AAx3+moS1fh7vkKWCcNr
	 bOWQs0q7Dl8HIa0cM7KkSEs6hZ9HtF1KDjZTBeDD2jxdJDPCfIpXhpV0UfKUWTikaI
	 jL1+rkhno7GkZ8X7bFJOKRUQI8S8/P5vnYniG1E3EA35+7AxmVSpNoLVe+VGzoxZ2y
	 UCp5RvV+LZ37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0C4E8304E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009383360.20693.4293701815550944824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12b6ec93655183a04501eefca213efc60ea9c3633b217736e77b841a7e7600c
Date: Tue, 03 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770093833
