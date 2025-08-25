Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A020271475
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756160994; cv=none; b=NyFXd73rN11/3t//LHjaUzsQo/OOz5HfV8WSTySuBIVcsFMGiG1FjDzw1XwegFz99MCviIj3JbbDU7hDLPzHUiV0OthkMARRxWPckTTQG5vSvuZIYN1NQv82jJ7gRW0TRSzi4AsKbif9k+qoR1SOQfeI1uhLrLfu2gr6amFSNnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756160994; c=relaxed/simple;
	bh=Z+fmXwFKrRz1+i38lZl/Cdq59RbeMsb9J9ZQOQmDc9U=;
	h=To:Subject:From:Message-Id:Date; b=d5F5Va23qQq8jcev74TrRcs6a7+kc4Ai+ofA7WwcXLPIDXbZwqeT1R3xT3b7hRg8sQ71x+maQ9q+iQpatG/zr6js8NCucbQt3IHp3L6Zg6qklf2Agf6/u5rl+2vqls02CbQ5nYnBOv9aKEt+dtZ5gNCUc5S6VONmgyAR0RvJI5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqtEd9Lo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqtEd9Lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD47C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756160993;
	bh=Z+fmXwFKrRz1+i38lZl/Cdq59RbeMsb9J9ZQOQmDc9U=;
	h=To:Subject:From:Date:From;
	b=RqtEd9LoE4JqBIfqlNJ15gfOBhipzFyVxmbTDEUo86XMFTH//1uT3T+msDhr4s8+P
	 RZ+B0MgFAVYcL11/2PR2jcnrnZMApcLkHGP8sJ3VbAUzfOeC0AV6IHH3vnmMFJXS2b
	 vCN7WiOV7MIM9OVhNsIlPrXHMyncRs31gtLhk/PYEObC0yJo1gA+X93QnYfTc3hvLL
	 HTlaMEnOFp0eNmGUG2VprRvv43q/jXDf3OVPj16l9keFhU4jZinMCg5PF3U+Mxl3jK
	 wPYPyZJO4Zk52o9g/19WcH4vqscIxyJj+IKBLqD72Mf23GpyV+6s6Wlrs4RI32WhYj
	 UFo4K8Ub56dJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE41CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616099357.17017.2815939456132739063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651272626b032c16e144f5c3ecc3363397e633d1bd358290308d3554fe6c860f
Date: Mon, 25 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756160993
