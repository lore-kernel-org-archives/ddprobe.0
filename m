Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B86C182D0
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777785454; cv=none; b=APFzheUg8geJVPlHt27bdkUyhAFJ6sxfSDnL6bCTabjtWWIkLre8QJ4gFnBVudM6iU7v2URuoEk4t/QigzQbKoVoxqPoUDV/DfgztnW8MKApYJO29cjQ9rhH/EWRDXzigxUAsemoIsWt7aVqXFBSsX0qKQA2qwLasNFvVztuiMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777785454; c=relaxed/simple;
	bh=aT5OZJwwhALkOihoARzHAm56ooJY3idhMejWisT/tXg=;
	h=To:Subject:From:Message-Id:Date; b=JhNKaQCjGmGMxKMmA0sibOwgbNSODY3kwZQtPvrtKsZARSOzD+LvRdDAt6Xn+djnUe4k68poZrGO4fjyoq1fhbwGSP2x2Cb8AwrRT4QiNPfqa5BbFn0/mXae7oifj65GMmVKEFZCwTQYOk6XX78oJaHrk4lRXWYXZJQWvyyoKNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YX7CorXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YX7CorXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A96C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777785453;
	bh=aT5OZJwwhALkOihoARzHAm56ooJY3idhMejWisT/tXg=;
	h=To:Subject:From:Date:From;
	b=YX7CorXP2IMndFK6ovhsolG0WGyDH54FlhBihjx9sBp6WjBaKSwiVr9/SwkIG9u87
	 hckmmsSfiiTxpOwHDm5AJQEH1s7IpUqPlQsGJr/WMwtq9my3hLLq1faRSAgQwsDQmq
	 jConxVjfx0NBQJR4k8TM5Vzr0Jx9Y9Wlnri1ukSLXcp3IUWJeTG3mUXGIx+ZoLbXR9
	 AGPZ4QixNnHvZn1BV0oSAesUy3MCQAMqXhW9atRWsrxx1e15GxAWnd6hj4taOudASr
	 u/v5dX/9lGu4SC6bBEVbzV6Ht6CChH9qCZtVyKSpwJh5bYkShuPuVHbCZ4wLjj4S6J
	 tQjfIH3kdBHGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6E2FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778545368.30357.2970109221162655684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd41eadb705e304c80c1eb6bc0582c5c632a005c0651682d3aab72f93deb51ef
Date: Sun, 03 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777785453
