Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5FD38DD3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777678654; cv=none; b=DcF4V3hsfkUH58ZWwRL3rbwMUERoSZdtM1sjLw1ABGIm9cuLFmrDhrZQU/t49D5EpDl3+j/JKTPsqWjrM6qxk7U0L1M5C8rNs+rB8LsWwHs4yLOyE7xP1PEp9S0FiOr7OWdDibJ1ddXGf6QoPFfPKD930Nm69jhixxEEjMPTqTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777678654; c=relaxed/simple;
	bh=Obud/ZhXFXuef2SNQnQ/XSUdTFS9+BI+zs4c6lsGVnk=;
	h=To:Subject:From:Message-Id:Date; b=pd8mr8MmeeY8WEbNeQEjlRdN0V69pBTAlWr77SP2Xsc2+T/1LZEEFqJHkAind/MTOH9+WVe9pDqMCEUkBq7Ukj9Ac/trqqJrGrEmFD+aUXY7KW7h8k+hMFqttJmfU5cy7RoFxhGyH2dq0hOPYqBXMbf/Uf7nAOzI62GSnrKzBUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rexRvVyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rexRvVyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9485C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777678653;
	bh=Obud/ZhXFXuef2SNQnQ/XSUdTFS9+BI+zs4c6lsGVnk=;
	h=To:Subject:From:Date:From;
	b=rexRvVykqlQmmK2hw1aF+NND17ZGWz3jpX6jY/IRBDGwqQMW/vfx9JZLLGkd9vvE2
	 CpVgkx7iL2nMLogL4qSFJiT8/Sguvs2FEh+9QIXddGpHgcXf84L2EBLSztGTTzOOXB
	 MWBr30+OJwWaRUFnD+RGdLLMoQqMorUvA3xov8P/lbjLFDKMahwcj1bpNQeWLsZ+Vm
	 iGlSAgZzAE0P8PsVlwhyUuJqbsZye8HxD68L/3hx9fd/wLIq9EZQJOSAWN+QqDbO5g
	 y+4xrApoxPF3oC2OltQyTPx2O1A4vyOLDb3tKvrjVCHqwlL+zImXMfwObRhEeWwL64
	 xFmwMoHqLEGxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B3CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767865368.4173.17511832251331341967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db809f42ca428f7aaa2bf4aaffa84d6c732503a133eff0c6812b68059c660f2
Date: Fri, 01 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777678653
