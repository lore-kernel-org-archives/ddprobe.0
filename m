Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D8138423B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777368454; cv=none; b=YlH46Jo90sLXstqcgF8ygE+4piCj4SXZgbJhXcaVMgwKijt/dltlFBabpmlguIB0Tl87lY/BIrv3G1BKtfrdthSY5iHV2sDRjThlhVOK7N94f9Xd/RdOMNQdL+V15cuRtEC6kAtNniA1OfHoy8TUUhti3/JccRzCU/m7i0GjeKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777368454; c=relaxed/simple;
	bh=NPmTu97W25/r4WDd4r7flE0O9iE84NtPtMLyUamZPOw=;
	h=To:Subject:From:Message-Id:Date; b=c14s6dokpGUgJ2zUdNeUH1TRyTdpfKgX6QyjZhKuSmUQseYyaxN6AZI5Ex0lTyORtsf8vovTiiuCC8gufNZB5ceQpPxF/WlIxVOZoXP5nrTDwP0THwjNsUUU10KZk3wrW1LXofMNwqoU+3a/RJt/8IBpVYzGOM/Z0vbSLD1rMwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCk1fJce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCk1fJce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77CAC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777368453;
	bh=NPmTu97W25/r4WDd4r7flE0O9iE84NtPtMLyUamZPOw=;
	h=To:Subject:From:Date:From;
	b=rCk1fJcelSAE+sWopHR7HbVLbdEgSa3Nwc6cJBKLAOSntk3kv0DZOKi5BuUVGwI1A
	 9cX6aPmweIj4i2VexL4xkMT6Zg/zD1XJSETm6e6uY232vYLTXPAxBLjNTg95MYTmeQ
	 Z2A8ErwSUdYa4LgiuydTEEl2b4gZa/ZLmZaqh4lM845Dc1XdoPXcg3ssD0Yvywie0k
	 iT9vaKtxb9FmtdpeOx+/3LSVXoSbF8bv0US+KwUndXRyBRrpMja5MZr8wNVG4uLPOO
	 lPMvjh9az0dXaZKRDaA5UTbP7sdBYrqrA6iPm5Q7a8CEVSDl8iV8McozS/uzmg/cbN
	 Rx3MsJd+55Wkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9809FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736845368.2574.9949366707663194436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da130b06ed8c7b14865f21677abf2dbc0b7a626e9cccf44149324c81b2e703a
Date: Tue, 28 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777368453
