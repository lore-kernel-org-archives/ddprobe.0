Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6818E50276
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791064234; cv=none; b=mR6UNyMcvbW+hMgSM/XU2H9CW+8GwUdhgn0uRg8RD0qoI4hOtpdyO7Penk1xSPz3/bLH0FwmIaIwJDLe4a+68ifAnEdB17SydEWH+Om+LGmz4JLAJuuIpl52LBiZnZSKKWxgAxSJtug1p7VkMA9zyqLl4rXghrxTCR9kTLVDNbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791064234; c=relaxed/simple;
	bh=FFEho/ADMLcdBK1ebTm616QI33gSwhXDgQPPNkykvmg=;
	h=To:Subject:From:Message-Id:Date; b=E0ytPV8hzbTP3DpBYhxD/4Ft2CIaWaSuEHAmzcmEBcR0iSQZMY9C4UjBOLlCZJgXiMB7n5yCP5x8FKRpS02rPvEgp4klp4bmbkP5cU+yWjYlVFDpY/RZvpKODANdzDYSzv/camg1GmmI3BundAXPbHVeit2npkGBjV0sFOWKrsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1FeTV+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1FeTV+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCDCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791064233;
	bh=FFEho/ADMLcdBK1ebTm616QI33gSwhXDgQPPNkykvmg=;
	h=To:Subject:From:Date:From;
	b=i1FeTV+qe5Pham5bMW1aU/KYbrnEeep+etwmNbtXKzp7C/QfKkfg+fYIbhVKZSZW+
	 dghEQKoKn4kIYhEUpIUOPcyAapYvvQ3Buid3vIpy2iQCxZQskMRzIRivR7OiWLT6ur
	 BTqAvABZduUXhsS/stT4Ls9CZ6y2amIgmHIJ6N0AAiTSjtM/3RPY1xTePwJLR+zAXY
	 MSCVCWO4KIMjcDV9ErJJPwWTmVqpBF0mK31p2Y2IPnBE7IcV3W9vcUdx08VXsIdv77
	 6zs0Bwkl2gSsarDbl2x9/WHqGBjKEgv85YWlXxpCwu81NwqvsA4rgvkci+VyjMtYR9
	 NruSZYPkUWRQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B699FCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106423370.7210.12110382558785032347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958470b3981d4f5276fc42395808b770e0066b810c4710e21b9f18df512a2959
Date: Sat, 03 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791064233
