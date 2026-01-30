Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EEE1AAE13
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769738034; cv=none; b=bL9GPh9RujWmG+78UhHs15IOkQRsi+j6x1lgUls4g5I8VmF/INKu1adM3MHVCvr4x5FwLHJqSaCKi46s6W8JbJaUfgDrPaC2kgh1mVKgLrj1kwttteEcMBfnxhOAU8wEHIQFHGaEdWaEACzbCi1OXZx/RdpH+5ZVzmTN2HtsHZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769738034; c=relaxed/simple;
	bh=OS/DjEUQxH4WHzXGVREfAcICE0pITCfAHr5ce3b4BZo=;
	h=To:Subject:From:Message-Id:Date; b=nVYtRwjQymEV0wuICkFVwxTsItrXtxvH1awmBWi/4MHUr9C1CCK4tTX7l83Rac4KctPuGc/bHOY5cmcTypl7Ll1lsMbC1JQiq4Qym8+YAQnmpdFxRl8sYiymcI3Q1lnguUtFabDjUNiymVumWC0+se+8flmfY1C9N2thMcUr5GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyEeAsWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyEeAsWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4471C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769738033;
	bh=OS/DjEUQxH4WHzXGVREfAcICE0pITCfAHr5ce3b4BZo=;
	h=To:Subject:From:Date:From;
	b=tyEeAsWReyB/zuXZpwC/vJkxcDBX3GdoiccYNC0mbT6x+3DJiv8GKtBNZybwjGcT+
	 dAnT5l0nC08F5Q8aFQAZtGFr/fPV+0k02y9BMPv2eoPRlQRzW4tpLPDYc6+GAvBD+P
	 OkdUvJXGtT0YSH/Ts8Q9f0Lt+gsuaiLbJHkejAaYIpOSNWTF/OCrUAP+Cbtfzvh1ME
	 BrvWnDxQ+Lr4lVE4Vza9RdLF/2KLMvXOXlBumiV5zTtQk6gk4IRUMCkWgyCSj/KGye
	 7/11HXOVJzie46/1nUh31dybNU8QvnfTs3+DQKA3d0YEUcm6g6u77SG40InvTRxC88
	 A9hs5oPWOZPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216ED73EAA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973803358.30843.1053786428898925511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f76f254d170ebb08c03c0bd685ae80b4935d73117915f55718eb9f73091dcb
Date: Fri, 30 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769738033
