Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142CC2EBB99
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771389294; cv=none; b=OVVhbK8BMoqooDPnL6PZUAfpWhfkLMOe9w2R86e04GFEx3T8Gol5cZEigHG2tWfiOH/TboK84cLnqjkEIf9WMzN0mp+ls63z4h5tdooFebs9yciWKtmI5/Knech/2MBzZToRN7W9uEf+XiwTzo/CEMN1yNqIiAZCzibZpkhn+dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771389294; c=relaxed/simple;
	bh=aaw6z5/7Aw7Vo64U0Q8umZXTBIzZXOYob3Xmcb2S9E0=;
	h=To:Subject:From:Message-Id:Date; b=kmZdKGY0T7tJKyBzFDT/wHq+JJ0xDvfJkduadXV3tPhFecHtMzgrpTU0dtEEcQwIxuAndGH8CBwDbIAvPyn0DSRvtdBeyrr4iN9ifgwqCU/OuKOJvlcfdGsIK7y19cMIL0YCwppfnwUJb5KZ796aA+R9Nuxjs7NLGoFGx4YomcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zbuyle+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zbuyle+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5398C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771389293;
	bh=aaw6z5/7Aw7Vo64U0Q8umZXTBIzZXOYob3Xmcb2S9E0=;
	h=To:Subject:From:Date:From;
	b=Zbuyle+OffLKOKZIwux5hvLmpEhRjh4nQHDm76Ge9rfezeRrH1KsW7vLKSUAKBDxD
	 rhC35jlx/bofdcmU2rmoOiN2AqbP4SxBUscHCzXIl4Tm44IrcBT/nJdKOUcJ3YTzkz
	 eowfw63mLZyDl3Gt9a52iSXXONE4lMx4nGyEj/KlG+azIdzo9iL0sxF6e+W2fGs/1R
	 bur863iH/Q0AA/eQQwutckkwOAIo3kgs/WdVdNnmqZ39zpGgYyxP2pT0AeIzfeK7tM
	 6hU+vgmTaiJyrAoobKW/0JeJgTG9hvH69p11oyZ4u4Z1yS/0QoIRFVKAUrGaNmS6l/
	 QlnOG7Pqw17LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C01E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138929365.16392.16299485471964438318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d00a9992f1c784ede49e648fd0c83dc3f91417891c4cffcd1299f1c61094869
Date: Wed, 18 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771389293
