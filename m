Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494B521FF2A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783909114; cv=none; b=ARhz9bkn89rFRRrySWmxdN94b70p/ak2HYQt7icDJwLzxwWqV70IaS2LINC/oDfz37K5RBMUV4AyBLD64RoAN3UqdD79qvB0jQxV20IRUkj7LeCkqnhdZcG+mc97KIpBajKmdh+Wapl5jj6PPDSOlJxJjidhGYhfnEH7jx7wV1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783909114; c=relaxed/simple;
	bh=qwMzhFqda/1mHsii7KbhuY56Vru+gqyNqsiEcwQBoBc=;
	h=To:Subject:From:Message-Id:Date; b=PRcQgmU2jjDzwAjlrqfu3AVoxS8cIzozGpgvciQPx/CXpAL2+iaWHUawY0K4EEtabfi+hSFgxxy8Rbf1P8ahxzhvrIOwZzUe/zVh3SG70buwYhzD6uTMw+Yr28MFXPXnb1KqyYGnpxrzepeExPCTMhdRW/hnM54nSiCPafDcbmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUnbePR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUnbePR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DECC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783909113;
	bh=qwMzhFqda/1mHsii7KbhuY56Vru+gqyNqsiEcwQBoBc=;
	h=To:Subject:From:Date:From;
	b=OUnbePR/TR/jgvAqpXoa+kK5c7lYBGUaq1EiNEtdQifXvT878tYe72GFGsxKnglsK
	 PEQ/Agzbcsch6BLVYKa1t/l9OApQa+ZcshH4zFpxL88sT82zOwWjeOiw0UmSXtjRpW
	 HhHLly8NQYvt1BRZsVQjAPky4wH54Dyf+Fk2xzwtqBmhSYholYFgtMjqCd7iqxMzBr
	 eIZMobQMKQEQpyVsp0owXZnxJy0L1wOoJkq+a8dAIiYELNP3vC0dy3tMVl+mPe9cH6
	 6gEDzuZyDUnok3pImdMgNthZzFm8ewTNJgjNM43015oA8GeDOU1s/nkvJgamn6sImA
	 OKo6ER6AWbBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9F2C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390911368.19525.13193150165838579425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728466b469c066272bbc291cedb0889d9c1e22cd29416d71363615b0e475f3b9
Date: Mon, 13 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783909113
