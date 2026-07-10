Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CDA9443
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783642114; cv=none; b=qlTkh34RBpFYNQWGXAnFEITo1Q9w/YboIlNQHjqe9cOiNZVKvq3yewRwEV8M2BGvIXUqnLtzaoGnabntd1NsoH28oJmlvYBCgQvyh/yIjdLK0FR+1Lqboh2HU19O8B9OM7oqTQVIo1RWY9SJTKiQqRM++vOzi64VDymhhZnHpx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783642114; c=relaxed/simple;
	bh=qD05SGy18ryeOH0lPMXg7dNP0bcxH/Vx/+t/SzYgan0=;
	h=To:Subject:From:Message-Id:Date; b=LBDi4YRLfJd8LN3SFE8HDmR94t0demG9KgLPPlj+Ed/O5zKBiPg8dqJHvaVDtBrY1yfFVqAMOZe8LDxxey9h2cwpxVo1pPvuHSqOc2o+9aFS6kPlhuqJ8ZwRzSW0A5RQC8fMOyEg8gMmxkU74hbU8+88o1VhopC7YV1hV3DyEXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rdo8oT+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rdo8oT+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB936C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783642113;
	bh=qD05SGy18ryeOH0lPMXg7dNP0bcxH/Vx/+t/SzYgan0=;
	h=To:Subject:From:Date:From;
	b=Rdo8oT+tcTD5+D3/Bx8pKt3zmXniSNHzkJ+jNr69dRqGu90QddtbhDbQqh8CD+jXE
	 PsN5HSa9fIZUxvGueKsROV0pVt25UxbC5mjSKoEfBU7nNkht7Taw8Yw6sDoodzKLyu
	 9nJ4cJJBpT4ETNC8liwzzA4j4f+TOjdRBPMJgV+YbXkbQAJxlkuVmBYqYQ1RsoOCpv
	 cnwmFSqf8RYebC68pWn5HTAkpi/+Bt6d6DhUlWo3XuzRGaMblt1T1J+78WcZ8HXlJY
	 7gLNzqhGYaMOdVZEOVCD4mktenD5cKBpQYua74XlXISOoL9ADvElk9KJXnzwemfq1B
	 LP/kBzUfxZA2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A931EC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364211368.19179.7002183556119330052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b147dad584146608be13da44c2d7fbcdc19be8f49db47b7d61d2b17bb6d70b70
Date: Fri, 10 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783642113
