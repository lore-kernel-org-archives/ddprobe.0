Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CE2353A7A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786695037; cv=none; b=Lo3oeD1nP3G6hajqEO5q/5iVNau/c/HO8TfrLsWqfQEq3fU+1BVzYsnMfK08Ux7kVham16bZuF55CVqPZQogH9f0LkH2pBjt+f2n8uypB4GxBIfRe3oEdrJtsdaqROhFMPWhtNDUUvPgmFSsb3KCsQ8wrbJotCMjwoJlbqIqp9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786695037; c=relaxed/simple;
	bh=m7k+2v8aB9cSMnRJKTgyhZNXXu/irzQuPZ7WL+CUyM4=;
	h=To:Subject:From:Message-Id:Date; b=LxeWdfLYXsIWUd03XppF1eyC5/8bN6c5IT5zwARR1dKK1ftoRFQ3hJMWASiWLtOu2i52CiD1rg8Gw2glxFZOhjC8eCNYqkphbnYaFRABgTOqt2UI7j1WNrsKYVypQoXCYTdIyZh2NGkOiyocTovVINDir8rx0/Xb1UNdzkqthmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2Qu5+5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2Qu5+5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF1CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786695033;
	bh=m7k+2v8aB9cSMnRJKTgyhZNXXu/irzQuPZ7WL+CUyM4=;
	h=To:Subject:From:Date:From;
	b=g2Qu5+5og5qIcSZ9h9ZKKBktziPSyhbca9yIbf79x8KXZg+BszUal41GTZ3S7d53S
	 fSIh21Bv/adFYKqSYAWyn8+SoXHgF8ySt+siRGJxhFkdaFJO3C2ba1pyNBLsuLy9k6
	 MUZfXcADUVR+YxuenIadrjL0kNCv9/zoPhQKtNLYh9wse++fQOrNKd9fyFbnBEXYGB
	 2ApnnpRGVO9TmcG3tAtZEqjW2ZzTQnrZIT9GQElkANox2o+56he1gYI9Wq53FK++1a
	 YWD9miVHZ2tYOtjkMwnGV2oYkFS4CcetX0tYmtVlr4E1RX6Ud6k6ko/VIvUvuNELtF
	 s9KWeHp3AufiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8578C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669503368.26117.8655840210389498163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e35b28dfd3f9cbe001b362244a3172742a6d5cbf59f7d731dec797dd4bb3f48
Date: Fri, 14 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786695033
