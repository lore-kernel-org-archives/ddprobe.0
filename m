Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF59313542
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766264034; cv=none; b=CVCP+bm1ixxEYVuWzimyOI4d8Pf6Vr9xWZHcw0ZTH9mL4kp2uYioy7ynzoaWWnatyRCvqCDBHGOIOCdxuRBSNoG4bDwX01h3fhnAGfzkPA4VgcwieeG+VtQU6c0HoooolbzrOIwMMqIOK9a5nNEqJcVBS1hCRYat6W5d8cyjY2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766264034; c=relaxed/simple;
	bh=vXRLxJPZaSpAFjvmIYz3jUu4S+52eefcR2TnJ0ZMy9s=;
	h=To:Subject:From:Message-Id:Date; b=miP9TIaSp3QaaO2UOS6c/o6pMHdthuebhqMMR1mdxC8IQ2Qim3Fl0W6357DS23K3ryucnR4rMf/Oof/WZpO04anJ1jFSPLWsqIl52CM2rFJkb5FRhNopRxOerQ0FB+n6ULMZTvd79XTROVXdRAWd3cVEpXT6zV0+QxOHBejPmMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBbRrOQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBbRrOQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E6DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766264033;
	bh=vXRLxJPZaSpAFjvmIYz3jUu4S+52eefcR2TnJ0ZMy9s=;
	h=To:Subject:From:Date:From;
	b=iBbRrOQUTYVbv40It1K3aorFNxxPsnWe2tLU40umjWo5MLnvPUCZdTwTxe4DJq/9H
	 bC/HjCT3NVz3NtIE4YtWXJSXifWFxMCIAdinYyhe8+tjSxrYY8r0T7nsnILN0hcyRe
	 HTZsBF08lR4b70CV7sEYf4Lt50UfOJpv5qCJFGjpCC4gR7M3FxxTAoSW0FRKXGrMzV
	 SysyMBtPdkXnFVZBUEwO8ZIbQTxMaGrszc/tzwBzCqwkseQDWJjffxqMOFxoywn2XI
	 dzzvJ0JRz+KKFKb1L++7JubiU0P3I+sOUUyLmj5CY+fKrhM8c4R5T8hNPr1VhyupQx
	 BldZ+wL+ms9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DE3E67481
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626403359.15131.13023181669837455425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f217f6e1c589d11e7c37cf48deb9854755e5935560e788b92c8d840da4a43c97
Date: Sat, 20 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766264033
