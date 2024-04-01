Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF72D171C1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711969696; cv=none; b=QV4txlvut+kX+1/Zky+UiNMPEkdbnuMDjsOrIwJeBnrQt+JKzFD3VG+1OLy076cNfKcjGpk1qISPy+NzIU3d4vZZgIPHwkF+6L67r/Em+FkREKRboz4VQPRC3OIIKZFzWUdg5atDqJbEuorcQmYU7T3orTTKvLVd8lVUOywmGcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711969696; c=relaxed/simple;
	bh=WjeWROBAlpk/ga+4ttMcljYnCzihUxh1ut/SXGGfh/o=;
	h=To:Subject:From:Message-Id:Date; b=miHv2ju/7F/adq3sJ40lJrEDIBIeFMP2XU79g6LYwdeGt3V62P3jmrRipN1s1C+Kvui6TvNBuEhbPELxF9CqDnTKyqQGQPYt4Qa33YEoGbDLbBiiWjF2YoPhtu67/2BONAb9ZunAy/KtTij15dqw97KAnyw5U8SHJDThCJ+We+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxZfDkzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxZfDkzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D32C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711969696;
	bh=WjeWROBAlpk/ga+4ttMcljYnCzihUxh1ut/SXGGfh/o=;
	h=To:Subject:From:Date:From;
	b=VxZfDkzOpJluZ/27sPzNFug6zdsTMCntMSiyaQoDtAkxr+1HUkMvy+F6rIcPAJPPP
	 Z2KZku3Bw9m25RHop+lLr/HKNCRor8ZHVqRJ1bFJqIQvXOCUB4uOkXVOrPoIf+JKNr
	 3XZ7swY4tDGXUkZGCs1VMXA6nEfsN6jGG3AYYLmaWVL9UAaHZOmbZzjdvkSct+Ixg3
	 i+xLNLf7P2vl6/eP3Bd1CQpoNKkeO+hRD1zqQt/ncPoFY2wEkUvw/8P8fwdObJ1H4t
	 erOqboxid5MxJ88CZ4+2XcIWW54GOlqXfUJcbnC9a06UbR2ymrXO1QCME38C+v6XZn
	 Z4xFDbkwg6lkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CB1CD1292
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171196969641.4989.10821802325294023565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fa2ec18e939ea40905121d27cdf78408e25f7e36aa8be08cc10ea9d4a24d64
Date: Mon, 01 Apr 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711969696
