Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024502837D
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 15:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713196763; cv=none; b=roVDOKbjKg8LusSlSOpk4rO8bRDMuW7sqfck5k/qR/8S/yeSbHM0DMSlGxvwqyXO0q3dF7ZwY5TmfTIUbFJmP9cmzoFPHaD/YKag3Bf4ze/5xShiozlUbDdY8+nt6v4elnsR/oz/Lzs5zGO+br0jBaWQvotEfn90gRX5b1xaIgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713196763; c=relaxed/simple;
	bh=2aTMIe9MGxCFauBt72jn/HWVW8A0TbzBVE2ILMQKAYc=;
	h=To:Subject:From:Message-Id:Date; b=WL1wQLA9M2zfgPsr6xYy+ANFeckk++/1uQLTaqLfR4ypWVn2+B1PQgbhmUvzVmBwwTCW6wtPx/PtBq00ZPjl0rxB753RCs6mtOT7h52wlj7pombDWVm3oiXxWe+2FtcQ5b0Jr28BprJWVXvAxUe1JUxJfOpWFiqdkFr+fqi2OxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF6KSBMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF6KSBMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC9FC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713196762;
	bh=2aTMIe9MGxCFauBt72jn/HWVW8A0TbzBVE2ILMQKAYc=;
	h=To:Subject:From:Date:From;
	b=nF6KSBMUR5z4RkGgZfASwzvjyk37I6GmkN8ZHCWbV1jmkjJTmCt9J88HU7kyzrBmf
	 s6dFEhpXYdZyom5XOUknb5Sgj75Ak7qaHky0X4s2aIyEt3TsLEsCiHCiTBg+r5JMCS
	 f8+HZuvB732jBFv3GNg/J1MF1rRGoGkAEQqPhhAAmEQ2SUn87B3rP0a3zrKwJxB8KC
	 FmNTIdWe067wR/pPTqRB4moksF8IFMPDSKRTrgUfOx9wWEmws86fZAI50ymnaImqOv
	 /0H1EatpM+s+aJn2iLNeiVB9mtVjmzwPAHDbtHUlkXpsVCOs6ELKhDPodILdI0LVix
	 AM+faYFH5PzHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE08AC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171319676277.25895.573886645515858119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bbba7fa51e114f3ceb7b18ba042d53d4e35d7fde50d1f57b12230023f6db02
Date: Mon, 15 Apr 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713196762
