Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189261FF1D1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752637194; cv=none; b=dYIyuBiOX8Jp4RU/2zCMr5vPHhzWNBStGfu6LyO30sSVDipDFlgoIQQKWFwjLe2Mb4D0kCRqFi848ppn5cHllV6ayMlj4VEKapj9pQPeZJweHwXjmQqhXTTw0LcCIoCKGufpX6AbmRPaiDazpcmuxWIR9+CctgasLd9DmNWkBCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752637194; c=relaxed/simple;
	bh=QJmDD+8SpxJy+mqp7InjeG/ot2hkBeQR7Y5OUh502jM=;
	h=To:Subject:From:Message-Id:Date; b=G1L2K1IFYmALA8td1ocrKEN69OA28WdfNHD45paYmFo+bts9pLhPSBpiLTFRpeW6jOJeSnp4KMJ7P4a2wJFB8z81Pj9jGJriyV40xHzWKso7Oq2cxPAQi6ouNPo2+RFhzCnCyQn9eT5dhXw0z1vXFlq77nxalbjZV8XXlO1qgfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4GdUjrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4GdUjrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0744C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752637193;
	bh=QJmDD+8SpxJy+mqp7InjeG/ot2hkBeQR7Y5OUh502jM=;
	h=To:Subject:From:Date:From;
	b=R4GdUjrqlMXYTGvZ6TqxcuEm6XAFUgkQnWCQc0if1Lj1H2ZKB5Gh8SehEw+TGtBqe
	 +VUBTquY0LMpL9fqOjrNy8dgU/cw44eM4L4Xe7cekLA4VSX9NtUAhryhW276j99qtA
	 Yf/dKRnkWtP4VhWLcLpWGeELq+xgnBkcJ5Nh2TLQiK/H38bg8O9hMt5SY1DF1u2rvU
	 N2G8Zb5LoO/NFvYNFSeG8nua3daAMzUniyG2FR7VETae43r15EpSMmfx/Nrib4eBea
	 c7v14Tuqm1kB1TdltnXaSgAHna5D4KuSrHostq2MnzWEyFASuEq5jz9wWIH7ObgJPs
	 ZYzcFH63TVcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E117C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263719357.5246.4093357100492714748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f11cf5d16705bb0ef103f1723f6af331fcf1cf735e6f59d8b6548250bd9b12
Date: Wed, 16 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752637193
