Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5882C242D97
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781426194; cv=none; b=VZHN+LzkkIBnP7DifPYFZmL7VfKQTs9B+OnQECJTQ1g3O/Nv540VKMBQAc6cpfMHYaYmNJ3gA8j2RFx0xnxSTMDroBTy5U/2uhVb2W585vtotxXQ/LfRHVHCPQHCkWNCFd6OyrRWA/71oMo+dIZob0HqvfxltbVaDjnqxQ1WECQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781426194; c=relaxed/simple;
	bh=azF/dw3bmI2JYEPS7poFkcBbKp4zeYDbTx7D/y++kjk=;
	h=To:Subject:From:Message-Id:Date; b=u27JBuLWVPBNuLxrG+no7bmuB2SMXOJl4AZrmohSfDUEkJ568wx6WnWEZtQia0lee9VqKeMXyS0VyXY3g6vKR/R5QlPtmLJVMdXyf6kl8Ev4rfLXvPHZ/I3eKwTSjuiKdp937+/kdQKxOBrj2PdmKL3SpbxwGjpRphOOfgy7Pc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLO/wazo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLO/wazo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F6BC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781426193;
	bh=azF/dw3bmI2JYEPS7poFkcBbKp4zeYDbTx7D/y++kjk=;
	h=To:Subject:From:Date:From;
	b=lLO/wazoXMCLelGpXrHTC+My7YFNmvFv0h4b+ATZ1knPRqtGtWdXUrhifOhXX7IIP
	 EYv2XvYehIImZUL3TwxdKBeW1rqnOiUeCPYU/NOCBZnmG5WYtg96hxAlntnMcL/M0O
	 BgOWECEfQyffNZ8xMqXbjzieM90/X4an3uU8ABRjCNHzDuqY2zAVzvKRwlTDMna8SW
	 KZw/vusdAu1MyXFBLzj6+KKMXPtwA/bFBHUjxfaB+TbzpglhoFzs1wwTXsAwbvIuOg
	 RB+5BHoQDjIApwo+TxRw7RaNMoaLOJ+1D95KiLfsZMN4mjtqL1j4ZXdzS2Ame+KkOa
	 XiGjT9qRAuYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6483CD98D6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142619372.15885.1981254972835173193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e50bb59796cc0a554236ad9f7beca3bb47ab7254969667f73d9aeb4f3f40fdd
Date: Sun, 14 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781426193
