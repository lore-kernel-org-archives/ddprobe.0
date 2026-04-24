Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1994B3E5EDC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777055854; cv=none; b=I7Al4BW7L8RTAI44IqJAwaYntE295M3ki3Q57pAwi5bouK1mXiuFo/oHLV9jULi8gLJtKEM2fOPJPnE8peVc2g6jGwo+ca9RQte66k+HJrZr4KfGBt3jPUUdyZIpb0AW/tkIs+KuhnQvgZI0leE7RM/ye6fgKuFK665O+WO4PrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777055854; c=relaxed/simple;
	bh=INrJMJs4dilHIM9qyucpbOtzn40juwGFaYxFTt3IBWM=;
	h=To:Subject:From:Message-Id:Date; b=T4NKfsOMXUEqF1n0V2LUHLeT5TEqE74ry88a0u/Fato/VIQRbnPA6MnTlf3ojwNVwY9SEAp2+N7Uo3zJbOgIa4gW/fhQfMAUQXOz0dYSB88Hanm3kCL/04qo860+0LRK3aWkZABPcw4kGpYn54MQoX6W1TlZzGxa5rxkP9Is6vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tznPAUnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tznPAUnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B826CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777055853;
	bh=INrJMJs4dilHIM9qyucpbOtzn40juwGFaYxFTt3IBWM=;
	h=To:Subject:From:Date:From;
	b=tznPAUnEKcYavZ8YxjyD12x+VXC/rkFh/lzEt4thRnBXcKK8CHpDN/N4VbG3yXRlU
	 uIdVHx2I0zJyZ1g/CIdV5zjGW4wqn6S7gIiw2iuut8V0/jUeFXOzRoLSNvD/A33ah0
	 zlfMTxwC5fwnoXBU2yNL9iLFc0YT4aK+Pdp9sRsPKCLOaLEgJygUuqUuTWvLqt8sNw
	 /vpK+jR3vemWQWARm+TWUb31F9LaW5KMHmg/P4WgGvdQnUqpgfZs5VaUXDv0GSnc6s
	 /Xbmdp5Qc8ZbWQg0C+DndSus3km2xTEy8n3MZ5JgH0fd8AYZ6REYJZ9yxLUoCOXl8m
	 EP8O63nFdw+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA0FED3F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705585368.25802.9872806166527927825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f210a7e1cc5386629bd7d64a59776efd0ef9ebce758ad5f2ab086ee76969eee2
Date: Fri, 24 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777055853
