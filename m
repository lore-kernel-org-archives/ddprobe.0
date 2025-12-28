Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2E61F09A3
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766898234; cv=none; b=eiinzUiewlV3PWLjbkwK7nzgnya1loUb53x9sk0LE8WSz+DOF63Uaen4cm9U2Tf7VAIrGK2IWz+cAXyKETEWzz/xYJA7BP9zCqQLxjKgvwT3vlK9p0hxA5fZjcUsGal+VvvJJhw7iD3aC48Zt/aibaNjaMdW2vcjMyWEJdXNB9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766898234; c=relaxed/simple;
	bh=wboVPMweuMLpsvsheoI7ZftYoZQ3m5nt2WhDUZdeZqw=;
	h=To:Subject:From:Message-Id:Date; b=mWzaJjLdoDLNpyCzRH4P++5eEmNxJ+DTh1HwvrVfqGZ0Mc6PaOQ1Ftopmnml9/S7LkScXhhCYF3/FiOGuSIJ9ba7RC4j2xpFFgDuxVQi08MU3oQbFZ75eqnqkXH9QzAAFApfPahYBs09OvIUikFERywG6VQMpRqgeBnXoxTdu4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0uYDlby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0uYDlby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766898233;
	bh=wboVPMweuMLpsvsheoI7ZftYoZQ3m5nt2WhDUZdeZqw=;
	h=To:Subject:From:Date:From;
	b=j0uYDlby1mk6If24tdURG+E6bEafzygHcgtaf4s1pwaY3Zj7gJNff2ntzqZk8kmYv
	 rt2HY+tSX2xmMS2lmBrL/Gw1NnuIZb/ZQ8qUlhdCDXniTZKu03ONK3glIDTrVyau+M
	 rzqUhEydViFLFGN9BlJLYwOwspIkRdZD4eFliVops7JPVw3BqgtymiGxfdAvaeh6+W
	 w4ou6/pQEM2J0bo4QV6Ln5w115yOUeQyUBb313CwFvI1y9QLJs0AHozdUkPeOneo/Q
	 9mZkc/RBREfXhnadZAA9bB4apX5Jb/aKQbHMS8t/5jklVLWN/DBgPFiNukP5Ulp+SO
	 Y3Ynv4LFP3MsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E68D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689823358.15000.10364038718166528955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd591ff748a72f6c6543a0cc38df439ee72f0bfca70052d3bdcc2f06c5ae9ab8
Date: Sun, 28 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766898233
