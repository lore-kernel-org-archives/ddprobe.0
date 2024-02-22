Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57613F9ED
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708608497; cv=none; b=KMGrf8v2Fvd/KC5f71yXM3J9vjHZzvl5uWBqUnqsnd+YRGG6C9LPS2CIarqT2cldHm2J1ltjcz9hlig7kd1uaNsn/WSzSEce8p43ZQ5g9+yvHSgZcZYCk6iRJLlSk1DsXr5JjSv0fGE2VON1r5Dt0hIFJ0xQ2PSn03xJLdMsucg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708608497; c=relaxed/simple;
	bh=jnLDxGTPSvsufr54g98goGlHV8pAvaOJc/XcczsoiWM=;
	h=To:Subject:From:Message-Id:Date; b=s1gyIQXDJhZobB2xpEcyXbtXG5dtJrfvBIoLfYEyuxptSs5uhgw2uoKoGuR1fZpoXyWVCISeW4zpuJSnMPxTyGkZ5G105+xtSCFRdArP83VhPYfBICJ3RXZ0PO1/cH8+zFJz/V5U4yfMGhgWQTeRgvccWeKBBfB0OpPFlFGu4aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd23sk0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd23sk0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC6EC433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708608496;
	bh=jnLDxGTPSvsufr54g98goGlHV8pAvaOJc/XcczsoiWM=;
	h=To:Subject:From:Date:From;
	b=Hd23sk0BvoKQIWdGFPuCS0TZw1vLc/ErIMw7n8yauFxdo+7Gnx4Zl9+rn78Q7n8LG
	 X0hYM3M1e6Upleq/mkYVq0koiKL5tFP2KAY20w1uFmgu3Y7kvG2jUUxOrDy18v8SiJ
	 pjORVnfRVl9ogxkG+MyaNdd02i05u0zYGkAJJ1cD61sKwoPwU7KRx8vdms5iuCmgIc
	 ZoHVZ3VlBjYMAJJb1fmW5ElJifl3PSXzCkwHYcIIsUP6L3LQyvZ56e1rid7mLA8iHC
	 D/rrooZ3ef9TxFeRyihZXxxgqblEZM1ky3JfUCs4tJFFsIvKEODhcYcrVHQHldendU
	 +nfvIDWrp6UOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B0AC48BF8
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170860849639.883.8160444291068781017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5e23a828a1519f74eb5ccfacdbd11248e8884ae5d29538c8351ebf82ff8888
Date: Thu, 22 Feb 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708608496
