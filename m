Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2CD2D8370
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782494314; cv=none; b=OjdepnnMsmvdJ63SdQz2Oxfb0Q7zgpdvz4/6VSJ1oghcYku+jalR2n1aJPitxJjdSiyxX5AREXae255dMnU8NSoo2mVotyzcAAsK9sf0rVv9HfjqelkbyIDTFNYRjZPBtDy1YX/XZoc80PL7OVwCr07hjrZfgDpwwRCRmicBcn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782494314; c=relaxed/simple;
	bh=d3dRZGu5RY1j+AlSbRhHXrXe/cGsiYYy2Cw042rDiLM=;
	h=To:Subject:From:Message-Id:Date; b=AwE9CETdPWzbuTpn2RZwFGJmZqeKRC5IdCYj1n2rAVX2e3mFT96Jgjy2+f8vKM9GWuspbeCm3lgz4nC4j3cD0n0EX12hdbwfXISHwg2UVzDR4VH/3ABOL4Temv6eQHYK9aAW7/euwjiyW7kQH5XaIO56RAR7QSUKekrikPC4o1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfLn6c/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfLn6c/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08A2AC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782494314;
	bh=d3dRZGu5RY1j+AlSbRhHXrXe/cGsiYYy2Cw042rDiLM=;
	h=To:Subject:From:Date:From;
	b=ZfLn6c/ZRpRWirViuat4Hf4Z/GFSZYssoFk7qNNIS+DUtg6DZh1lRuTmHMRsffxN6
	 OZnZHucwr+mtQr/ROShO+D9SyrHLM8RfGtc3RsaHymrXCzCj1tjn+gbbtjhs1PLdmk
	 jF8zhluG7aNirTtZT9RWvgE/39qHzsb0z5usBBbqRQ9zB0tJdXQgKvFCnpoASRvP/z
	 KMaQ9zUuiIYyLbqnGlqjnQDlX2HbVKhzUR3uZvptQFh1L/YtDv27eClLK/4DC4tzGn
	 Q2ZHe1olK+u+ht334sGXxnpmp7lM651lIZzoj5OVhnhAb3B12+zGdbrLAosew9C0ab
	 GR+SYHNXQBPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8ECBC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249431373.11324.1643334487715862802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf1ea853399cc674333a57863bf01b4173981c880ea8a598a886babed0492a7
Date: Fri, 26 Jun 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782494313
