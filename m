Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437DC2459E1
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790437234; cv=none; b=lojcFm3dnt+pPFtsf8oVcinxwi3ZV/Jptp/kjNxm7QPAA8mLz3lbFlA78HR5HHqLTAQBt8TVePH5iUmwdHs9p9zIcEXagCCiBGtP+fpppZ0MTeojoNPqPnojj2ZCvcent7TOgeEwAxlaOL1st4MibwvV9UIHkPNSl0DKorj1mFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790437234; c=relaxed/simple;
	bh=xBa/hWIEQJ9U1cQ02gmBVXekXz6wfJyjpxbFDhbXbhg=;
	h=To:Subject:From:Message-Id:Date; b=i0LoVzqkhX+aKI7TuXJFbj05D1cnYewyMIbhWqefeTVdbMtJtgCW8xzj1QLFEm0RjRG7U0PvHMhy+u2XbqwM5c0qIf8u+ECaf2+Yy6TBIX2PWEd8Z+Xuc53G5o5R5khYLeR/eP7ivPKzv9fodMxq262kHK1EznhTTLIrWsCX1qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaSuzOZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaSuzOZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38ECC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790437233;
	bh=xBa/hWIEQJ9U1cQ02gmBVXekXz6wfJyjpxbFDhbXbhg=;
	h=To:Subject:From:Date:From;
	b=AaSuzOZoVDRVkHP4xBUUeEX2Sv6JzUQHYDTOz3eyN9oHj6EPBf9RMaQFKJLbbFCa5
	 5Z78VKuNfmK3lhgfZGkzeT9OP1Kigw0lgKzHcXT6E2+yO+DZnJDVPNddEWQ1r0OuOu
	 Xb4s3Joq/bMsoOgKJ/0ZxT/ZJ2eYg8VHbjIyVA1lJQUK6nWH4y2zNCbfcs18mJ1jvK
	 jwE8tjMPPSlRyNcrjFprdVkiOBUt6BivWeIDtMBG8k8YqUiwi8TvzX33IOsfSE+LUg
	 ZPjQv7ZATrDPNuVrilt99oK3f2NMGKUKCSgtvtED8ij+qQikiBDhc/6KkxpAZFCRxR
	 CM/eBUDwwf5LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAA0C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043723369.19026.11397285626534371759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2bf3dc4c7c80bf94d3b6879789c17addadb3447794001f39d2aa2f5b8d3462
Date: Sat, 26 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790437233
