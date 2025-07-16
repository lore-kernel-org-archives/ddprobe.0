Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1481727587D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752639594; cv=none; b=ssC+WKt4KXaA+254TU82rFC3aWtzCv3d6QzUlglTH2fUFhUX9RJ5gp3yuTltrWUgKvMnLFfTnW8o6GLZ4kF64ZUgf9U5ub52WTRMii0J8xgNLe55Y7QPxBfpVjhM/+xybdeB2hRC0dTqux4UWo3R71Yb7Ir6fPzVVzuL1Ixfd3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752639594; c=relaxed/simple;
	bh=+9w4THixkWShv+ES/r6sG3Ylo630Uum9pOgEQvklUVY=;
	h=To:Subject:From:Message-Id:Date; b=NjHPjRjEasD0AUqooqpVpPhaTQVg+h3skDYkBiJ+SrwmO/1ajIWV0ZlbhvbWYdkHDCUByTOBQ6byZXR3tbD2Gu1UcwGbQ71p9eDmLjTqKJzn1KTks7WD6vmYzzjaPRQ8xp55j7pIiAnwtOTi06kcq/+5WfXktPCck0tR5P4tZ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEnpfFzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEnpfFzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A85C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752639593;
	bh=+9w4THixkWShv+ES/r6sG3Ylo630Uum9pOgEQvklUVY=;
	h=To:Subject:From:Date:From;
	b=XEnpfFzUNf2K2fKLuLAoPcer9Js/Na926nNKngEkPeM0J4cDVVFgMby1MirDrJFKC
	 ZaYHSlAujyPBoDrngNdkgGCNcM2EOquaEDokK9lCwQe4ltc59WzjHDxpwjFOFW7QG3
	 QOnHVRb7c/kaIYO+bd8uoCFFDMi0WcW/CHAvTmUeqpNEgAG/xbmEBUNErZDyqCR1Xh
	 y4OdVUqKRsuFWeicxmR78rtWnO/xp9EaBUmnDCNgpHUyl/EYWJQzE0TizrjnZ/oHnG
	 lEgMb3vjFuCU1LwUW2VF06rzotpseEnoULQsX+lolc5R2SNLFzgAoVBxEBjUDjkr8D
	 a4+z1SiOwzyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91779C83F2D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263959358.24936.4827074190950592640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37e0fa54150a0c6d0811689fb35c4afa795843c6ff72e4223a5714637cf03cc
Date: Wed, 16 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752639593
