Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A72539DBC0
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790692235; cv=none; b=e8ZmAcB2l8bLEeD03pPFJ2oJTLfUd3TV4ifPs0ovjdHQG/AlNjdlfe+Y1xl4qWYF6kbq6BfvKIiX4DeWIoZdNL8IHbHthZU9q7JZOEcljuKJu9V5KePeojrz2E0PGh6Ke9c9vvAA3UiTLsuka+E+DeIE0DfGZWm/gXZ5CrfmFuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790692235; c=relaxed/simple;
	bh=F1UkY4ZXm9Em8gf7PpNQSPIcn/64u/sdaTo7FGZ1KCg=;
	h=To:Subject:From:Message-Id:Date; b=HEWqWv2ZOFXKKDmrcrzLZpB1rLONYXUipXfNeDUQiuZjB2r5VLUx1FcSDTdcDuDEfU45hmM3cMN+EJ7gUaeGMMLBP6dY+5aA08YSs7ueM9lNZ/jcKCrkAtVSpdD01efwNUKIyLSZ3PeUeZAMCuenW2UmirjtREahu8aZve8HMpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR5Qhteg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR5Qhteg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB51BC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790692233;
	bh=F1UkY4ZXm9Em8gf7PpNQSPIcn/64u/sdaTo7FGZ1KCg=;
	h=To:Subject:From:Date:From;
	b=DR5QhtegkFrHhcB87UASZR3XZhM3qa5A+hR6Nwn76tjftrXm2d5FKYKdZxtVjzisN
	 fX/A5I3S7+/43qMJ1JHgEIxJffcurhYWVjwR5J1RpQL4WBizRfbFiTqbNnLBOQZrRF
	 TG1jNYdHCcnzShlmHWpoqW/qzvm6f9yjK87yyrCr84ISe7ZRoXCKzfe24vJB1jwznW
	 HBJtZczYpenGvzjj5WXAgO4uzPcbyt4/8es9+VOF08yZJCDc76Z/M5NXcHKTilLxmO
	 53aVkMScNP/IbAFcW6+Buqd+5qTcDygdp72Ct+BpItdjJwTp514jD8z5l1oJIOVJcl
	 HymBWOMqu+BAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB050CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069223369.22601.7355413547415047492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8d7a1680aa9c65331d06db3de82816bd4081e156a29577c4491bcddd212ff4
Date: Tue, 29 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790692233
