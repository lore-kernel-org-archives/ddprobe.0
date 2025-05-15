Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9F9202C45
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747294194; cv=none; b=k1DpkY3WWyresZugJImwDhtItXntqbZBunBl/nWmIIL4w1iyT/KsyEbgMvLsnONuXIdTq4sle1yaqbZy9ydg7Q+CatsXqiwNRA4wUduGL0WCNLm7PXRr9val+ee+IBxg3Kni88AqzmVmwsdvTAbuUYMTUl9raDg4KW3kmNEPnBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747294194; c=relaxed/simple;
	bh=D0K/QAcWTuDFoooV9Q6ghj7+zG8tHUHMWuKBwR+2NPg=;
	h=To:Subject:From:Message-Id:Date; b=QRP38RwNNVnYpM5Dpl6ybD/M8dqtSBSxA/BRbTNjSPjKCDU3bMKIywuTwT40A0AEkUTGmokMc9lE1+nXRVaYGEOeMT+fGb+zuzKNSpUG5CJkAjXcnNQ2iKy60xA+6G9AlIBrs4bUYrLJvKgVgxsf8pY26ESdsOTMLzzE0Qfh0OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCpiwgUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCpiwgUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF75C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747294193;
	bh=D0K/QAcWTuDFoooV9Q6ghj7+zG8tHUHMWuKBwR+2NPg=;
	h=To:Subject:From:Date:From;
	b=QCpiwgUqRp2NPek6+rGysuP3LNrKVm6b3oTLRAzdisxT9OHNDpu9hBSOWnqmOxGkZ
	 nZlOzSdvhD3S8RutfqnSEpjpe61pew2EInsBQMap9NiTmHCs/9+VhAt6El8mst3MMA
	 lzL0uxlRO7w6d1vMPlolb49auh7dTML7u15VQnbYdklj77jLSE8Sl9mI87ZiIJdDqH
	 MY958gMwyPRnwl790n44tIpTquMFUS2VwuFXPLIqFrqOMZ9vtef3bn2g08zg5WXXSQ
	 lvVy3ngRNdY/V7AsNES3Pw5x/4hfn0oupVQWvAIUvRGYaVyrpTYOzFyk1kxq2pXNX1
	 7Ud0mZHA4a0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A58C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729419358.9905.17012307782092103274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9b19a09506083ab67ee6c970f9a3fd0f2d05c04237350aaab0336b59f0ee29
Date: Thu, 15 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747294193
