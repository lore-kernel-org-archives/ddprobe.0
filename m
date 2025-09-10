Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F73E24C068
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757540994; cv=none; b=ZetJAf9zEAIivrKg7kwFunqSLdwLmNIGCYeCpwjJrY2S+tWXNuXJ4TFTAhyn5yq8QefgLRgfDhbZZIfEJnbO4ZZc4np320VHngWDr9dyTJm3KFxEZSh1BdxvbuF9t7GqA39RUWEIinRn7ruaH6BY7Sd93vllxfGozy0bKoOSrPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757540994; c=relaxed/simple;
	bh=vBtscXa93jDLuKI9mvyiidoKYtMZFNjSoPurpR0sGtc=;
	h=To:Subject:From:Message-Id:Date; b=EIh+0XPfTZXTzvOCkEE5wH1Bp/3Oy/Y89OfdVc1CTrX4gtrcwX9d/t/wOYOQgG4kqQH8ujYwf9nD0ywc4vP1ChZZca/CFXmdobTMbGQE9gN+esBnsQnFZL95ntmkX7befiEcRyFkcIxHZFMvqM1IiFBucyGIyGDeG6BP6eWJvhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqWMcyaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqWMcyaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757540993;
	bh=vBtscXa93jDLuKI9mvyiidoKYtMZFNjSoPurpR0sGtc=;
	h=To:Subject:From:Date:From;
	b=qqWMcyaaNbDotH6LMGw9hKr+lUexJ2qS43GOLDy3hKlAPg1awLBQXEzY+PuMoTRES
	 SbO/64WgxBQZiGoRCTzIwWH0Ah2WKl+JdvTk2NWQfIyLuVtYu0TQ26xodbk4Ljl/tC
	 8uGFnDefnVh5vc0EtQunvlnyj6dIMzBh7PdyfCSGs5skUQ5v4ojDqV3zj8j8Rr/SgN
	 jvoWoMHxjUCGhvBn3e5qXi/cT/WqrebKFGkznHtcl6BxNEVZ54ElLoRtKgfQ5biiNt
	 fx2vf29eKCPj8MeeMb/p+xs+OYjbGQlNm3I0qxq78ncqb0mEeQvxkevFrjRmo9GFD5
	 kTQQUt+aACuxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD7CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754099358.25701.12344006321835467656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fce03482a87fb76bc947113c28ce1877f0a89b4db36e7ce8a65a03a1c5929eb
Date: Wed, 10 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757540993
