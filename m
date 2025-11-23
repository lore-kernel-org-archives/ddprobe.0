Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06A72628
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763912514; cv=none; b=FzXuzxVkNijgX15O62goDbWmkpU+xs5ju00oZpBWeM70+/U467NtCI4Wa0udkmbA64PuLX94ibxpj2yvnCA09Jubm1FyKSYA+SoDM54WXjxet04IqVM4FAPdqkF2Nbaphhi70ANMwX86Ea0k699BCReqA9+umJLTsseaK2bTkVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763912514; c=relaxed/simple;
	bh=Z0au4yAx/P7/P77mns0JLEEAPyTYVAb7pkJGSOMCk/A=;
	h=To:Subject:From:Message-Id:Date; b=kIKFHYNchUKJ/vVB13NmeMIy+D69IqSEkWX0F8OSQntMMiFT3DAerk5vIVSFwFPYwacOac40hbmS/NZU6nyuppTWxLUrGVweIonYEl4yL2awf4Zjs5YjPnqGQfKPRCGY7dQ76XKjt68d+j8eq3iqGNyl5eTuJ64MrgvvlRdK9rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyVfc9nX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyVfc9nX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9ECC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763912513;
	bh=Z0au4yAx/P7/P77mns0JLEEAPyTYVAb7pkJGSOMCk/A=;
	h=To:Subject:From:Date:From;
	b=nyVfc9nXKMetCO4/JlbbKSUr9gikMtsBUCX9UVHjchft4y8MAXiRYhN9FjMsDr5F7
	 t8VjZSvpY3GjsPSCpzQsjdNeL3sN6AQKNpycfoos7PfzKeDYM+QV4VWguSuLD46knO
	 vTw64ktoM/wWmYkJO5MYY4FrcqqAgIPOgeRxOJujqUjqeuePtORFijmAAWtwG+drwI
	 WrVy8NonlhvSlLdWQ97Pxojdh4yhuL7di8FZKiYDax3YBZ6Lifv3x/JrbEhQrIxTgt
	 Rq+9e9Ljvmu3y268w9/GceGbCPCB0hSCyUhJx1DcTcAlcIFf4tZv3/k+HkpkxeY6sw
	 +3lzHOiB2oOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE6CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391251358.4356.9578499605985680271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1fff55daa29b1337dfa9cc06ca8d6230033c8c8053c4fa9958ff820599bc7e
Date: Sun, 23 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763912513
