Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6E029B8DD
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755240594; cv=none; b=Nt62XZsgJIpt74WVy95pYqafFR4qh/FJVpXzX0ghsKuQfzZQ+AdnAx0XaZp8Hatj1WjgbrgNU5gDWEriKlOReFhrU/WcylFHLhaiiwklpatabt6GcndjNs3pz1GI9yssUv5T1QSAbNuo4RescycUOxBMXT9N+oQEQ2T8FlaumZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755240594; c=relaxed/simple;
	bh=liSTD3DCyb2UiWApl1KvaRGwKaF1QvhUy6tB74tqZ8c=;
	h=To:Subject:From:Message-Id:Date; b=X4cWc1HZ+Kf03NncbTo738trLKpPBCH4QylVrsAEVgotzfq9s1QJ/whGPzLvxlgPwva9hloddgEDfhkdzaPkWJhm866Iu3lQwaRWonHpjbkhOxYEAW9NeM//XMpw4VR32luY5WvgQJNOXGexqJCS1KpVBhE4LiHZ7nTz5iO74Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvYkbJjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvYkbJjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A89C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755240593;
	bh=liSTD3DCyb2UiWApl1KvaRGwKaF1QvhUy6tB74tqZ8c=;
	h=To:Subject:From:Date:From;
	b=RvYkbJjRv/o9L9GSx2nIMqFpK22qEKH8CmxDDtNFjO8thxPngNX5wOxtNaE8bJofr
	 WgmuNwMz11hL6mcd5F/Rpmq5Pyv2ZD9nu9hgg6ep0K8lT+ZOcNXEyyB8d/igFBtyJL
	 1fP2leRDQZQ9fCtnNNxIVskBABnF5JgaynUx/Itv0k4TbbXIy57vrI7AZebntW6vD5
	 Rj1jccgM0/W6TJGKc0KBrXPD2MvoN/3PxrLgnhBoBo4LNbLpZQ6phD5eyPmmKXusDz
	 FuqwkJwNjD4Zl9CL7nIfbtQjOnRV1AMa+wgJj899h/bwNTf5ArGMlyyKCqSwVpzJNN
	 xx6aa+TkCdT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92183CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524059358.5015.10755729690140922768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f846cdaca0849d1ecc14e8d346fc640c77296801d89eb51b375f5647024d1ab0
Date: Fri, 15 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755240593
