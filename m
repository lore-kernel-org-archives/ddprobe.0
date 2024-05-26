Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC9613A3F3
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716766463; cv=none; b=FplrIRETUMxluNrmW8t3iw+URzTMFsgC47RoHhZSTTvHffQSnd9uLKgyEQ4RVlEOPIzu0qoXig6X8hiAiWQkVKmGhUQa77WVgp4ejQ2HSz8AlVr6RsUktFePCubS+pBuErce5U1SZdA3lZjc31B/3dfm7bZHpd9vf2eobsAQ1yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716766463; c=relaxed/simple;
	bh=h2+SuIxWDX+IYvt3zDHPAGETOsyKZitlG3UQKUlwpnk=;
	h=To:Subject:From:Message-Id:Date; b=NFpreJHQfZHssOPWD4VycyRb+2sqNJeROYXLh0RHwRiCRv85NZs3yjNIKDagYzLI/QnSsbBg/1hGoE4WmLo1dQ+zDCzBuHGNKfJO4uMD5sVjW4DvXyZ5PST/HV4HVamjOIVwa+yqCuhERZoMyi4dqmjIUZGitRWurs5rOjKcHVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvOlseqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvOlseqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BCEC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716766462;
	bh=h2+SuIxWDX+IYvt3zDHPAGETOsyKZitlG3UQKUlwpnk=;
	h=To:Subject:From:Date:From;
	b=hvOlseqGMWA/3dpSgcbQc22bID0OeN/B6zw0F2vnR8t4qJSh+PZp9JM+Xiv3LeYI9
	 AO9zd76O2H1hQTeoHb3fglyII6xtZiQo4NybFQLaap2+Ib+RruqH1GBjaBguyleVH6
	 vKfPCz53Kb+3Ft2F0LjA+cFrVNQzReKcypisZwpEgRl2WKyopnY7YgDRWEE/CH+nH3
	 OIhJ+iWGWRPEvJCvRt99u5WlvkWp/T5S5ScqYXDGLJemEXpadcppK7Lc6VLjwh5t5o
	 3o45UouCIzeqqjvZ+Bq6f4Burr0aqjP+uLWtvNk0CmNm8Py50af4wcqdCX49iRhy1N
	 SzLqcUGXS6E8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEACCC25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676646277.8258.13245814949061533220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fae20a75e5c0ffa20c9c740411436aa2112801595a6c198e358950ba2cf546
Date: Sun, 26 May 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716766462
