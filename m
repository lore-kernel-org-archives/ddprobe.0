Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9AB2222CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771100094; cv=none; b=OeuiqD65VyB8myFAiU36FesohzD1bO9+/GWL4FMOgwZ/sJ8NHgp+/dL2NHWDFWXBOc+0rzL7YHxZCjI/dPdZGFkAorcKFuqONxZ6CFyHit+p4F9iJQuBCtTULguri88JWi99ioFr+olxPeDwkhKccYimDt/fEErage+GFg9WswM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771100094; c=relaxed/simple;
	bh=d0WWbthcjD3kAPHmZKEp1T4GWjdeJPy+S4mU9JPTMYE=;
	h=To:Subject:From:Message-Id:Date; b=H53yQtW/3MpB2AxvBgyKzQUUqQhWf68BWcyKzLVLBMrQWs8L/LV/3Be6EdpA40z/JznxBmHPyM1U/RQ6hvPaobI4vQVpOk5ehJgoiRsatnV89OnhM4HnikfB8tbaTG9Plt8lexpmG1cUaHz2S2HrvrOmcpo9UH409E3JkJ1JGkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reKCA3Mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reKCA3Mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A982EC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771100093;
	bh=d0WWbthcjD3kAPHmZKEp1T4GWjdeJPy+S4mU9JPTMYE=;
	h=To:Subject:From:Date:From;
	b=reKCA3MbNtNWq0iX6jP/aJw6SIkUw/3gWNMGwS03+xd98urf0HOxYHxQxuhJkqdtM
	 Cchqw33l2ziO3QxWXNAfnXMzQuslQYE4IEANE13WSZrbpGczkH3cLRyjmfLe0A1jZF
	 Z6/kHoRuZJusYHoEATwH3zKJZTvgpIHiH/KZ8iVaszRh9zkeFAYLp4nIQXgW54mdDr
	 AhIXrBJCT0spIVkSNjlAHnG/6N/2dYzsbkvbodL8oTCM+Z30ZaMrza8dysDkshI4Hj
	 HJ+WyNGj18nqCr0R09AlmD7DgrpgOFWpvJmsLo/3flbOBStLrfJFJK0RLMWYEjIDZN
	 AHAkDQZpZDS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F6AEF5852
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110009359.28362.13530663465877553124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460326f1dfd5d177b60deb35a5e3407a5ecb997ec906c4ee9729ead8640df858
Date: Sat, 14 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771100093
