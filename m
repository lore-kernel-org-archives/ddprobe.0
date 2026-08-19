Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD63364941
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787116234; cv=none; b=W0yl5yWzeG7Susei0uQkSYbsfwzlsOGLWp0PlT9yuEExhvr8XjW2CW6py8FMQxt7gBiV5trfij50O4qz8bSE9HWPE9KL7MURP3g53aebKkYA6ZZHexMmP5Ep9lAzbl1A5ckeWyBfRjLeSqoKGYMWgC99GfDUVtPLL2Pu24xcwjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787116234; c=relaxed/simple;
	bh=l++ieIqn+lT/X5lAky1Vt2E6cOusnX8gxj9vmmwgva4=;
	h=To:Subject:From:Message-Id:Date; b=qx3/o4ANvGLAx3ttqbflqeS9K8m+MTTgXxR9LyshReHuqvwvqZOIeb2/TqUpuKgmRCbesKvNBYbE6dA/ZZdi3Ntcr20otrdv1yzRqx7hRwYLzaMPmAadndgPztExsgvQKowV0DMA4y1ocfo2MgpmUPfZBroVW8sjs7xSX4UO+qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2QduEqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2QduEqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D933BC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787116233;
	bh=l++ieIqn+lT/X5lAky1Vt2E6cOusnX8gxj9vmmwgva4=;
	h=To:Subject:From:Date:From;
	b=V2QduEqVfL3EbKjmD6NgP7QNv+ybB7Uvob9zYiuBuf6vZo3ZVRE1dlzl8hibCVpGP
	 YdcBVFKccUkTqcTdq70QhUwlfpj5wIEL9xmVRgo+sbdoNg4qPmL3WBWEA3DYhj8GKO
	 JcU1Otko5Xx7Stj4CuIUnXiBsaTu33Xx9m0F2gQKL35xbbzz3awiBHeKWjdw41S8MR
	 PjMquDvS95W/JXzj0WGBXH41slpfDovb9BVKdZKtyoKmYB62l/M/vjqs1n7INvJV2+
	 yEcxe7UeOYboP7CSZc/tAOXyuQcP/EptL5o8iTILoKzlFA5t0FVlB0cxiqFyWvgKuZ
	 Ljwm90RLEtMIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD113C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711623368.2149.1213740703027264346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07622cbb84b7d4857e158c783bc23c3088bc53364db39416a8e19be2031d058c
Date: Wed, 19 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787116233
