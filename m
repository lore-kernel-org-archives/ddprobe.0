Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E362C303C9E
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756996794; cv=none; b=XbhodVQ3nDh4lJW39iQ1U0nculE/+C5WfU28hdQd5+U5CermMv+a88B6ctQPN8etu9Lpqld318lWBQRYzMl0JAmcbQj2sD6cZu/S7Gs32g4W2qvmxS53XFgv7d+p6Y1FMANoqnr6k1yDnCl6hlNIvgg4TCgaSY6WqFPro7HIlZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756996794; c=relaxed/simple;
	bh=PMGCpCPYkRPnBpHDlbihyLf8waV2QdMD26LP6MEfKWA=;
	h=To:Subject:From:Message-Id:Date; b=kBp3WvLR6GZyQiaGEvtdNV8HwoLo33/GPdqRz8TEjpvmB8Pcpt3i87ZcjuysYEfE75TWFWykXH/f/fSQ5glm5rUf1IuHrfKetWh2SBcyeXsx3nS0fDUaGU9CynMtrZ7ryfazYGa94/nw7QitqciKzJId5/coqbvwQ1vfwDtguoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1qPDWqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1qPDWqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2438C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756996793;
	bh=PMGCpCPYkRPnBpHDlbihyLf8waV2QdMD26LP6MEfKWA=;
	h=To:Subject:From:Date:From;
	b=I1qPDWqpC4Fg9qnbucv4egS4vH007zs9dyWMufeGcgw0i5QYsKFc+2fxKHRVGUAjy
	 9Oby5UkrN3vbB9qSofpQVkRKiWWz3mh0LbbOiAN7vb/BFuOK+PGnixALy+iIbAcFhB
	 klox5qrNSemZ9hD+Ed67s4f/uDmNNph40bGksk4Q2bxY+rOUPzT4lBQtCA7b3ZtN0n
	 pqUQ//HHXO5QQaejQhAK6hzC95v9jG6gJ04Mh8p4NIEnaFD8XYYEmBw22Hq/mzGBUb
	 jsURAfKx4yZY1lSgFHlX4aDGxQDPisdOcANO7u3AjGCbRNNGczwhfgU+zq6FQoRHpd
	 Sbp3xpOoYO/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B6CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699679358.13980.15748410614563056619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01816a849adccb26a2eec9bea7a564cfaad4e4b88c5d30053a43a11239b1f533
Date: Thu, 04 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756996793
