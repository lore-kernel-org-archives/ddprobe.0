Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4872770A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777623454; cv=none; b=YgYMbL0BGsAfABnoiePX47IHsAuIiBnlGCd+MJjxJa0JoIMAMwF2evTWyjVv4+Etj3ZnZXJfFRAjm509Fvfh0N5equL1j2JQijiuGDHkc+pZNbmbIrZB+2GHv3Sk7Ygj1XoBTuDs2nyPTGSnj1EK8HzxlwLnrtfLTKA0HgQJr1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777623454; c=relaxed/simple;
	bh=jNqxgctntU6W0IHQbiu3DtWsIfMuiK9aBCyXUToIRjo=;
	h=To:Subject:From:Message-Id:Date; b=jg/swNLEAHVNRi2f6Uyorf7W21F7EQzX/Iha+esdBqfp0qvWirxoqtbVOYMWg3oCaVUyi0m2Ebw3QRcvtfhaIF8RWeFxk8b124ZtRz70x6kOCzsoQOkj4DFj2XO4ATKXytyAAULetCL3cnPM5kVEsKognlY9tA2kNg6pF2HhIas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUck+CHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUck+CHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E70C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777623453;
	bh=jNqxgctntU6W0IHQbiu3DtWsIfMuiK9aBCyXUToIRjo=;
	h=To:Subject:From:Date:From;
	b=hUck+CHOHX2QJVMfd8y4HeJx8ioJmvedL5B0UBsduThfqTKu3iZqWLEmKuhaMZYKP
	 9f06xf80CNVin+tqJamPOPwSp9waD+kGQeeBiVPS3IKUFbOH8K0dCdEcGJlBTqIjeR
	 lzR52YYAF8sfEloJ3Qoz+k1+63dZhhPoaU/6xNVcLyB8+QwTvIpuGHgHTgwF1L4xGy
	 VjLSIsB+6MdA43fCwmLB4pPNRBvYa52TgCRUBmpKVf4NBQErBM69atdsUQdLjRTuX5
	 XzrAzg3shU6pM9h1f/xfKOClJ3sN1F3T1f/Qf3Hh+qJFDxabTjfuQfq5qrzvMT6CWA
	 30dWrS/Ftli2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF840FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762345368.9090.6073725767620681571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d0f683ccf6d8590b95710378443c9dbe2682fff43952c94af5280b17bf3677
Date: Fri, 01 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777623453
