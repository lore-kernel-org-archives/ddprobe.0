Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359B9749C
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760230194; cv=none; b=ELe06f1BtBAqSPvwbwfFVXfPcu+CiqaNJL9tJZKt/YCBZuP1cKSUFaGCZKEhA2PqT5dwd5n+5Pj/TBHSdcEkZlq/tIYw5xhdKMpMYpc3YBV1i0827StzDxpbLEip7KxSSaFA+IuUqVoeY/LyAJof3uResxLbMGSBrYtfeR6vcO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760230194; c=relaxed/simple;
	bh=vzzIJhHizfFJRiYFQjIRpEHuW4xYRtcz4DGcBbfCKzc=;
	h=To:Subject:From:Message-Id:Date; b=eO3NRHETXRb885o/kGHKLv+U9BBP9oimq+NcZDgsJf413D094ox5+gNFbavBuK/fjsChvQ6zwkP0bk6S6YPj+wg2AoU7V9tEogQKYkjqzHZ/pt4Q0uTuBbrZGvvymEnoe1Kg1syHHhAjHnfkbdBNaPdtDE7DjRbOxQXC1TWxJDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSTPBYFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSTPBYFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A678DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760230193;
	bh=vzzIJhHizfFJRiYFQjIRpEHuW4xYRtcz4DGcBbfCKzc=;
	h=To:Subject:From:Date:From;
	b=oSTPBYFPWv24B5+ZHA1PkHeU1gHgfZUD6NrS+bRUg3zk07OftF/9f9vPHBY4z/5vA
	 t8nnMg6TJ7BVbE5Pm0+/TAU8k54BNXUQncYXugzVz/5wZQgzmwyBmOkipclgORuzjH
	 JxjD8pjWdWZaAHYqeWwL4i9F5p5RsKeppbKZLL1FIJDCIhSaA7F1deLnZCq2/U0kdf
	 TAXTO+BV6vnPIYdm/IER9+XSn/hXchi2+KDeykqE9HrXDaqZ5BgNOk+/3YUyx/8cx6
	 q8AVhZ8ccLC+AuTkoV9cq5IY72AqaFDlOqFnDyymoMs8R0WXOJuawyqB/b24wcnm4k
	 lXcN/UEcCBs4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3ACCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023019357.28548.10495617232923222403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18dbb73ce1a5c6789201b78d97112e0c7dc05de94d19e08e5cf36770a3f9b4bd
Date: Sun, 12 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760230193
