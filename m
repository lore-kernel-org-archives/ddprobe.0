Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D04C24677F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783554514; cv=none; b=gf+ea/nULkZwzrgF05JoygYF5R6jYVsvD72PlbmT1AB56/YVVhikIJ3ytI+V0VFBJMa4BvBpZWIUpuq//sl2/V6HPng0VsIBbEmKC4v7QhIV9YFc7UVPZWZRVn4AaRmiD/DbWrjSGksPrO0myUGyD9jRVXPvfEREl1kUpebaBjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783554514; c=relaxed/simple;
	bh=V1dY6pLVTTfPLtQNIL967G+3tlSAFoyIsMI1eALt8zA=;
	h=To:Subject:From:Message-Id:Date; b=ed3XxB9eunabuAF9O18F+qZF9bMtDrTp2v5XrSQWyNdqHphwJijgU42Fm/FZx7URRI+B5e6trmeu43WC2iS9j2b4QNAcCs6Atu5MzVYts+nOhHAlA1L/F3qGFKyEs0Uxt2ArTyHNYgmVY/b0kqJZ7bknxNLj7dRUuDkETY2JVaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBQGupbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBQGupbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D012EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783554513;
	bh=V1dY6pLVTTfPLtQNIL967G+3tlSAFoyIsMI1eALt8zA=;
	h=To:Subject:From:Date:From;
	b=jBQGupbrtUwNK0v9OqF7pCYsKhx532IO5ECrlyubae0BEFKLlV8Jr0LIo1Mw3w5hk
	 NVEEZbloLdLRtUVRMP9+jhsERPDQj5Xlh/RVK27CytP498VYxLrd9zX1JK+zy3sZ45
	 fr3yBL0pN27zauY02NvJ4JMPwwS+a2+yXYaYGVqhGmnwcn+OfCFhshLw7PmtgAFy0D
	 d6eJILDP8a+u5NF2/AgEH1qcRHPgMXa+aw9EPiSpwYPBjYggtIap1NI2rePWcONo9r
	 GYClBcpR8RFybVKZCf7pwY8AGh/U1MNP5AxCgQrwiFew8ZccZ4mwZF7Bfkj/W9RSSB
	 BN9Rwdo48Pyaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB113C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355451368.14103.6062968989448809296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6306afd7215bada240b72fd1536b499931b4992e65046b9c60a888a0f3316e
Date: Wed, 08 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783554513
