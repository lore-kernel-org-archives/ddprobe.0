Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679D23C454E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786183835; cv=none; b=VYlNViIPTHZdXmi2fe+LOWlQAp8VnMqtWdrW4xaHeS+e2zscfXQ1vpmipLEYla9wF60mWMbMSz61yRuzZfibrxry2Am/yN6/Zx7caoh4VVMPQrdWdIILdgBzoK5PWvMM+woXM+cx1UUd4c04fcvwg7u9YAfd0/nsAP+bKK8SbWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786183835; c=relaxed/simple;
	bh=afU0nVvfkqAahPeLAUhhceMzCg2yWnQ3ChTlqAivF38=;
	h=To:Subject:From:Message-Id:Date; b=KFOGZHZDQ32gAZ/eqMQ7KD3eQCtllggT7DiRKNX6XsRi/NELEfGtfktIx+swmDvxQdhW/74ZgJYAJK/jWzzXYuFSLo04EuyK1KwWUCgx1FUijgN9tjlvBM3ht+O6DwNmIwW7YaXrqc82DVnL7P+dOPx68mTx7Kbd1cwFnsUoXCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXKF+yGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXKF+yGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82EAC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786183833;
	bh=afU0nVvfkqAahPeLAUhhceMzCg2yWnQ3ChTlqAivF38=;
	h=To:Subject:From:Date:From;
	b=EXKF+yGYAgGsg0C7OT/zNJ7Kx8b9tInLxm80SMXgKXIb6cy43xtdCqGK0ebHv8l7b
	 M22FPQDjZZUgQTYDIxDjbkLQLu0G6UjkjtnPKHnAGgJYpjVZ9q24UShgCIxpxH1rdL
	 l3hFtkcqyXyR8R15l2W1gMlVd/tclsxIiyiQ6GbG/Kz5QUURLGRA0P1qrTH3akgP57
	 yrDIJgz+XqxV9wwnK3VGrZdp8x4z58v84BDC2rcL8RSd0OrqxrkQblqUZSv5F44e5o
	 CS9KQJdckn1o5oJiGxRfBtVLHk1Ah5zcdE17Rv+bCJm6hNKNRoK/KxmBqLgRT0/kB3
	 1JrqbJ7vGUm8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B485AC5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618383369.321.2174372085546821954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e65bec175c4261f0bc14e0453e7a8e3277064d675f41b127064b9e0071cfc6
Date: Sat, 08 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786183833
