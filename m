Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357AD16A38B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721654754; cv=none; b=NuFWYmfstQ6Hbhp3lL6SSkaRxunZbxYJMg/e9ADAe6FrERa7doTu0/OdIoKAew8/SRsrlMXkPeiWbGprp10JrWV1k5qT5RnWrjmesqJS6BG56tO1O6aNTlHsR91rDPEBzutZ+9XBFuTtOCMrAxJBXg0Eqnta7XgFmlhqRqCNbE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721654754; c=relaxed/simple;
	bh=P8DEPpYMZZFWseKASkb84WSwcZPz+/pJtdo0vMxCayc=;
	h=To:Subject:From:Message-Id:Date; b=pSAp8r4eOrldRL6OoHzzZ5Fm/2iaR9q1klvSJiyae5YKsDI1qFAgAefOsAPrz62nW65K0Wq15TMvL99eOWjL5QThgp79uLfJyBKTR5H3zh7KlsrEbudpMkBYNAud/OrDQVYu4xnRYBN9KL+IoZGJBWdzJtGY2TRXZV2w6+6ucDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6ZIN+TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6ZIN+TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07D4C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721654753;
	bh=P8DEPpYMZZFWseKASkb84WSwcZPz+/pJtdo0vMxCayc=;
	h=To:Subject:From:Date:From;
	b=F6ZIN+TZk8QrRGu5kcKPTO0mSt8UDBsmLbB/j+ORlqngWSv4nACWAMP1GyG/qYqs4
	 IWl8Aff1SdKR2BIqcIGiR3B433Luw+pphiT99pwi2YIptz2pzpx8cCdVMQ74UGYcgG
	 +E4kCglgNH1QB1GWt7+lKJbUS87HlcdWY73L0PCfOgmB9nvbidR97WfH5gFyF6WpVW
	 iLacfIoyq/71d98lgrvmxq74H/tSoH4I+o7cVWPxFSLqTphTLRRS0L4aXrGeZ+GHTg
	 DyrxK99tcjGShvt3DPDA401TugUP/61aeHJ/EdFHm5xKMRMOOBWNMQEZX79IJUHWsb
	 mznpw8bUTSfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A581AC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165475366.6950.9784204471762553214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5b03a72e743232aab61ed32f4b3c876a9dc1c6fd9ad18391af8f88b1e3dfb0
Date: Mon, 22 Jul 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721654753
