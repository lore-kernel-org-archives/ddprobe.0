Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4396516A956
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781147794; cv=none; b=Onljvtb1g/fa+DWn+gvCxEKV8k0wsX0rSvphq8KY6DYqPKGDwEe1zCZ/HMnrhebfYiHp5Wgq8DspfyKzHWho0tMC8ScI1BYEVO0pvZhaMoK6W4UEuEBJ6e0GrjZdMI8M8eUTuHd2KUCYPrxcTkc1RJE+knTdGjmKLpwIWIcd04I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781147794; c=relaxed/simple;
	bh=gkVa+Wsc5WPeewMQ8PULCS58vb6ccZd6Bl+nHhZf/fE=;
	h=To:Subject:From:Message-Id:Date; b=CFaHLj+vi/4EBm1/ac5AM63ATGZr4Ff5WOLLn3sDblPP2ztiaSwsorBy1Cwy/uSM478hedzyihZEcVuq19Yu6N/ugREpcPVqaiIRj4GvldYlE9G2/SkK9Qqzs51h8CH/PO4l8K2k1a8+dsY0vYg7Q01j+RHbx041wO4EA10cdLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDVvEcuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDVvEcuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C669CC19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781147793;
	bh=gkVa+Wsc5WPeewMQ8PULCS58vb6ccZd6Bl+nHhZf/fE=;
	h=To:Subject:From:Date:From;
	b=QDVvEcuAbVz9piVS6qTULbZSNsT/0rDE+SZsQzrbw0sgVmHdUX/7+OwTiZZzf29BJ
	 oA7E/2RnzjhaP71m7szccbN5M2djoToFgh1rdf1MGV85eKCoU5hrs7RgZlTibK/ix1
	 ldEVCcyTHNdl/6Lh7lcMfz3+/2Gx86G/xL/zshw8eS2/YxyeLEgEn1+Aa13QKY7KYz
	 HDdZ9OZHxHY/4s0OWOe9MjRmoMLxxbVfZZLBCDE2uGpIPtQmwE+Qr+1sjnPt96sm8d
	 eBOyiF0aEDwB51SwfZVtizj5AwCAQ+l8bukZ5icWmLRGDZa5yW+mufdIglv9OjGOht
	 Kip2B/tv2VVJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE220CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114779370.30437.749064196436692337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de101f3f5bf0f14a72290bef99816b2c58bc5e5b8cda07e91cdac19329304c7
Date: Thu, 11 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781147793
