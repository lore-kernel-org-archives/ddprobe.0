Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247C5266565
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787551234; cv=none; b=tuB1o5zv1N8daaVPrpOkOGsjVJcKWXcfo+rN/yDRP6a0JlgJeCl+Z6T5dGL3W+U1wuavBWv6nSCJQuGwxNMIc8YbkmKocw20zHUzBrP+LGMUQSDQuSLBlfIilwT10bI+6IESdyk9bb7E1SnBV956PoFWIRqXpkDBqB3k+bp6NTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787551234; c=relaxed/simple;
	bh=E+OpqFa5Zr6tMvQx3bOz84l7Cd71g91BsoTLrMY+40M=;
	h=To:Subject:From:Message-Id:Date; b=N8Y4z+mcb2TgrNJkBjlz6acQk+0tVN4NoLib12fwJWQss+5jg2691gO4kHs9yAqJ1NSUeoJppwnljVzw+vv8gWfMsSIaZGjD8PnsCQLtlmXumayt4o8By3c1xhoB6MdtdOukEkPcflm1a7oPEdPaqJHzEDPV3+rgJYJHYQgPZHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOMNabe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOMNabe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A1C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787551233;
	bh=E+OpqFa5Zr6tMvQx3bOz84l7Cd71g91BsoTLrMY+40M=;
	h=To:Subject:From:Date:From;
	b=KOMNabe+LevHbi+TsKUwLwTI41GjKBbq/OcPSI1lZ9qNWv1a7Vp39rt84BAnFrJb4
	 7STUX29t33pefeOiVgxRlqMayAhQaOYBQCjcTzqsd57Nn2871M+CZPSWkuJMU1srJe
	 6tX0PQIw10JPIS8Rr/914O1fRyzrGXLFd75yb2H3XRkl/OdftR/IIYgOe4K7f0EpBv
	 6UyydrtHPBvOEoNyx06iH3pL/giXfElO7bISPezQ4K9K1qScqwiA6tLnjRfr+yFec9
	 YiSNVvgGb90Ss6hvzqzQsMeAphUjQWd+sBRHm8Pzaon2pQV+DfGNvlsa+fcBPu2PcO
	 UOOA11P9QlvSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F5C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755123369.1211.16812624627798375236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efefb81a8f39f3a481972f015dc33688bdb2a910f84c6cd5195acd8ec9f0360d
Date: Mon, 24 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787551233
