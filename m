Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347533C0C
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753117194; cv=none; b=YtMdbEB05Nnh7O05vx98WJwY/TYIt5EH2J300XbxOOBGQd5VxCfIV8HN1oInkAOOP9G1Hp0IKFa4W9GsI92Fjb9/q2JIsZz50k1P07tJxaBrvUZ3cXtEIDZyp6KPmmv576QLsU+dYUWQfC8KathSyJhtCKJXeOO8VtkpBUj7i30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753117194; c=relaxed/simple;
	bh=DDfutiXYoIrO8DCfelhQGvnLSteFV5UOyI34KVq2SU8=;
	h=To:Subject:From:Message-Id:Date; b=dYPSCtT2OZJN09G7eKQP64hreGCQz5/o16eC6YKcMhFVGSbMJStmSY0vBSWnLgOE0UDLrYczEGG6nD5qkZsfOQHLGjCNSd2KZyvNbW29XkiAUiQB3HggWhCUt6NFjn6JIQptNr/y0Kgt+GcPiJhTFXFWEVXh/r5YwjxiyaSuI7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbm17cO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbm17cO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A212FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753117193;
	bh=DDfutiXYoIrO8DCfelhQGvnLSteFV5UOyI34KVq2SU8=;
	h=To:Subject:From:Date:From;
	b=bbm17cO0bl4yxJOi96ebBFzw3qKAamqhOuCAcrcrkSsDlSXvkHU3k7sPxJ9JM5gzm
	 4rPXbbjyimmig2sLEMvhwsrGYR7lGF5pBQKXfLItPQcaFi7U7etZzSOQAxIAVBd/dO
	 9FXddmkmtIjZsBlcmRKjihJF1O0pz4UVvgac6izQSb7Lh4D9TE4/er3YGrBQYpdcHd
	 K5o7S0nIOtsDEx1misqyUezSHptVhC6/+J9NZHNQEXqpD73F2w0VIak8R6E0f/jvlA
	 iXhRPhoRJotPS8kGxMfkaxckYj98Sj+nFeqMKkBrLK5VRLbxdZLJIVHwCFA8wEI1nP
	 GjAX060RD/W+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B1C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311719358.16277.11175396591610299924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0ca16efb1508a731180fc536114eebdf4bd3e2e31e5d5ca9683713030bed59
Date: Mon, 21 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753117193
