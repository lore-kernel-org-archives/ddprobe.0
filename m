Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFC7136658
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757272794; cv=none; b=f7297QuV9ZLWAsVIE6RXY+rVflGhbSx4EzxjshZ7URKG3q7t5KfYFlqYU8aZ50B9t+TXXwMB8pRyqVKJZcwNy4lV2/kdkguwlw5PGTVjvfMeu7GVEdc9pzuvJfMK9H4ULAZNL+Jxc0nuPY2klcHk5eB3vc93uYIcUXKknfSS5cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757272794; c=relaxed/simple;
	bh=V+a/aAQZFSbC0tDApH56qYkUGJA/+qnSowR5cSgaVlI=;
	h=To:Subject:From:Message-Id:Date; b=TUwNzV90r/2VVgK4Ib6swhwM4Z2ISh2tXHTzpYeq1W6rNMGi6TH4fADEEVQYDgFDXHU4bZX88JVxb6qU6dk3PlQAewuOE7LVBi575cscNwP+9dsvUokwYHca6NeHfBCPvbo6pjXUMUFmCBI7kC3fImV8K/MCseyz1rovxCluSXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC5ZyLKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC5ZyLKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757272793;
	bh=V+a/aAQZFSbC0tDApH56qYkUGJA/+qnSowR5cSgaVlI=;
	h=To:Subject:From:Date:From;
	b=cC5ZyLKBm5OMzVgrbj2Zu1YAWvd3zZ/VcYcoVZtbW1PpFa1Dq8sGFuqojwfAr30ey
	 xPAS5DUrKVsCuOyvOjHCCgN1e4C2fAIW0GmOTtMAwNfRznWZ8KyyNXD19noldkf3uc
	 L+68O3bMgzgzB3iWjh6M+qEE+17sVgMkK03rcLaKIyZEQsxVEaAj05ve/FOYEpl3Ls
	 TjgY0q2hDRzOz72b6h6CO8VxKCyiS216O5ADa+ZcYBbfEQbaOTe+CsWXKA2KokM1UG
	 2BoC4t3oBJIFYbMOLVQbE6KBfOuht+82N+5ZqtsGyRG/MZbqtE/tpoGaUho+sZs+R8
	 7bTGp0ygNg+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F290CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727279357.23800.17576475054418223797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318e966e309c3c3ae1f258ec384085205d0453a3f8a85b95e5a0908519650433
Date: Sun, 07 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757272793
