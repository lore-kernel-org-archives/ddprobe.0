Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB961253345
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747952993; cv=none; b=VOBQURoYhczdrQWqcS2E3O0nU+6x0tdEl4/+iWP+yD3v8A/rbp0qSjZt7dAfsPENGOmBCV8M6W/X2MsZltxsS+6plYoOdOjsBhKXEPeJC2xTxFgv1ED9HvJ1iRRDIS0GVT/WBonXea9uOp9UiyxTDScAg044DtI3LlcdEH81jyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747952993; c=relaxed/simple;
	bh=0naqlj/tCK8NEdNBHVt2vHn4848SH8/S/LMggV8fTwY=;
	h=To:Subject:From:Message-Id:Date; b=DKc0wNTENIugqHme2Lwx8pVS6pTYysAAoddVvF+w4orh6TyVVxd1txfKQl+ccg5WA+Y76cF0g4hwaXVkj0KfVu5NSF0BhcsPa/N70lVSGCJlQituVhvD1Fp48TNmv6fOzxe8HOZXCabRx7GhDuvWZmoq8R9qdvhXz+70kZaJYWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuM8Dpkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuM8Dpkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747952993;
	bh=0naqlj/tCK8NEdNBHVt2vHn4848SH8/S/LMggV8fTwY=;
	h=To:Subject:From:Date:From;
	b=fuM8Dpkh2qQ5A0qNpejbLyT/gDLiJCVQeEZX2C+UvDD1rAd/ewN0CXLdk2V3UzKfQ
	 Ac7DqEeTucvJNFENKEXsCQ3wPxDtmgynA2CeQ0hjpM4trRPXwuX5/8U8Sbzexz8d8p
	 V7c7jiZLj5eCQPjhpbKJ5C08Fw+Gp23HWqNY30tuJFUBwSOxUaj3Ll2D15AFE+Tpsl
	 v59HvPEEGaD8F4w19LqBQRJ4eisXjDPjZNBRyzbB2QSBoWpN1Dy6KeyC4xHjsorq2+
	 QNr3ITVW92GGektSAc9OEqF+3zUQg4lx+OI76RxRGcJbfZAqw2qS6MZmOkDOBQ93sJ
	 5iurFCT2BCm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA3C54ED1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795299358.24698.8929856407043488159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6ffd848165fba50a7c2fa47b44749f7760024111e28a06aaae85ab51ba9cf6
Date: Thu, 22 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747952993
