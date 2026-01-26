Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF5D1E7C34
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769404434; cv=none; b=bqTmEMbd/Tlb84KCQFm0RDN3LVNo3bJJdEpg38FkSnDhrCLMhFzkrOPela9wo+vU2G9b7UEXIBWR45Vvjr6WQmI8GVqDl+JOK3UVTrJXwCU/3tzFnsmu2YJl4tU3HKvbjIYrppjQAM7ydQaeEcipF3l4LY/cX5OEadaws30o8C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769404434; c=relaxed/simple;
	bh=zibR3KtNmXHU/AVLHJJTCvHCwQW4/aeiEmu9EPry4P4=;
	h=To:Subject:From:Message-Id:Date; b=AnPbJnIvJlygQRPDR65pSvPK9iXjpvPQrRLAPi7MeBbrig9AwnkSYKL1XH4Cz2qy8O7AOWyV8cMXLMzuk9uJkcehEhSWkFGhtk8eX08MB5z2ia5+15dXvRH2DgbwgVBchlagQhqkaDhwHhx1+YMmdV/iKtmw13KWH5s0VIFWmNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApdQw8Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApdQw8Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7516C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769404433;
	bh=zibR3KtNmXHU/AVLHJJTCvHCwQW4/aeiEmu9EPry4P4=;
	h=To:Subject:From:Date:From;
	b=ApdQw8BdwfZPF9ALPwIr1iHSHNVYeY4ZzAfieJqWIAsUjaZOOFyNVCB9EHoinY9k3
	 IxGewhM14ZppBx6M93GWRw7ZhrGUn43ODDTTjkYUaJE3N5nl0qtdOAD3WqSFlxup2O
	 ZrTYd0DzDphsi2MqhcsDkYPvqgT07w/K64z1AlFacumpyPakzDEk4uBZk7C6zxmfOA
	 XXTtNm8CT3exCJmpssa8RQFmab8wEWXqR+giJROXyR+xzggvJ2tFS/gRP1XXtn7NoX
	 Fl+tPp/fIV57jnv1ogHFFSA5OD7GT8ZfkHxUGhWhBJOjxjcCEB1BmdVSAfBgtPLfZX
	 ts4lVDCdXYzHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A34C88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940443358.28848.10856399480745791532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab0324a4331076cc9bf84b3d821fc5b4f933bf218460b80a6d8c183386f07cd
Date: Mon, 26 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769404433
