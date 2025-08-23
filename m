Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322F62F067A
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755967194; cv=none; b=RV50QI+i9r+93b4UVMDjYwpkXrIq/X1DPMJn3W5SnRtzen2Y+V/JMxysmcS7LZnFBY8vs6Nj4zSnuZ/jNniIPyExV4jLbXz2MU9tg++2H8h2fANfdGUHBADudGryAxetQ+gpvkM6QSApclv6UVUaOOJFnzQaNuj4u+bpbo71JTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755967194; c=relaxed/simple;
	bh=ct7O1XddwEplZZpT5uVmAEBdADM/77azgg2iDNuyt+o=;
	h=To:Subject:From:Message-Id:Date; b=apABimCvzTzZGtFYGtpkExTkqDIXtdb6E/cAgfWmIpi00UtUyfKM8nuaXFWltOv9A2/+fCpvx6igvMsW761BjGd7pCekqqF2aSIEXGIfYkeQ0fBphlJXeWCx2KETfOivJA4SgEgu4cszhh6Gphp71pRAgEHdeXfmClHqPsLdrPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBIQXv9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBIQXv9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A565FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755967193;
	bh=ct7O1XddwEplZZpT5uVmAEBdADM/77azgg2iDNuyt+o=;
	h=To:Subject:From:Date:From;
	b=nBIQXv9ugZREytO9gxLarq1rPDjMdMFVDW7ZVPWBOGnkrXHM10FDjVQqUNHwcoZdr
	 2n1ZyaoxYtfHnE8DL3nKJABu8yanO+1YMUHFWVjFV6YeIbNUEgqd7Cee37HZf3SlSY
	 woWyJ7ttWprmCUD86TgEXxqOqQmtV9LwRBT2wYONoLiqmpsZZx1u2ss27hESD5iIlD
	 yMMmDSzbX1aNEKnfAfvEh5huvXjqNrLPONPjAjqyqpdyJS/s/7phL2GJP0eJFFmWzN
	 VQmCPnH0rs12xLoQk3XJGpzUzUTfY/gyW7CyOVbAU3Iy76d5awflDqqAlZhKbJSrcG
	 pbyL01Kvog70g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B3CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596719357.3410.5509185602399037300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1ebde1eb176968d458fc3a45a81b63ac6bf48b342c8d721a05f7aba8112cac
Date: Sat, 23 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755967193
