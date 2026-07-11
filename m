Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3676F1E5B63
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783772314; cv=none; b=fm4DqyBz30Tz7bk7A+u0kvXxryD4JA7sX6JFiwJ2JzOxhGZJ3WYEEl9c9tkdSehPDDVDGoS7IVZW9vqthsvwcbobbr2HOOUlWVRDev0QxkJnKip4xSyBSNpxefHU6PZw3KCNwG6OTnuhtD6u/83O2NZJTYL6U0CBBycSHJlJ7Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783772314; c=relaxed/simple;
	bh=e6q4pnssjO/D0brKlnPb3sZsu8vIrQI4210DcVM5xeE=;
	h=To:Subject:From:Message-Id:Date; b=kI+ZPNQ0wo4wAhY4D/DItcZqXMk6Z6CzHZ4FxJLWqhaLztlxbZApvaZkhdDvPdQcmL6Uek02IaP9qEAzxGdlQxwAgBSRb6EJtna9KSs1VGMb061GjUZNgwv5sugrZhk2AIzfVmzS2AItAcQVZpN/n84oneZFY+yAouSQDECyfOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYxksQTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYxksQTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDBAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783772313;
	bh=e6q4pnssjO/D0brKlnPb3sZsu8vIrQI4210DcVM5xeE=;
	h=To:Subject:From:Date:From;
	b=OYxksQTru4Sjl7x4SCO+0/uKhKlIAqaJZQzZWGZo/1dJzDWV4tvrYQLw5KYK8FhNS
	 kZO5BfPTsjvOgLIoh86R9UHqW1BG11slni9rBWntboEZaYynrzu/wk3IF0yWLwiO+l
	 2xd7YSx+AwOgqCZJqPPnAme3K9Dm/a6V0JfpM+X1XBWON6so1bg4q5Qf5IGm6AxPUq
	 4P2z4uvj/7NGyFI6sA/Etd/6ElyjMRSsg0F81muIbSFDqFrSpct14N+Ze9xYl8UUl5
	 eibL3Us1hEL5EYirwxjQAb3rp4BPxxzCe0+LbNmB2raMzsTzIyR9V1nbGCmIVA0an0
	 8J7ZCxu4Jn64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE16AC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377231368.13513.13597620133835817499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e7f2bf87b3b8e04945f00bfbb0f09926f12f416144fd5d7cc599169062d8df
Date: Sat, 11 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783772313
