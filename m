Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21735128395
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752272996; cv=none; b=GY/8ZhP1LbVUO/jXRG7kf+OoDKSkGzOSxXP9VvaRlL/mIFs834NGkO2JyR/n3XLwawYpLvPyLoe8EeT8iIzltpxvFt5n0NgH+6E848hgrj/qflTy+VSPsQa46DTY4aHK2pmKQdee/EXJ8wPALZiHayQxL6I5OKq7l+lB90RVLZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752272996; c=relaxed/simple;
	bh=PyzVBpAysEKizdlNq+aDm25jK56zFVceXqDAfNmnOTY=;
	h=To:Subject:From:Message-Id:Date; b=bzykaawXjzf/ALm/UvjkxW7NZOdQUptnxLmNrXDZIIp7wup1zSYH695n4CNHkUsBUXKiRu9aNVPKeVVrdOr4j6cokRIKftoUk74dvZns5EYrvSu11isocPRHUSXE2jBwhoxLyRvY6DGdCBtgK1z1SuXrHIO2rCaUHOa1T4sZEqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFYVAszA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFYVAszA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752272993;
	bh=PyzVBpAysEKizdlNq+aDm25jK56zFVceXqDAfNmnOTY=;
	h=To:Subject:From:Date:From;
	b=JFYVAszAcMRLVllxiHaAqwzMbAYDbM/AoZiiRaJvEfwe9+UqGeAUDyFNVeC1RCAC2
	 5RnkK+oZstCQoTiZIpUdOGLG8eR1K+Py3z38BJycjewZgwIHbAdR3NrVsA29VfdSsr
	 W1jW9E85CysD6G4HlWpS/35SomJF/EQxwM7HexbEoa5CQ9pthvagQ8+6zeK1WZLf1q
	 Bg//D+kvDIJ3x4crOUkZ4mT/+fbF26UG8Z2/Qu0SfhwNoUtIGKCOaQurBsZ+NJG4BX
	 ld+0q3wuylyKQDV3RFRWFWkU1XAT1CrxxqFnTMJ1/s7OxzDmBEhDtjrdFPGFT2Jj80
	 voYLWe0tQKOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92239C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227299358.27289.6041356072741966880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3d003d1f7f18c2bae908753f2fab2888e115b2fcec9271ffb4b1f695bcd09b
Date: Fri, 11 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752272993
