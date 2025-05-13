Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431BB2581
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747172995; cv=none; b=fb5CQUYY3am/UNe4SswOvS1Zf/Ow13tdsKJmbjuKIN3LSoocbwPWW+KkSFjTw786a/Ty0nRe+twJKkayhqvOroqi8HMlvwZEBAYwhdD2pFqG60IX622FtzYC9nUiv0Z3/+pMaYlFYsAp85OPv307nPJAc8XoZSlShNzXkmuho2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747172995; c=relaxed/simple;
	bh=sOFl+MJbCrLJ+DjQpwdU+Forq/OxUdtBCOs6WKcKmGw=;
	h=To:Subject:From:Message-Id:Date; b=Zg4Ige8r7kgUwDBNUv8jm4OyjE2A6cu4apZqdOz5GbW16jB2uKfq7WGiQRAt4M+WHyl2Vpjvo7XIRvUqXfx4yKVGOJtdzThPRMgcn/dCyVFS/WOMst3qT21yHV6IMAZI/3xfBRadkpcT2GYYIEY/bYbfCuAdovT8OmB083LKtNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ri1Grztb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ri1Grztb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D81C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747172994;
	bh=sOFl+MJbCrLJ+DjQpwdU+Forq/OxUdtBCOs6WKcKmGw=;
	h=To:Subject:From:Date:From;
	b=ri1GrztbnmS9cqV6NGrJDbx2Rx5lS6etC/hUBYkEyM9qSXjqeL/Lyg2QAhwBvxLs9
	 rLL89pJz7XpxhrPEaKo6pOdIxO45RyeGU4+IxjpsOInq1RgYeDwjPsOPzzSKLHKiYR
	 YmU9qAeQazgV3spm074umvtlaigsu7fnrf16Ft2s9FxT/WaaJAoWxAs9+rCJkwNXWP
	 twsHSlgN+v/03wvWs/PWlr5Q2fM/azKqkP6YLK0O4qmmmsVp1zFDiax2WbgZiwdy6M
	 2Jv2dy9nF052nhTtNQjVK9siJrOs2WrYWiHxF+l1eF7LW65r7D8P0LIuYrZan69YLz
	 tB6X9TdGecZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E51C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717299357.12892.16410003088501728505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba982424cedce0d0622c29fa13d40fec49ed069ab4e276bc1bacf7d70fb55122
Date: Tue, 13 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747172993
