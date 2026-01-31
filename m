Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A29E2EC0A6
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874234; cv=none; b=TQshsDI6vmy+sToMcP6jZzRPG1ATBBQw/2fM5HpLqx4snGwqUJwUVtVptF3lcP59tsuHw0s5J2AzTWLEwpXterLyW5wIrPfdMhkjX0XLde0AoIBr+D2ezJvEwntkbXQjSayhRR5p6o4HphtzuJG/Uvvy2W4l+4UY6vlfkEjVDSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874234; c=relaxed/simple;
	bh=0Yf8d1fxQf/TgKpFy+MqvWtYG7okkVslecfME5N910I=;
	h=To:Subject:From:Message-Id:Date; b=PrqNl2wkXomM31nTN3WqloyUcuk8qK3OLrSPVhkHHexKOC1C/CtfZuzXQhF87d3p+6UfISZAdQ8aYQqv0w6IDIjjwJL38Cj4ogq+YphNKzsdoL0wU9fmgmEF5hFClzwviNh0kkilAY8YBdVOEUlZqB9CjXtDBcKdqcumlNf19mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY5fklsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY5fklsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF8C19422
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769874233;
	bh=0Yf8d1fxQf/TgKpFy+MqvWtYG7okkVslecfME5N910I=;
	h=To:Subject:From:Date:From;
	b=qY5fklsffLrKinbkMDvmSGc2xoAY0goU8kjZU1YZvkF386HcB1yLL3Xr4esV9fRSL
	 eWu1WgbcE3vRHJh3T3k6KwQpfPUZIMZRvafpA3bWtgMC8Ht/C5gg+gbPAy9Q8c/NQ8
	 0fGfv3ugBorSJmu80BQORR1RYMUg+LumXobib2b2jckCnWhI82SiIkmYoQNNyy59uJ
	 lqY9mbVoX+06Nip1zhLs9GsBHvN9T2awhyYD/Tu/PP29F25K3lBTMcds9WhM7SpVKl
	 94rp7ZonvzArxN8QmFti2gC346v2wHX27V7TK5GMKMbWONzGTkFyZQtiXqY2URkhvu
	 ZmQ2yq/f9h3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92941D7977D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987423357.12004.18352487634325931309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8fd2b836019cdea619fdee80f5629d426e78c02fecbad8e7b478097d15b715
Date: Sat, 31 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769874233
