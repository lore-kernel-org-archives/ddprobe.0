Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC073234
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749183594; cv=none; b=HVlnitwNGgsvVUKbhuzv15YSiJLol5gXH78n+yuGIHGH8mHfpzejez83XxnlR0t7WXXgZkJ594jeA3RdAWDyJKmQBAZ9MZT9UWuINVXxt+393KFnRPEGV1TGeiCZcd6T70Hc3Luht5wDTK1bOofTQAk8155vfGA7zvhmyec2zMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749183594; c=relaxed/simple;
	bh=ZKtYr/S82JV7/qwFnDeqg5WyuHBknVTAT/8FRFCQ6qM=;
	h=To:Subject:From:Message-Id:Date; b=Zn4xaV142bG6dQ8oi5MIKK72uRiPJVIZbKMXmfhC+Qtu8kZNgsfFO2pWSKaEGIxO4YEVn2ihCuFhoNaALMTsUgkZd86EJ6ZkYjYovAEMfVLmIQYHMEKzVHFFW87VfYvd/lgqj1TV/a1PiQHWxuS0BgCiwV6+Avp5o8rjzHDVo9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okrCI1nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okrCI1nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD3CC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749183593;
	bh=ZKtYr/S82JV7/qwFnDeqg5WyuHBknVTAT/8FRFCQ6qM=;
	h=To:Subject:From:Date:From;
	b=okrCI1ncYNTEW58FkHKM57fIj0R79ZH4AFa/Pcy2IssoyhuocFGCb0PQu1a+bzeN9
	 TIi9MF/LyLq7mInqDS/Mz1EgZduXteASOSKCUmMdhiyo76iUnr4Uzn9Et+lVy0UDk5
	 /cHD7D1QP4rX1GCtu8qW77Ec/Z71kWxgKDc+wn9BhYY/Jy+uy4l5w4IHrUnfN6A5zm
	 fBdRdDSWzvSMMfQXI6e4Hu7qOMyvlc5wYgxi9upWA84HlXpuMbI71OLrgSSut0wyFy
	 +zy13I4sDjOo3eNyGxSJ7oQW/a3YQ4qUkaCeQ/g8qpafqO72Dd8EUkKXQharHhTyld
	 ROB5gHfnwAP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A812CC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918359358.12648.5760178409463112455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253f257cd091afd78290372f19fb36b0dd251fc496a9540a3329de9e2c50ce6b
Date: Fri, 06 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749183593
