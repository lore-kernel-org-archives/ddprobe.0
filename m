Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4A6EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720368383; cv=none; b=N8g7XL7U62aqnm/gltyRcyDCgwi1pR/QeUttycj9lKSwOpNuxQhS/XlIwtUu3Z5CNff4jgEgihMUPjZn9XYzMNSkVEzt0Nx4gbgaNm9CIABTu2MYRb3pnc7xfUbvot2/zasLjkrl3tGH9R87rrYQgfH2YlTaj4u0Wt11Pp3zo2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720368383; c=relaxed/simple;
	bh=yixJbAcc0y81vunDWYWt1zUAJMArjtfYXxTXBQQFSxY=;
	h=To:Subject:From:Message-Id:Date; b=P6ophjCGPTswz/gRWNCe36BKNpw6B5r4XQRzYWzPTsi4WBeiwND5kl2nNN/gwZ9rKmVWvBYohe3S20escmjojeBFFQ1wdO+uvFsqf+8jwAQQoLGDkAWrfEGFRxsmrnpFTl8YUzL0//Cw0nFLkRq31F7yOG68FFd1EQYIeac1sEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZq3Gxcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZq3Gxcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E895BC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720368382;
	bh=yixJbAcc0y81vunDWYWt1zUAJMArjtfYXxTXBQQFSxY=;
	h=To:Subject:From:Date:From;
	b=JZq3GxcwdpPXlKMklz7CJx/RT12py/NAjjOHklDKoRkXPEesHC1tXUF5qqJekg4XE
	 CRyvWvMHJx2h2nVnt9SEEQ3cgm4BFoKvFwSzjbrHpUEwChPt6X8q6VIUSYLkaiu7KJ
	 2030a43Z76zPMH2/r4Kieb0WTwuNsyP71XB+mBwmAnGCAEn+m6NA/dBqAgo4agoS44
	 86rH4ou4H35OBegFQnX3WoXorJGdUeLZN5kRvIz0ScOfQxZQQdFcaAhfAbkDZl7d7A
	 39XfiLKPjA1585+vO25ieGl5HbbwEnhkks2k0hcVp/fQhj3ySurlsJIPUvQdoLnbpW
	 gnYjnjMlaZ6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA2EFC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036838284.30987.9036344922435749510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb77bfe45fd387ee8f0738523e47a4db4155df4beec94a2eabc0360cbd1c535
Date: Sun, 07 Jul 2024 16:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720368382
