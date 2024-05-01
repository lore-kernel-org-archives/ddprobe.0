Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBB014267
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714582943; cv=none; b=VMUCgPTYuN2DWIUjU4WG19OiDeosKe0xIIm2vX4Efh6rTrXyFiCgKBk+yCLOFXfKNkUUd29JF2NHkUBfWktgpayXZpedWiR88B08KHDn0rnOstOwQlZlLuReIAM5L63GIzHHrBEs2azxaNePVFqMjU07P3o65nCqTF4luYmDFz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714582943; c=relaxed/simple;
	bh=2Obcmr3krDuyRt2eIb7FFB1bbZxojXxbzTy7OrEB8C8=;
	h=To:Subject:From:Message-Id:Date; b=t6WKWGfyUuPqKUgKeIeQ4d5JZ3XQDsBnmTKHL5p5GmorF1dC/wmNZ7lfbCP/jB7rs+hr8ouOzvd4tPf1g0fXpvcpZC3BmM6nW54qjIp4AGybpuBmCtQWL5m4ZoQG6WMgrxu9EMNJLAgEUgQs0HboKHtdahNs77LVemOQ924VlEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chSHNty1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chSHNty1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0817C4AF14
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714582942;
	bh=2Obcmr3krDuyRt2eIb7FFB1bbZxojXxbzTy7OrEB8C8=;
	h=To:Subject:From:Date:From;
	b=chSHNty1MKIqmejdCPdTfo9j/6CX4wPTFEypbeZN2A6CeclGoxVmCCKNWcTTUPlC1
	 aeH1BK0acQ4xwQFk7HymX3//0qa4Sf7pXfp+gFl4mV7oMidngDgrxCS6UJt1AVL/Cv
	 hiblh4TBzJoEoUZP9mhCGh+k8XMSR5NnzAEbbgXB6c0d26bWvJZ9FwXOd6V0Q7lsi2
	 qVHmw/MFYi/AqIYgbqLHjlxuJlE56VtWBCvA36Wh/P6T9gRqg/V6FE/2hFr8e8aMw+
	 dNILBO2iaXQ8IAcEZ4xW/9tJk4pavVobB4vG34NodBahjby6Zi+WBxhyA/7G765zpt
	 eLQfi2QUOm9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD33BC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458294276.18841.5806851890850782893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7966d3edea5ff6da1fe793040264f2784c125bc8561f13f53e5dd4cb10f02f
Date: Wed, 01 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714582942
