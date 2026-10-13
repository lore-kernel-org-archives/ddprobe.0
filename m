Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B15E367B8E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791860434; cv=none; b=jGzD1rexkTAp2mZzJWnzT7c2OP13ogSsI+0NIUDfddgZUuPHUVIcs3eJHrbUAUq7MZ0drgDRMzpmgoy2ZMU71Zm+1+yp9rI4jXWTK1/5w81ti/d+sbE/E7TZefVnd+8atx69OE192M+rwnLJyccvYNyDOZsCXzHi9YeRO+wKxts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791860434; c=relaxed/simple;
	bh=nNhg7N4BXTtGz/W3TCYv96lOq7G0jprXoBwxWLhUgQs=;
	h=To:Subject:From:Message-Id:Date; b=jwYkTQ/zJsSRee61Og0dqDlotV+VBJUh4L6voyaVcLMQpiKoh5fpaaEAviQQ3uXfi3403rdIdnBfXP2PSvVOzcWeeUEvFMf+uDuBDsIUqqmeSVYzcZZuUxiAGJId2KTOqPZ9g9MXxoR2nBA2Yb6lsve7yMYKCk4Av0bLEWU6W04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSzslraq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSzslraq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC783C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791860433;
	bh=nNhg7N4BXTtGz/W3TCYv96lOq7G0jprXoBwxWLhUgQs=;
	h=To:Subject:From:Date:From;
	b=YSzslraqQ0IzGIGUGt7HpNSnVCUJL9rvjIOdrEtxXgBcpIlvmsVBSADSCOfI5+4+T
	 XUA7QMRvrZlGgcJQH0Zb/P+ofYVC/6mbxxItTx6tNdJl/cPu3jnnbKGXSscxaGga48
	 VKGJrjCmMgyfyk8Cr/Ekv5qj+EqTGKphxMmLMj2v63ZGgzObMVih5ytwY5jsr+xdzJ
	 8IO2DszCFmuOAs9dDsk1N7cfizlHS9DawThGzikv31udT5KRykIENI/MTibGO4YSWn
	 +twVGDltw+NA2qjb9PkblqJZzIXG52ICujmKYLDAAP+to9vwCdglzCjTL6CVaSoYkh
	 q186M3TygiOLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9721CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186043368.22289.5972726597635909263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb128c7195c0790f2777b2688de90079279573fc05574f6150edb1629c808845
Date: Tue, 13 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791860433
