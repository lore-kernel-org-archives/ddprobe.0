Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4BA70806
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735427154; cv=none; b=UZyUyLyTYPVr8DDYEwSbdPYvyc88dJBqhnLC9gf7G417Dq6lN/1p0ecT4Y6kiVNy4ncv9ynrSAM3IChkVlblTe5bxp4Nt+tRemWEICERwTVdn2TOtQ6ToF//bduiC7ucVkKeKdzUI4ADB5yC8dIijfUGz/lt+lSe6MmWO9G+0eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735427154; c=relaxed/simple;
	bh=oDzZZLy1m2BnZklW7cslmOZ62TAzxDrUvuISpBN8fiA=;
	h=To:Subject:From:Message-Id:Date; b=XUhPB91ygOEnPa8TPCe/4cgrlGrDdr7pO8D/YpDUgtBCwJ0udtRrw7Wk9KmqfXxy15cKIfJViGuohIFaFkO7gCrARufQJ2Gdhq3w2mKonxRjzzhhXfNfSVNSsWe8Yn5W0n1O07XUCSybgNnCGyeiVtt0sjRkk+qlDB3f2kcNTq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLqB2zLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLqB2zLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18FBC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735427153;
	bh=oDzZZLy1m2BnZklW7cslmOZ62TAzxDrUvuISpBN8fiA=;
	h=To:Subject:From:Date:From;
	b=HLqB2zLeiMX8yob4Wj/4xA4TlyYpGmr6hM52pTRvlMmjSI4Vd3mFoAGHXe4W8H3f3
	 AEkJc1Ll+nOObDkcHM32LkK5dc5wEeRtIqz18TOxO4ywPsNelmvtMI5p6iW5yyyLxX
	 IkMaEmVt3PrRF8ECt/79jlenUGGvJ9Tcx0QvNa4HsIhpHg4iLstbmRUNDrYxqshKQ3
	 ZpN/4OU3ttVqrVbKefTHTsXin73k2GuRqWKPwUDxpg+gqvfK2g1tLBP6KIdudCqCmG
	 2ReAS+a7ydk8gO2qYWC+GFCgVMC74DMuv3LlNck6FK1KBtzzeVzi0R/YAOzL6MkgqR
	 jSIaKnEI/d4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9693CE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542715359.13242.17533445259134026904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7e84556e42264bb6208752b30a217f275ae290c4885b04efc664900415acd4
Date: Sat, 28 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735427153
