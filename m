Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3722C2F32
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749868796; cv=none; b=L/DlQC6yCotqVKwsoyjdecRL0KYyBrxSwsA4KIui1YGNQjCMblCRiTiar2VrQ0NJh8ZGIKTH2EdhnMA2TK4zNyIgqXq/dQIflrm9BxeIBGNCnBAECpmM+VXsQfkcSz8TvsUt5vYmVmsrmCi1zni0OP2ibrMH4fqssvM0LGMlRAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749868796; c=relaxed/simple;
	bh=5UL6V8D3lTosC7tbSC8N1fNL3IlYI0YU0+pcDJFd7cM=;
	h=To:Subject:From:Message-Id:Date; b=WsB3Jilq2pDDmsvPpzM4TsN6dasARGNgZdSjyy87kcpUKKX5ckrIUSD2iP4cmt0b0+tHa7j3Mf7o3FmsHiq2fl7UoV1TT7AfDyVid2TuPFFa96KXPgOBDOmUqYlbfFIA9TL9O9pooU6C3X7mB9oHrLVz0ioU6vEyoTBU9qP/yjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5StECZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5StECZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A35C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749868793;
	bh=5UL6V8D3lTosC7tbSC8N1fNL3IlYI0YU0+pcDJFd7cM=;
	h=To:Subject:From:Date:From;
	b=t5StECZLQspDrWdDmEOUSIwsYZ+qqn5QEFBDn0/qqYkSVQQcPQxziEbCtSug9qMwr
	 /81ZW2MeyjDn8BXIvXdAEE7ZdxLC4Y4K5W81IzkucbdO4FDgq6+kFe0bPn/smw+mHu
	 MFRA9RWuNbScrK7uW8i+3pfsmSb0pY8gk+kFPCYrnM3yixmaCIRrr2Srkvdn8Yy/uA
	 N8QHGgTUiAh5IOvEWkbWFTtH57ZCtik7EQGIYHFNtMTfA6Syu2zCxnp9chZZy8bxWM
	 Wii53a0476Q98wTPg5eaUMW9BzVA/eVXodEX7rqef+LPoaxy3pFijCmd8IovyhZhyX
	 jv9EQUvTw/Ngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCEC71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986879358.4591.2961753286672011905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e65b55cb7fcb9536a2f815ed7ba7a0a8984b35c6be3cfc0cfa2b0bd4b8cfdf
Date: Sat, 14 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749868793
