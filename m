Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AEC43624B3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781320594; cv=none; b=kUSCQLtqJ0VMsFiBFjmfchqPkwkxWXiJ2NeCd9YbNiKOr/yBw2QEQxkhXohM90rSvsJEQUddSbQdY+o80d9MCDWTgsKJqPO4HiNmXk5R4vSL23dzvV5AylqxgMBnLElsG05nAIbmk+xi7BYU5Njg6USVjPuKkz5nmunjSnmN+u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781320594; c=relaxed/simple;
	bh=FUMLDqAM4hQNFAXNTt7ndlgMIktowPqoazitW4MHIcU=;
	h=To:Subject:From:Message-Id:Date; b=r3/FyMXLEaO3X0NKqgRgPA9QAze7XGDjRQ4XRV6sHt4VVFA2u0gCXwRr3NZ0GkEJuxiAftWZ5owzRPgMujFtEo4ixg77AmbS3tttyuNfHuRWMFri6hBBu0OA2BxqFEj3sJoU/FQDA7+5yz/jrwL+O7NoF19/p0JrbIrhoTBuDKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0I+slIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0I+slIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C639AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781320593;
	bh=FUMLDqAM4hQNFAXNTt7ndlgMIktowPqoazitW4MHIcU=;
	h=To:Subject:From:Date:From;
	b=e0I+slIUN7+x9T2LANv8g5mL58DqmD11iI55t0a6tqkowvLw50X6jaU9yyhy0/I9w
	 3t/JaDIXqWLoQIb3/vAzbT0PJc3BxsUuZobHk+hjc8wvW7JLUoS0hC8o1e5KJXxphY
	 tyc+pVlLoMy62l+2aCFSAGFiAGdg0PW/0fHWTROzglQE0l4absQT7Kbbwt52p0z6Gh
	 0uMn8fXVSdT0fTSvZ5bHiPL9fW6HIEcyyk0/SoesyMQLXrFuKAwNF68lfR+sL9rmII
	 HaSnfEPv/4oy4vRBs9Lde+HSJ2By1y2xsRob3C5zSQA+gOWo4hmX3v4I0gsZxgFr1Q
	 gBgb4alUWD38w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF568CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132059368.18807.17197036254752768471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b99217539ec6ff2f7daf5836be8a6a362987f9a8000a49e94e51115af1703b0
Date: Sat, 13 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781320593
