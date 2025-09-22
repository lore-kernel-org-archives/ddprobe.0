Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A62C2D94A2
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758514794; cv=none; b=HQXtjXucEFGhXT+DpkMPiwgQXNnLpwjiPGqB3LdR/UZiRlNqfEfNOq+CkTxgpDnjp74EZYF4np5VekJYQlsNiUsDUS07Yt2owTMZvTJhfNjT7FTcprqFhMISsNMJuJKAIc7OZdMeJV3RfeIWXfDO0GOufUR1SeJt2u8TXVDtc5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758514794; c=relaxed/simple;
	bh=rZfTdev3i60ckTVQeLDtc9F8FIg46Hy/6+WNGQmWCHg=;
	h=To:Subject:From:Message-Id:Date; b=gC1njsP0XEnZpclJqhZXWJVNssOVAAIDa4usU0bCu4kWZlrAXZzKGLfqC6HqQN1UjeAl84Uv07j9AVt8KX4o+g3AIHnP/BFJJA1wr+Xftph88yQDT75OUpNYEztfvNpEaHnJZ6JVvTxlBCzWA5ec6NPvLX/9cERilq5AOX1pcTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s86HECvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s86HECvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758514793;
	bh=rZfTdev3i60ckTVQeLDtc9F8FIg46Hy/6+WNGQmWCHg=;
	h=To:Subject:From:Date:From;
	b=s86HECvD6yQW8tvu/jOZ2r5XouZ22ww53cUdk4SVIdUABRcauBqAhgaGf/whV9aPW
	 AvRtX/Z0RPxZCfCKyRwEmyjsjcKCXjsE+r5LRixK+NDkMDQa/Hq0CsHNyw35iMA1U3
	 sBzGdkclp9thzsccSbMl2l2XM8Ze8Gwu+zwdfVomII6Xc+5euPGuUgIau9jarpkqW/
	 i1jP8AvQkRiaczh8qS6lGf702pAYg9ZU59/0PFP0HObKdijMyTq0R9996RlTadCtnU
	 2ZcGqmaLUvvERJI+TIG9WgpQ6+/tOJRuFUyeZkSd/KectU1WxnX7ZgIRC6dtnPGvTN
	 bhglotGvEPyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9733BCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851479361.29466.14033945708412472981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aaf1309b03266c0d02b9ca7df0c7a8659fd425e29e83222ded59be8bd31625e
Date: Mon, 22 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758514793
