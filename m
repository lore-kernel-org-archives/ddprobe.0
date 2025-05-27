Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3738E249F9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748308794; cv=none; b=mXOm2AQs4iF10WAYkKHx8QayKrRxPDz2s8klxkXZxVWOWtEWiVVLD9rOStZ1IaCCK4I55jnvpErJjgctfnc2dNfpb6QXI0t3GCNPw4LWKvjnEe9oGMKUBWePs/+6L4iL6Xh8zBf82jObDB5plz26WliUM592uLAukPLmB6TH2hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748308794; c=relaxed/simple;
	bh=kk+YxTSHhugGovAGgp41q9++gqf2klEmTGkxLjniFSo=;
	h=To:Subject:From:Message-Id:Date; b=fvLef8Dezk/UTwwZbU+Fr8CctpPPJfyrKhSSFp2f/8R0E9ig4yHXaypLf04/j0SV92pPGkjeO0uLGg0qjZpXscgGPr8OneZOFybBfYHUmmlyex/q//yqQbdXMAg4/1kSjHziuwXEWLpqKmLprmzMygCFGXa6OAqpj11RopJbHBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3cnS0Ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3cnS0Ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C13C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748308793;
	bh=kk+YxTSHhugGovAGgp41q9++gqf2klEmTGkxLjniFSo=;
	h=To:Subject:From:Date:From;
	b=m3cnS0OvTcD760iepoYQaaQkPnv238LsBxkiGA2A6EQQI6OZ8p6PcBb4UM8ZkU5Tf
	 cDce7AaDPVNxdf4xp9gNyquyt6m847htYQnr3AclNcWcKoTR15w5RfQoXf3kF8/MxN
	 FygI6QaGPGhmshaA0t27xvuqaK6TU260fZF0ul5DyipxQ2KX7Y4uO4seWLvnDDBydw
	 gsvOlJxkUXjGwC9gOCJ9LCYxp8ihjdqpyAqQ+ugDdRBxfe/t4kPfR2MTwfLHEoco8Q
	 D1rP/GX+G338ylfqThcydmtIT1EntQHpW2Q+kvdkIyLrCmjV8XtWrC3153hEtCI4Bo
	 xbiufPQlggv7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F2C5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830879357.6695.6099666347191843772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd780e53c54802d1abca1fb35f8e97dddfcb0791b79e25a9f4d2e49d618111a
Date: Tue, 27 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748308793
