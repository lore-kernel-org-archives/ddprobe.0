Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6903446D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769709234; cv=none; b=M7WA1pf16s+tpDrA4Ah6mmBW8mkcIKmwRiUNm81AzX3EMH/QmV4fcA4pnuzSB3t+h6OmWcQtwX5xNFKRXFxQ8jYVEuPvqpUcwpx5fd4jnNtyssyzyVOLjG5ga8W+DiJIXtH9MHLqoC4ig2r1Xm4ODiw/bsa/adKzB2w0B/BIoPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769709234; c=relaxed/simple;
	bh=lj7EvPMDdXowIiO7bKJjxfOdPDEJ5SL1SHEaZDZTx1I=;
	h=To:Subject:From:Message-Id:Date; b=n6uSts8Z6ipw/4gvyysPJNgcLNtFZoZIANrJ4VWbS2KFc2qnl4kpghDWhWL/TlIu3bd2KKsmedojWhITkF1wkKGJvsfS1ZuAOxoT2LRUBb8IkswrEcLuYsuHz6uG0MWMZdeuHmpsAyq6YI99rAZZ1cSPH/6LxHdv8GlbtdLShbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAck+i7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAck+i7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D002C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769709233;
	bh=lj7EvPMDdXowIiO7bKJjxfOdPDEJ5SL1SHEaZDZTx1I=;
	h=To:Subject:From:Date:From;
	b=AAck+i7cXWNMFyO72Gnw/Ggo1/k7BC2B8Cam8YNq8LE7o0hHXBoc1uwGb4CHfmDV6
	 1sW9Xbv/D3U5fuNEizejv1BQu+YDMPR83Y/0GJYwszvLCeP4o33sgD3xUHBX5gjC5F
	 ZrYo28nn6O70L0JR0bYVul2SqJJrO4W22oRDuiSq2tc+4vR3I3wxzMefsLCx20s3Nm
	 cTOfHtwSfbTSvBLBpZ6MoxMU4r9RRKdtzORVeQII9JsPg+hMRCsY+NQeNQQFdn/Aa3
	 ztoLCSAdl1MXRB7TKQAqxr4KSHkb7VdohkA4qdHwkOe/IRXROepOlQIxlxF1EOJFuY
	 ryCeNjsOHtnqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6CD73E83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970923357.27185.8529967085798028916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc691890abdcbe772a253b30ee654f4ae04e56f0ce3218aacc2fff259944b88a
Date: Thu, 29 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769709233
