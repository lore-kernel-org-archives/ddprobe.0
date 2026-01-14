Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8EF3612E2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768384434; cv=none; b=AwQSm4aP0yodTEaG2pjD3wR88GC2dvXe5rI+g9zkejZlw0lJCnKu07raXrY4Cv24dAFg4LjV0BgVx4dKxQF4bJ8c/aXGGxKGyMs+r7oEybeTGKtSQRHmDLyavmA4ZfVeyEd9LtYsOuzwl9sknzl970iEi5Hg6OvSjg+2XHuIFNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768384434; c=relaxed/simple;
	bh=TQ59Te0aydcbZjAnmcI44/ypg041APfsLpgaN4NdHek=;
	h=To:Subject:From:Message-Id:Date; b=lzR/7leSZ/npBKc3JmuI+yyu0UsmS4BiuFwtRiTYsjuGGkHDPV+AnILSufNXMk0HzQPgto34ZqnLfRQhl2vw67gyz1bdlHq2VfS2PReQChm4iRAXfKjGpNerfyMWMQ8COzQYDoqwXDggFNaMrelL7AVQne3KYMwsFAnAlw4fFws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMmawkNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMmawkNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA5CC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768384433;
	bh=TQ59Te0aydcbZjAnmcI44/ypg041APfsLpgaN4NdHek=;
	h=To:Subject:From:Date:From;
	b=FMmawkNKuSUX+rEE79/URxIREWva+EAzAAGPPUAA2VnT5Fvxievl5kp16OBsEltc2
	 h/asck3MYVCglwk2M7ivPJLX0Q4JT2u2kiN93KxPk8pLbJHb0NoR1vurq0/+Vq+l/C
	 ccevv3XLNQlnNfiqzfP3H1y8uZAOSpjYeUHBBYy37NsNEcrpVM3CMUKHB3RPMX0a8H
	 KdGawEWMXtEP+hz2apLun43Eod/kU4sUBi304CFGdvKMLS+AhfV2BPQVcyLYxA3yxz
	 0g0VQYvnNVRYgqNADBXpClC9Q01YP05sgxLOTkaFsdmbgkNuC1vvaNKKK02LNii6D7
	 FhIhpG5KhYacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90467D31A3B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838443358.28750.8728172948314371772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9125f9069d009cc6468b9b69a206b71d1c89ee15440f6c32655c6c5fe3daa0bc
Date: Wed, 14 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768384433
