Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B65D3624AE
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774836894; cv=none; b=T2vhEDcHtkEoFhkqDFO0N9mDxFN8CoyN8gBePRwrmUXXmhk+C1cjeAKGLnUJkCXrvrySgl4/OTIG4pI61b6pdvGxUVHLHL09p9oPFZDLcn3gBPfnS9MvNaM2H8W1IzC2G4sBgjRuyj5WCZiLaz+kG1BdieYhFQjiGYUOodCxvUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774836894; c=relaxed/simple;
	bh=jIu4IANsf5cSz7mEwIvqpZXP8fiyimNe/KvbTivkyCA=;
	h=To:Subject:From:Message-Id:Date; b=TE5R9rce4/Q0FCFasJQYugCPbcksxvlLRuNKJifmmTAX/fuQc2VrMxWVkYVILyZYKKyBo8XBN7PDi25fy8P+XllUQdHsQd6M8AZdtS1oqUgboUKqQwmOP5xRsqNj8tbS6UiyAHAS98zgo7vvlbyiljimJ3lIoFeFR08F7jhzIPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od12w2m/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od12w2m/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB1AC19424
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774836893;
	bh=jIu4IANsf5cSz7mEwIvqpZXP8fiyimNe/KvbTivkyCA=;
	h=To:Subject:From:Date:From;
	b=Od12w2m/8LrJ5pn8dkqbCpEx6PczPcEVMqp8ZS72uesSdjq17RfzZAO3AR5G992mM
	 XwSrdaVXaNNUrFUA++JZZYOAAl1rKwrUHNToP9mphPEf/l8xSBxg6tKMtCQDC0DqrK
	 S7U9oVJZkxzdbnRq9a6g8DwwcQUSZup88sQNF/yCzRtZKmQOkI9ECrANDspeMFWMZs
	 1Lumx30LdSJaPfOfaH9ect7FcnbZK+x7BaQ8vS+h5R7IFyViYb3kAO7UgNm9NVyaOH
	 ugQ2M5yX0hggRk0nrtEw0KUqICHhoMXBPPrHKf9uW/t/t5DurEpnqjR1ERFHDvVF06
	 Pz/byudgNJxEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BFFF4931
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483689358.11966.14464665763310526390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6976a581d732606ce0f9242ce841cc38395b29dbced4c842d8fd2a5421981ce
Date: Mon, 30 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774836893
