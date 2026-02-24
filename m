Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5CB24A07C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771904694; cv=none; b=fTNKvAWKyVatSmQE9qhuBfWf5uBekgXzeNziL0xfayx97zys5qIVdJwNKCnv88it+NcHjXdSOOVGKEaIHSSodD1OLUOPgVB20bAkyyG3dmr8554d7EIeZxPE4mSM3y+wvwzn2UupNqCCtcopTqc19b7tVYQ24U1oLDgaLRc8xTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771904694; c=relaxed/simple;
	bh=t6LAxIG18LqZMcrDQFd7SlL9Nr4mHnYWQuw7v0CxpNI=;
	h=To:Subject:From:Message-Id:Date; b=jw52xLoDPjh1Vrs5w9lbPRtqs2jJzXrOc3R/QPvlr/m0XQX2yyCYxOrJySvdS9k0c0/r5kVSYJBV8v+1IIDm4og7irgPfWl6SLgKNFMreEAZJdKJWLGHb0+Lh9tbmj4mNFePmp0K5JAlmtaw3P19INOqKixJeAd23G2zM0n9sbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxMrdiME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxMrdiME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E18C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771904693;
	bh=t6LAxIG18LqZMcrDQFd7SlL9Nr4mHnYWQuw7v0CxpNI=;
	h=To:Subject:From:Date:From;
	b=OxMrdiME+icemfM3zNVu5LA1T6dzvMEzuw0eBOIq65FLEcssOcrq2Ded9LtQvzgI5
	 KyNIDABTq8kGb+8cuf39/lfkGXTuUKO600FiD9IRxVdrnvknSpuDnUiqTBBoxq949J
	 mpim8J4YdvsZ9CRKrUgi7+Z0rIPBtVNOpq3mwFeu32wpTZAU428hZSvBvOJ7mV8+3K
	 jOyxFFzDvxhZ0mmhJiKOmcDPIqCeJs4PQaqIbg7o2rwY6Deog6PIC5wkaZ2dA8CV6h
	 dDZCr8zAwdDTWEbGiDzR2MlInbPZmfXkeUNM6Ax8cybcsTjFS0ZeLO5BXU/OBcH92a
	 MkrPUor1gnDYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170CEFB7F1
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190469358.3134.110785955317997253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b52caa0afa68191e02a79ad8e778254829046a93ac322c48ff46e6e094ea1cf
Date: Tue, 24 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771904693
