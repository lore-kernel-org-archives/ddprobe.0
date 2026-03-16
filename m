Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A1C1DE8BF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773702293; cv=none; b=mcjv0CtvGMzVkoZv31cEn2DZaSIhOWtRo6avo/V4FmPvP8PrmqZGY1UosR6xMjA3am6s/BZgtZRDR8AGJvXQ6+40k7be9ZTdWMu2f5r7SNVDFXJEaXj3ZMVcqf1UgkJDkM0SY21NvPHVJD4O94LUtthE+X6ceZDGU62K8s/BGhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773702293; c=relaxed/simple;
	bh=YcxGdvFfEbmFf1dHd3zKnBIXVvhGgtduLUeA8JzB/9w=;
	h=To:Subject:From:Message-Id:Date; b=BHQo7GE+Kv3voKMGNLJBYstl6WATf3DbRXKWHdGuQRhwTGq+pGloQGWRoolaCoYLTmxpACW7IkbkwkGzEmk+GCHEkBmrxv0Og19fgMp2dgukuoXLBU54CjcqPhMbVDKpg6pNvtXrkySQEdg0h46xNtFI2iRQxNFIk1jVBTOsCyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wni9lUDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wni9lUDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9357C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773702293;
	bh=YcxGdvFfEbmFf1dHd3zKnBIXVvhGgtduLUeA8JzB/9w=;
	h=To:Subject:From:Date:From;
	b=Wni9lUDZmTZVNCmyIwM0GsBb4LvuqFgYYaPZaVo+OCUcJgMpf8ZTG9R4ApJWdRx/Q
	 XD7zOq/FP19vfcxz+JgSD/VNl5uqJLanL4hM+BQyXpZveChJ1U1//E8+X6Dl4mhKSK
	 a3+nlK2B+xd2VvWw8KA2WL/3ZQ9hUoX+WDIX+RU1mPa/rLvMbIIXGdXXeYCWTQ+8Rw
	 ggWGgr5sVH5je1EXHc7FwSbB9Np5EXMRtJsuDU+ELYZ6RWrLCgh7+vf8DuyV2WYmEU
	 e4nkTnwfN/TyKeT13mbA5ob8w5qP2Qr8g/KeBCxTdnkiw96oN0kpAzK5ggpQ+G0l2u
	 SYM+TuOzL8Crw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E49FB5E81
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370229358.6494.18231773955568799860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37eb75c752cda00fb379d38151f33c288d32c041466a547d55c7f295d124aac
Date: Mon, 16 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773702293
