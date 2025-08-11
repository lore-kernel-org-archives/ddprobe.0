Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E2D69D2B
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754880594; cv=none; b=av1bBF60u/TbgZwKSEgWxfSGNjHbSEort/jGgpJNOFfqNMwm3JbKUzzsHmCHFRwWZUcV8iNbfQcEL1wr/i9ISZckIfGWw/Iq1+dPIjLtXaW7QVXGqT7GAspbpGnRElAvWeuN3YG3WiDgDvEIQWei1z2mYPCJE9rlUor6W1cl/9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754880594; c=relaxed/simple;
	bh=V7jfUzXr82tl6RGRc+oYSJeLkkGQMgnH7mdBBse9Jfs=;
	h=To:Subject:From:Message-Id:Date; b=oWoVIR1chboICtfKSk85NAF4Ld+IU+WDhjGWXhGmCvIp0UpjnTcLj2zv22dgF/bnsoDL2IHvikrHSj8HgeLriSgtwydCgcUsdm11xXQFdWjNSz4Srtu8AT9GgE6GKj37BVb70U0ikiypyQAv8dvU44lU0UwA0+hzPhnZN7RzEyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha+TcvB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha+TcvB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DEC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754880593;
	bh=V7jfUzXr82tl6RGRc+oYSJeLkkGQMgnH7mdBBse9Jfs=;
	h=To:Subject:From:Date:From;
	b=ha+TcvB+MEBsJOf8fAlepPTcpxBcCYKF9haqqpcQi0sHXc7NuTjrb3nP+FKfTFROj
	 Pri2OCHhLNqbBopvqQ2LZ7pr9f5YV1FtIp2wJhois0IAS+hpWpTasHU6ezeORHNHUu
	 biXKiK6DLnh4KkuNx8yh+A9Uz5mfMDNFilgyCjlOWJquY3Fmnhv43tdYzyZL9qSPkF
	 8AJdQRf3XRAVM9MpUC4tDV31xLQcURqqte3rseFJPDriSRklv92IuZ17S60c4DIHPj
	 k2ealbCyJs+sMRPZuFnSEPMQcVLN6wyRMo7IbyDrxZ9hi8bKfsdzKopJa5nvwyxuZc
	 Yzvj6oNbCZVWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40FC87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488059357.2832.18082542076331905972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5189bda22829f3eb38c5cea6f94ac058d37b840f7f0f57bed4222d78a1f2565d
Date: Mon, 11 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754880593
