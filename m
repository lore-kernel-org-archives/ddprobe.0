Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D74364
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714228343; cv=none; b=F8TQtvgLYEp1FxirUauZEOaeo7dOQtSrx/XSJglD+rLWWyQyNDevMVGQmsA0WxfMDBIj8lFbS+kjrFtZBs0tUuiBs9jnBCqMfhsP8PujUNSbw9TcRIASpUMAQRO0Ugec1ByIzwEL4i0PBs0kql2NlrxIictMoPHUOdbleEjnW5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714228343; c=relaxed/simple;
	bh=SnSw/e2/L388+HM071T08BrApUv3ImB0ISaBitaoD+o=;
	h=To:Subject:From:Message-Id:Date; b=SWtvaTj9Oew2TJ4xYaZnmNJ343g22+8gzkNdOauuq4KH+WoUyPSaCt+NWRUdNk8yX2+Dl2vWm6RrPqlBMWg4jkvXkFEHL/iz04+6X3kX8mvdjM4PXSD0HvTv5D8eLonPPtFxeHdLWIvWx2JIylVtSCG0kIROruh40sGzy/w24rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+0/mzl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+0/mzl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F7C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714228342;
	bh=SnSw/e2/L388+HM071T08BrApUv3ImB0ISaBitaoD+o=;
	h=To:Subject:From:Date:From;
	b=t+0/mzl/B0uJFcrPJOmffH8PU9ep+1nfH2EZyGecK1e5uKn9XNn4ifp7H9ovTn8H3
	 rk3NIwOczew7Lk9VZ2JYsS2xruuX85UvGEymnLNBdmC/m5Pbrei/eDj9AbJdDe8a1j
	 V78d8wXscJSyQs3H0V7L3Jbb+LWka/n/K6ya23daDdyiU7edMdpNEAfUDwEiac/IKp
	 oP2ecyR2adCOS3SholbHkLHzVYL1zR1yLciBs7RjGTNSWBrr2Z0GsvZ5Zf5eC7FltF
	 As5XlHf+5lDTSySR+zda55ZtXLRkII2zPP+SZEdstyRMJ0f8CJOMRecoo7pZBjtGFh
	 I9jbI3+xlt1xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF403C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422834275.21433.12901742694345793410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efb0c9f39d1d0992a5821d8f883fdd214bfffade46a1b32e7ea554d66260541
Date: Sat, 27 Apr 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714228342
