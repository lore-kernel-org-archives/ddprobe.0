Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AD52745E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764496374; cv=none; b=PwqtmxuY9S+5xq1uv7kNsfcEjJqnonlm/xljbkfiA7Uvma0lIMMNSXh9GEJ8or97wMYlQD4fQtNK1iUvDIuA1AdvVDn5k2QVNhkCZzN6JQhN79jQvWFtyJurTiWuRvwmU+cJG11n+jNZyGVu3bP90szMcm8zqFjRM6DjAp6Z4b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764496374; c=relaxed/simple;
	bh=flW4ObUzWfMjP7E7xDiQ6S5SCE/iyv5J60GM+UVPKrY=;
	h=To:Subject:From:Message-Id:Date; b=l8KnxseS4tCCz/zNr+yvPQ/wx803uAeuymQDTUY1H1lILW2t6EOfSg0Qq33KmwWjDEvI+37OIHWUDORYwZSqUIEssq4d+0qyBlaeTm0O6jet3LtbAYQ7Q96iIKU1u98QV28CqpcUZMjzRrMSNHzIC1ri65+b54kwT5HkP8EZNtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdxYr7kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdxYr7kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29D8C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764496373;
	bh=flW4ObUzWfMjP7E7xDiQ6S5SCE/iyv5J60GM+UVPKrY=;
	h=To:Subject:From:Date:From;
	b=fdxYr7kk4BhEiMvrFGXhSeRz7onCjQmMKTLSQJra+xWVfTZmga3d9DissleipYskV
	 irqKsmXy3ExP3qQmpX2WByLwKogGkdslQxQROlr/a4n8f3QhwzbLIPVueE0HYfWAhj
	 +9lvI6C1W719MrFH06Hv41idRUBEUaTj9h//4c+2//YPHeA0h/GwBcbRA7aMT2tEaQ
	 yGSubpRJxmlnThDPbEjwVVx4lK/Edo7z+XEiQiLTQ6qOmGWYaE7aayXuZzo5jMu2Z2
	 8NjhcBuGGtAYbCFEWbMzUR4rcaFKwOelvMEDIcgRxlLRm2rXbtVVf2FrNeQpoZeVYF
	 KCFLmhc626iSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9611CCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449637359.30255.13208235566254339769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f841cdaf51111fc42f86c531ea4787f1a09bc2690861a14d812a9f78c0132152
Date: Sun, 30 Nov 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764496373
