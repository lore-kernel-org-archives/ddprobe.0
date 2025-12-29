Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D2F1397
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767017034; cv=none; b=EloNg46EJ2wlDoPGNWu/mkSVft0+Zu7P2Y04BdoNofWS2NTZpMvCo4cGDD68FCaHMDcDogg76xABm6L5sYFVF0llxrmaQ09WuCw8CKv9EZJSQn4d+YgRDEKz/hLKZl5BFp8R2WYiLsJCgMXQhafZOBu48KsCAFG1SQyeVG/VYrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767017034; c=relaxed/simple;
	bh=GmL8KLlsa4dwjnc8u1jVvMp2tcH30ocgPOmQtleE59A=;
	h=To:Subject:From:Message-Id:Date; b=FCnfQkbJQU7AvaGeeJvWNoXl3LUGg4pqi51FVIS5AT28poxi1RgDH8acyilncZHcBDkF7jDC6MZW88X3s1V6pAO6qujwktBBo+Y+1+yb/746P6B+mPLNdovFAt7g8UBbxUPhyYX1Va60qpEzweSmZDK5DTpzftNT/EoG0ge8LR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msFoCf7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msFoCf7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD03FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767017033;
	bh=GmL8KLlsa4dwjnc8u1jVvMp2tcH30ocgPOmQtleE59A=;
	h=To:Subject:From:Date:From;
	b=msFoCf7DVFIpeWhzZAPbC6lvzsSWuBDog5DeKUmlupqZFMpzIcL8cNgtcmxFq7YgR
	 n0RqOW21YJMHlucGJ+IvQp3/RQlbVBUjLl0NoZO0BGFmkHMAMJ1n3rHaECWW3fCKap
	 YGnYwWUZIi77IIHwVzZ4PnsNfIvBQ3xW0pCIW5sNodUeKCoixU7+NRuFph2DUP60OS
	 qfidf5oqxc3Sl7PzZK3nVxBggBtrFpg9jygb4kllXGAIAr1BIEiNzbs0+7v5MNdhjv
	 KM96T1EESvhoKwktLMPxzLI1JpzcQbymyYmYUt/oc0Jh6uR26d1/6/ZQ8aMSXqhHfM
	 Rb+aflC35nvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE405D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701703362.31646.2826412457918588575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ddd05e024af156aa8a619e8d372342dbff2c7fdd649e6f1d36458384a29895
Date: Mon, 29 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767017033
