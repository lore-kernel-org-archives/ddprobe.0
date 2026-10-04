Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521133B2D0A
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791113434; cv=none; b=X7Lr1osW8XiL6PKsWuCvrhvCz3lrMcA1eAjVTb+bK+XNGCeVOWurrsQYr3WTrO8MP37RdzHhye4qK5TnKhW52Ik/ZSZvVNRwExvoM0+qVUY9lBvY0ALtRrCNQlJ1n3BC/utCiZFaoyErz4dUeTeTH2Yp6ND4K328B1ZhXb6lLrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791113434; c=relaxed/simple;
	bh=1VwhK0JGaW3rpGL9MXet5kOrK+qihyelzO9KgFCj6aA=;
	h=To:Subject:From:Message-Id:Date; b=t27Ira0yKDdBQmHW6VmY8fkVZqToWvpz8ewPcdh3I9rJK7edRp1rqU5xV1xM01VhCNrDj7rs22s/1uE/mfbJJRDMtjwAi7/haHVnAR4xwBbifPv4OhScfgHXgyvQG2H9AwAvxalFS/NdypB5tzW67jqmoqy+0/DMKlADuRr/BwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNMDPhKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNMDPhKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E8AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791113433;
	bh=1VwhK0JGaW3rpGL9MXet5kOrK+qihyelzO9KgFCj6aA=;
	h=To:Subject:From:Date:From;
	b=eNMDPhKM3b8eTY7kcNcQgnGgKHZAruvWZErg0HoO8ZpZwRkJHPEfh/tArjOvKDqi5
	 kySZsCU54YPRZsC5KAnQh6EWYVdaI0crgzowjqWfCy7bSSOM1Hf4M24NqGNRe/4kZ2
	 NYKpRTCYBh45ptKY1AD73N8ebtiTRkn7gX5+echYki0jPrp1oDSomMoGuosWI6Vm4z
	 n0MW7593rShMydK8EImqXMas20nxjU8I40gDW5ktnr+nzGCDLmpwAqihxqmVJEgVt7
	 c0zwCvbuLmuqQWZywy07Aaa8ToOBwzf/hVsLOWvgMZ+1nRmFAk3kaqBB02TvKZDeo7
	 dFCSNg53TggDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFFDCA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111343368.8301.14671596240819965088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c50750eada8b784809e9f4a0a0efabb7909a422f640594d10dd7e34bd53df4a
Date: Sun, 04 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791113433
