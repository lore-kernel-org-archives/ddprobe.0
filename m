Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC377FD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719016943; cv=none; b=aSKZ+4XCEWVBCFubb948t+oTj0/denIvMKiwZEXQdUimDy7q50Uq1sMdAVLAd9skKFTNMupWlMPGCqeF0d7akku0+m3xAxvJKkjNKJiZ8w8UNbeXgPYUpWPny1TeBfYw+nFgR4G9WVx3okLzuOK+eruG+eB3m96koJmv6LuPfbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719016943; c=relaxed/simple;
	bh=iFWGG/vau/hfd8arKYwxC0XNme8VKURpa5Z2YwmZf28=;
	h=To:Subject:From:Message-Id:Date; b=MB7/RFRDmFdrPNncsGWVPC+JHqePRHys+SzF1+ObkeOCDU2gs2qF0D1sC5vfCtCq2PIjQ/bHcCKR6K/dsro7NKlnSmIri8snHm1bHtGvOSAcj29exKXI1QrMsUDR0j1MvfXBYShIcNyPUygl14N3IiPYed93hKM6NRvkqs5UWXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClSP/152; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClSP/152"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D807AC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719016942;
	bh=iFWGG/vau/hfd8arKYwxC0XNme8VKURpa5Z2YwmZf28=;
	h=To:Subject:From:Date:From;
	b=ClSP/152qD5z9cPZuhSdAIaSqamZh55pytkQauIlsFOKNl3qJwpwe9HewMxE9N1S9
	 ELwxGznhXDTUBam9WY6+fnLE+SCtg/uAW7wVV6nXBZDmMKsDDVrbFfbbTnsQWquh4b
	 uiOlqbVe6MpwEP1uxJasmNwXwrlqpwPzr6ZP1Lp4Hv+fEt4tDE01OKTXODWsN02hYP
	 L+JAjYZkEkO5cMFb28Jr3QkOXgwu9n024ZHHrNH2qEG2HYYjBdcM2NFo6lRcOVR+Bn
	 s1HL6okldLpFqPnqmecKuQgtCx7LaQkuOk9EqJ1ysY4pOTzBtXGKHIOneLeiMZlByk
	 rpnDQRahZ82eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B96C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901694276.18843.7440968750908446770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8236e667c863f0ae3c38eac71f7fc6bae46b8b7504607a8feaf74f82d1a84f64
Date: Sat, 22 Jun 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719016942
