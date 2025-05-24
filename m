Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F429444
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748104795; cv=none; b=htRncmqxAckad7/cQqREbtNODyym4T16E+Hx2bh646hWKDmdZvAifQZWOuUzorR3VJ1cJbLoqzF2lJiShj246bluqBnV+iaySu8c6f6c2EhSfnOJKRnXcE8h5+WVoFXfVf2oBBnVVrKEyjV3Ylfxrx0iIiFUA6IgQtWQ143ViAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748104795; c=relaxed/simple;
	bh=cHSJL2PWmQxHOPSwoY+yJVkCz5jLziOMCZxNbrkB8/Y=;
	h=To:Subject:From:Message-Id:Date; b=j/ZHtFqO6JJWPFXuDY70o0Ju1cMcicVQjztkiJks9O9EE6BsXV5bj48RYJGjDgH8oZU/JHrFfndpjSwz7I+fpOJHbz2YErZ94WHtnhcil6E/Gq/fIbVBKxJ8tpn3fb+zz4s+awjuLiIoTY6C8XCXI/lKT7xcueRJX9tVgtgvXII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbmxJCuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbmxJCuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A831AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748104793;
	bh=cHSJL2PWmQxHOPSwoY+yJVkCz5jLziOMCZxNbrkB8/Y=;
	h=To:Subject:From:Date:From;
	b=RbmxJCuJ7REDdqwtqeF42mNWFKfTJRVidCYxfuN4hADrqYujgC4F+Iwyaa/DAT7xw
	 E0CG9Zl6PHBeKvhKJ+Y35H8TJ0v9zibEFPjaUtQgHb3093RIn9JW2BJf3RXGPp93OQ
	 AGbKQRRaJvH+sm4+3EZcDC/ZBUO0A04q66sKy6YBUybabUGGwpiSYj6WYaWz+QrIR9
	 3x+h8UbcaR592GOmUF27Xv2tkdtK3u8nBJMwZUw4z07l1y8wwFdh4LUYPLTXledVdo
	 pHYV1qZYqIis/YB/HtkTCUPGbxsmXOQR1if75VxvMdjoHQizyjLFkFbKd+IGmQNhdr
	 0NTTk91QroRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD8C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810479357.4653.5300592955304351414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef512d08e3c4080fe4c7597523f5d1d1b7d8005835db645620b61c185e966f3
Date: Sat, 24 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748104793
