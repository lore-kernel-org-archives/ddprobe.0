Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551B01E487
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 19:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715888543; cv=none; b=R3N1DBYEaQJTQpILrp1UJiPhEEr+TDQNo1v6Zojfxb9gD+bY5oVu+3sMGyMjxjuGURs7u33VdVvtAmE4yKelQKXpn5KwJn40wkBfV0vdXYT4c8mW+6Uk99lvwjRgoh0N+U6XSfN2HxaIQOApCaA2Xe2KBNRisNLbVchBnwMyEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715888543; c=relaxed/simple;
	bh=ohGyFsoSM1mzI09bxrTXoEbdsdNh2avtCeZ4TgwV0w4=;
	h=To:Subject:From:Message-Id:Date; b=gZDzHayFNDz5cBVah2AEvOHxFalQxAqFQ3SRiOgAwTe1+j0/1nOaR2Uloj1Un4aIdvhFbQkqw0o5ByPAszHsnH9PaL9NiGYu4Un5nFr2r3KxuDDhFtDY/jWhZpPiyR5+lonPsOb09ihWuTvA3TBAtUZSRGhvqGQfJSb64Er4ozM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIY7CEbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIY7CEbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12BEC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715888542;
	bh=ohGyFsoSM1mzI09bxrTXoEbdsdNh2avtCeZ4TgwV0w4=;
	h=To:Subject:From:Date:From;
	b=bIY7CEbNUxPTgV6uwkWAKGlZ1cR0l9G/eggVC8jOfKda+g7xOmZYhhEJ6+Yl55Gid
	 Ud3VNK1NImUBr/HLbORba6EBBGvOm0pVudcuzkbeckUWBxz9uBFDflFsbiY11jx9Eq
	 x7B63/BFDdF6I2dW1FdIYsI/FP0y2SwWsjUQKOYNo5UMRNA6UmR0Wt6pxO7otT2ciO
	 IUzZdweItApV4E22zwYzsmsWaBEb79DW8wnkvnLrkXAMKmtwl3iM2Kzt8Ula7CJZ83
	 8Xq65tVW9Rc59SIzlSrzAZ1NJ35VK32cRAkjoxVnSn5xGUi8j6gQEV1sADIryo7U3Z
	 DuuJbFwGeETIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBBBC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171588854275.3091.9631336571267920487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9890ade6ed018252c23e69b31f08feb0e26410fe87cb7ab349365841dd9553
Date: Thu, 16 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715888542
