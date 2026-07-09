Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28967371868
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783565914; cv=none; b=nvXB4Fs4nwIcikZbXnEAF8e2yw1NBHWIxJxy7mDm15Om5p8sPmyBXBUyT9aHb/x39cg5PBskgqpR6wvRaBL5o5JFcOOD1jToGIduIRmC7wYRhzBW9bgp1gG+A6OvzDKMvjopWX6QJPURlgfWVOtlLFLTKv19REAzJ438njm+CbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783565914; c=relaxed/simple;
	bh=ii9hbUcFB1aHb2JgS5NqNINYBhSVeoZCI0CZkTMBtCo=;
	h=To:Subject:From:Message-Id:Date; b=tED0vAfkK8z5lqkJJzxAY7vIXJjZxn3eEad4PDUI4qwWf0Z5R1/I2k6agyYyHzGe2mTygj4n8+BdHVMoiku9QO9R3w7x5fMq0onsm1tcYLOG/leyZmsf95lZbCbD+/HpEXMu78vl7Z9r1mWoBHXF4J3c5oqNpc1tZuNDuLwWRtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4s6Ox68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4s6Ox68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9353C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783565913;
	bh=ii9hbUcFB1aHb2JgS5NqNINYBhSVeoZCI0CZkTMBtCo=;
	h=To:Subject:From:Date:From;
	b=f4s6Ox68deUgWztailULdd1/h3D4qpTV8iKNJrxXngKwThRhFbctNOc9O4YRPHkWr
	 4gVhM7OeLnQq36lLR6xik5ohfoyPaL/jI7JJDAC95JeNcG4lIzPmTEXSQWJqHlqeTx
	 TRvOUL/P3omvzd22IcLzv8h6mHwcdwzHaBuj3ieLAD0rmCdQdBFdy4Ehg82rLrArKL
	 RXhakzqNWSmgj47gxrK2RW9EoY1CK3DZ0Zg41AGWQYMMDJc3oW9uxUWztOF/rq7qJ6
	 U4dGBfumSxv/TKKl+yYHg1BtuV1FdrNgtdGV9KnwC4ml1ipnx6h5+Hf3eSpUnJr0+x
	 AVUaKN5YULzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7870C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356591367.9378.13550411276364030042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8e5e977b987a49a3f691c294b5a91e93b81495d251bf98cb83864fc92c9165
Date: Thu, 09 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783565913
