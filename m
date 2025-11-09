Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA2C1CAA79
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762729794; cv=none; b=Td7GmpJ+2fkuaSPxVQh6Lwd/3uWFX6yv+Pta/zb0XgIs12xfJ+lVUGZMPGH43bXRPp1k/ANmIpktgOThekc3fM5YFYpzeE3iA2T9LnrXC2OhTBzyEJH8QC26a6pd1RZYpXVa1IqKtVLiH7TW61DsUFck02FeCbjsVQkj8/qS0AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762729794; c=relaxed/simple;
	bh=Pyh/DcV8Adt8qV8Vlih4s+vo7U4n1qA9sisNCVoDsEs=;
	h=To:Subject:From:Message-Id:Date; b=ieSpeUYvyHAwLqHInuXWxOwa3EzfBL0WirODym3ndcrbsschS1WWU/WBTm0OQJeLXQdPbap0BDxZRS9Kqgedp2M0NsHFCAEFeoS3iBdTPSzABJz0ZvqBKZoJs2ZzXlsSa9iY3nr1wTPdv9QAecSnCbRXNVKK+ljtqTCOr4hcoNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWQkgOKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWQkgOKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E00C19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762729793;
	bh=Pyh/DcV8Adt8qV8Vlih4s+vo7U4n1qA9sisNCVoDsEs=;
	h=To:Subject:From:Date:From;
	b=fWQkgOKsC5C5u0ZePQ7ftxRaA9PTE7XAS3EdvL1q8y/fi2jgheF1xafUr1txDJ+QR
	 26TxSrLW6L+85x0XtJnxwQiKE9ty63v/6gxb0n7P49VFbjNEOdOVELjJBlCOGK2A1L
	 CNngiIPZ4giCqk+udVKj4w9ypI4n6t0yXsVjhmPRSt7cg9KDeEKFlpSrmTQheVRvsm
	 esH3AWBkAfv1ACyXJ33WIrd46cfiVHmrhJcxh/n1NsJX8oqwW2qXTerzk1wJDeTHNp
	 RcpyVhOmcdYfBRFZTL2/ZRhbswz2oTKqnMFGPec8UDPJK7yQl8sFl3m+GJWnjlQWiC
	 LfaFEfR9+IuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E62CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272979359.25550.184123409088226882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa03fb37ed46738e573a007f3b010fe1a10136f5a24d0a32acc035b6873bf4a4
Date: Sun, 09 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762729793
