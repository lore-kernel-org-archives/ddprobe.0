Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0A92DA74C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780377274; cv=none; b=YKvdrIgQt/sw6rrwA7aikFWtqCPMFkce7lyK9GpcuTb9lqGJKHOblPuzjt8bMk65uOH6OGL1+jh6xnH/Ruj+p8XOhBaXiqBgArYfon9qnwmwUi34Cg5r6TtUELZleYnReaXNP0iq/zKWooK1Y1RUMXVICZhjzEepyqLRlvLkToo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780377274; c=relaxed/simple;
	bh=t4jDf5eY24WJLSbhOh15ADqkgSizcDSIAurzOnA62O8=;
	h=To:Subject:From:Message-Id:Date; b=I/0onnlDBNtDptjLtZEuoaVpr2Qla0lTb7OncuxUVe6nYxbZjys531O9m18rqlAjKe0syG7XPFFJq22SOI28aAs5KE+TDEfuNotfSm1mK6UB6teZbjmVnp6tiRRG771xsvArYgqT++fDt6qHD2P3rq7tTZO4LAC4jybhXtcNIfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0Z1vv7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0Z1vv7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7467C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780377273;
	bh=t4jDf5eY24WJLSbhOh15ADqkgSizcDSIAurzOnA62O8=;
	h=To:Subject:From:Date:From;
	b=M0Z1vv7lOteheq13b4/P0R1F7Z5lJR+FlxUx65oO8C7fdHq7OgyaJtVSksK9Ti9Ow
	 lmd0CT+asfJ7ZkTNAYSB5V0aOxCghE1AhpeRRdD4bCogV/fBuOhg2RhIYy3EADZOSO
	 7UZVqyLMeqm9voMGSQJbkcMMjB1lstp9bFgQXpAs3QksfX/G/iy0v6yMt1QyM00HnO
	 MDNV7s3I77YZo1ZDDHnda8miuuABpa8xL2bU7mLQj8P65lpSrisF9d0aNKBqqMxWmx
	 OZvvNVv03Aj+tAvmBOgxB8zj0a/QQSDMwk1TsiLM/JOIQzySOkZgtsPvUO3oQGKR/R
	 A1NC1qolRwlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA86C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037727368.29993.13589195452055117187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c703794df5ce25070cccd0cd9761add255053742818407303340f6040e6504d0
Date: Tue, 02 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780377273
