Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665842F23
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713837023; cv=none; b=WAhu4xiIFBfCh7tYIjg61UFw/FwWV5lFREFo/Q206hzJN3VJPWbvM06FF3zJLGWyYnEY8OyF3FzbqzFMjucmzmrlisVi3dA2p4UOti78wm85vUSgzoYHGhUHGTGnk1KZ8cFUolrHliF4NNV5pOuMvQnTRuHxqsHTOUcdNix6UhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713837023; c=relaxed/simple;
	bh=jHR3B93jqo94aJanLuEvIfOiMRiBKKfD23LwlUrUGrk=;
	h=To:Subject:From:Message-Id:Date; b=jcg0UmsAtKadNBHorbNddPpUgbNsiz7/YScSBf5wHjudbBnmQZ6cn+zwGVMjNDZR0Dab69EF2OhU1/3AAAY9wrsZs+xt9ktkvtQV0raSO3K0utJ9mqIHmmi1DO/5xRPjQ1WwRxoToZeBj77bSav3+oJ8cvA6zLLHNtq9RRopRbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIkiwIgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIkiwIgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36B8C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713837022;
	bh=jHR3B93jqo94aJanLuEvIfOiMRiBKKfD23LwlUrUGrk=;
	h=To:Subject:From:Date:From;
	b=XIkiwIgmRx65qffRvFstpD71VsTMBtOsSgGpIVeWCUI3sR2PUC7wdSP1U+zE/bW/p
	 BMjXBTrcMOvQxKmj7nIH1TGOTx5MfV77w0C1iOJon2IEONX6eo13Hv35fugAxevGIY
	 Mw9doRF/DjvRSalUY81T2QLbnisYvrOHwe8mkJ3kWkoeNSLPGH/2IP+W035Er+Zmdx
	 3N+Vnpdxktt8JXz45Rl1a+/HDoEI+6FJ5CN8Yt13Y0rFsxBfeChz3SSn6PMThVEEaP
	 c93plTJGSLsVvFUQfVag8YQpNI38weJjULbyiPbyiE3RKYo5c1ZH/IOnAUx8HErEFO
	 SxRzRM+DFhfLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD221C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383702280.2258.3620455921932005551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f38705bb8eb4d67ec9df9cc98ebe1ba4b59245aa2c08500445f4dcf87b3f6b8
Date: Tue, 23 Apr 2024 01:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713837022
