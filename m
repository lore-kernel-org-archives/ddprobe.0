Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9401AD26A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718770763; cv=none; b=TUE2nxft9KJT75/PVNhmGqMnkP/xh4KOu31Ted7SWqtcDGcTamDyp8rZK/MRmqcXHH0L2DHh4AFOQLaWRX6yex7isUTOVFgiuUUe71se5ajt+EyhUMBZm4er9M/8V8x1OfvbwOSKrrysW+SpDq+4rSyfQwt+uHwru7EcgNtvlJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718770763; c=relaxed/simple;
	bh=7/ueULiHwYOtrbdrXBGQe85N7Ffj7mRfPta8+cYYClY=;
	h=To:Subject:From:Message-Id:Date; b=dBIM1VI4bo1qN1ACdh6LBcVR3OVDMWgpG3KxaxU63fB1cfPkdKbND6gkOZ0JDnF1rQVsTRW3+IXd6gfziCIiuUfitBPcNaVSMxbxnV/w+dIdSie48hBTL2o92wABbPUrh/5CSeiqi9asf0iDhjj5qMoMvWK2HcZJX4qfSTOZnkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dd8rf/B2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dd8rf/B2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 106AAC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718770763;
	bh=7/ueULiHwYOtrbdrXBGQe85N7Ffj7mRfPta8+cYYClY=;
	h=To:Subject:From:Date:From;
	b=Dd8rf/B28CiueKUJC4cx4Hi1GW5k8sZnXfUDtrsZNrF8Ib9bvrhEVbPkBG90mUx4t
	 +xX7C5Nc/t7Zfm1nxweYXUaAQUDqOt5Yha+/GLZO6uFKXMxaw+Mkt03PPYilSU5ERE
	 Y3tm4appSPag6zSF2I9nhK9aZBxeKTLKOrS82NaSfFRe0FlLcwnEcaa4rS6l4SNW7C
	 1LzVcDjaG1Nfu3qta0i7d6byDAbKQRgrMLk4zJYoA+tFZctK5nD5YVkr65DhHAPi7g
	 k36FgaDbc5ShB+RuNIx3pSvlhsYvyk+9jo/rGYViTnC6yvYvTCDDpE17wTWzq4A7S5
	 YXcYLofCOjDTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB32BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877076281.28570.4246212629617607212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f85712d01d22612c3ddabf902a34a2a4c3803c21a5e3ca2394982eee5483cd
Date: Wed, 19 Jun 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718770762
