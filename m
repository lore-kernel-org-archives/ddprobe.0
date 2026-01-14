Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AA9184
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768361034; cv=none; b=laAgw/PvLkYJe85S9NB3GM3espN5eCDxyu+SbRM+s43Z+jX/C2VV+jA8GHCJEODbzbA2QQ3koJ2UAf55kROShU8ddhzS2dyC39251Ve+bCSkrqj/boBajMwgUmmdyVEtBB+Nuv+ErFhykaXY/Uv8pjHWIOAikllp+OzmmqraYps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768361034; c=relaxed/simple;
	bh=m/DX8RzX0HoRugTi5QKphAjtTEj7Bwdm4b+vwYdn9Aw=;
	h=To:Subject:From:Message-Id:Date; b=NKeNnmD4ik+A2R34k9hYrxR6vVVHf9DYoNjNikSPMmEtTapMbe6xcsRT9kNSsjLaUacp7/XNrn6Y7Uu++LhPV7N7IGj2fpFJso5i8fI2mh5fGlOmZPV36gT4bJ7ltzGDtIFtc2azY1NqvQj/QsFRDD0wA3217NDLYTlZc8EP9pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=parwBR1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="parwBR1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAF2C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768361033;
	bh=m/DX8RzX0HoRugTi5QKphAjtTEj7Bwdm4b+vwYdn9Aw=;
	h=To:Subject:From:Date:From;
	b=parwBR1VG3c0nwWj3/omw3wQc7bGSFl/asmBxSHLUJuZC1gMlAvQB4Sv3LlS3F9yX
	 pDlvUD/HoeylEvnOj3jY1ft1CBFzei66mX1mNtpV5iP55FMlNhlzmfCbm8I/OJjQP0
	 hn+Bn16L5uoXC6aIkhpeeZ/4sMkwbMC5bzt58cZ5ADXL1Ckye2Ot+4NW7Ij7AfhTXH
	 PrYhaKWGHtr9zihJVufQ33zTdOhndaovD+WfR79nEtaQ3LZ3UFl+ZWi1h2IgiN52wf
	 L1iQ1Xy3mKj3as6/Kv6hmV0V2a05RHgbj5aLuvwRqvgoECdp7Mu7evxHHMQ1ZooXbZ
	 8/6wbG7IG4NLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E791D31A09
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836103357.26295.755785267757160518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c3a4cf6b53038ebafac6175b22c8a07b70897b20c5ea042d66f7d9537e6b38
Date: Wed, 14 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768361033
