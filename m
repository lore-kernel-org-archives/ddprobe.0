Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A97D34250E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777303654; cv=none; b=m/2j7VIsBjpBdELPbRxSYqtj4IU6jzOAcchZ2NFvuJK6dzqAUUik3vLQ38WFe/5QTSU7tkskBPs0Lv9CsbHsbyh8JT57J3sif3OqbYIxqtClBkYVfCbYMBVXM8Opa9q25RzZOG5j907GrRSrWJ55W2fgR0eLyeXO0ST+qfPzA0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777303654; c=relaxed/simple;
	bh=5h6zXUKI89AVljl9H0YCDQ6w6uRUsXYLHMyV13UcbjY=;
	h=To:Subject:From:Message-Id:Date; b=GtNGutEUPSYfGewjF1M0WPOcxSiibXTHZaBWeECgLYO1NlgxS9krFmfTlgT1prUpSCZYyXzNjxth0L7xB5ZUblMw+7pLYJSFX7YHBr4XKnb0oxcx20pQy15nMZ/gBrXrXbbSLakUVerZ1P+fzv0xxwEtJZsDZW34t8WU/PaBekY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgWUVCxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgWUVCxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE5AC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777303653;
	bh=5h6zXUKI89AVljl9H0YCDQ6w6uRUsXYLHMyV13UcbjY=;
	h=To:Subject:From:Date:From;
	b=AgWUVCxVzPZEz01HQ1aS7Kn6n8zQpE/BIQgxkIDRSR/PHUokVY+bCcYvJVIpIuBOF
	 5J+jc4O0XlMzCb1U16/k5eTZzZmLKSm0DpNM/LiTSf0hi91Pm+OVm3YRPnyb5oZCIG
	 LbE1Bf97ADpveoiuHQIDpilpknKiZA7NgzJC/SSZpnwSm+ArDaXW46IKktDbQgVtm7
	 AzXqSxwK82kzJ1nn4BrzxjR2rbwP6QKYrAg5r+drmg+If5aHfJSO8q2fPU8QaLv8NL
	 c2xwGYDSfAIO73BWHPO1MshGk+IWo0xBCwTRUlVDuZV7p5ueB+CpkICFNvlWv+MQxc
	 Aab08o/ylC0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD64FFF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730365369.10398.2027445968776096140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae34e28cb805594b99bcee3a31e43e75a8aabdc4a3bd1c108b47eb8428d43796
Date: Mon, 27 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777303653
