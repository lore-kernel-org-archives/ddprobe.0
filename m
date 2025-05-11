Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C52DC8DC
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746946194; cv=none; b=KH/uaFUu+eEbVu2BmGZddf5hhfmcFERKj5hJUKWao/I0lwjKaIqwfrGmwFVSkpEvunXS9aHUgu1ZDOKzfOz6SLiTxeXcaLjLPmY9445X2MJ9vVy4+jRWEdaKY0ZQTfVC3DrR3+pEpHoIC5pHk35IVYBn+jTEFPEuNG4emE9QpGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746946194; c=relaxed/simple;
	bh=428Tr7x5UWM2ldwpBLc83B51Hzx9i+WoTjz6jntX1dE=;
	h=To:Subject:From:Message-Id:Date; b=kQLg7aLpDMJOR34fnuTC4MCULMmEtak6uGWYEkesqSyOVY7yE3Q7M0869z2R2anr4cDBXeJUeoyW5JGhzUDhOI2dVP7CZ681MSqSW7ZVAgGLVbvjhlXBHphyP9GmLFw4pKhZJKE8Hs9LD4cT3DV+pN39AwD74LzYXUh5pKwVf6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHSYvdCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHSYvdCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB224C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746946193;
	bh=428Tr7x5UWM2ldwpBLc83B51Hzx9i+WoTjz6jntX1dE=;
	h=To:Subject:From:Date:From;
	b=YHSYvdChcGhhcd9KU9sUW3xNrtTUoOSlM707STXPyzRInxegnLAZa7SsFJ+jHkLs+
	 4Vt3iFF8jttW3fuzs5u5nLs50eDeGGN6WEj/XoV8p3InUKCTPAxPyGXGmzyT7xsuAJ
	 GNbvA0sqZ07JCnNIdDCoormDmFcqIwRNIfZAQher8w3kLOruey3Tj4/iDaA4l0igA7
	 BL+bMri0bbrcPhdQTL6hLyS6NRzJCY4ygJGX+Tw94sFE7dMpTzcvoyGMpSspyFrRvP
	 sgfKAGJWNRblaittye0pxQEl/4KwQbdC16cCJgU55yCCukwyo9CkCBgVwZ4BUFapIK
	 DcVdGq4ZJxN1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9887AC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694619357.24882.11198512388429613190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcf46ec416a346f4a17810708ae7c6ecaa43eb29178aec57b07505b561eb360
Date: Sun, 11 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746946193
