Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211112E7F22
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752862194; cv=none; b=egMXTEYpUQzYX8RsP6L5UzI8t6k4dmKB/2r7pHa4I44LcXn2DNoQTXsc4p3VY9Qx/sAZnRyxKQkIT+kHi8UfYLEwSaGNEAQ7j0MxR85jr71r0GcvKcprlp0RBkE7wqhVTPFkd/jOcA3lcNhjfnHkvp/pq46W954KdZckjII0lhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752862194; c=relaxed/simple;
	bh=2ZIcDCz35W0q1Tjgp3pylOIDDWjpoLMYPS7v1zG9F+o=;
	h=To:Subject:From:Message-Id:Date; b=K2J76gte4Une3yAp+0l/e4lRWbas70a3gl//Ba+Mr91AodetM6L6IyV4FQ6nS2MjowYw2F+gMtPI4jCqOxQ9+CgsEB2zrqzxAbB49EhhmIbubRKVlBTCFxn7qX7BktmjtheUTwhRSPitjUZDA5nPbIxcH0jhHggukkGMUIczl/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spDMtX4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spDMtX4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91B8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752862193;
	bh=2ZIcDCz35W0q1Tjgp3pylOIDDWjpoLMYPS7v1zG9F+o=;
	h=To:Subject:From:Date:From;
	b=spDMtX4ejV6bB39eP+UO8QN74UthZjA2CikQSGdO/vlN5wBgSOKVtMpJAA6Rrvjr/
	 V2QKxPFfd/fOD4Abu0OOjZkFmGv5pyrcI+k+s5XHxxCvKm3/9+lxux/IOD3Wbws4aU
	 ckx5E2h9wiL7szavAbhhmLSOk06nPhufsSZ0RDl3xbeRJX6fDIl8q0DwQnhVN5XGt6
	 VHHvydunt8yhe5gnysN2YW9c51gCXpeeS0i3bWZtfDXyyisvDySiLHMREOhpK4StDU
	 Jsww70CuH2y1UdniSHpCP7nK3P4ECAHcK6DOVHy3PZoHNKXlrUttu79qLoSlx0mQrQ
	 3vV5mgr/6MKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C83C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286219358.13443.1861465842521898553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a061b6b24226de83111cc9804360c14882791b0cd59e79c50c79b930d044088
Date: Fri, 18 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752862193
