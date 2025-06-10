Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0D725E478
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749536995; cv=none; b=sRmg0RFh38fxgazCLsjxOYEOVY0BEXjsukp4Brm8EieAcxMUxTRaKZ1Atb1aXrGxh3bWFhGaBj8Zep80/3HSEz5cxgU6OrW9k70vBOanJZI9DL7M9FZnY9fg5LeWOfLvGj4xp8Ekgh9Z+oECFeJ1F+STTdW4I6ZFjgGg/pHtKac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749536995; c=relaxed/simple;
	bh=r+Rvf1OVNNlY2L6lsLtTqCuHPXfiyN42CHaPfPvIm90=;
	h=To:Subject:From:Message-Id:Date; b=YyvkEEVPNChCzeXzq1J3Efqz+BvJrqpbqXNKEI6gtxBav49tuTr9QzTUZ6ZfFcCCe/ycHFNKHP9774GTxaa/d39siYnlmmeLcooB+Epd8aE3Ey0gZWHs+EHydCUH//lVN/PWJ5o/xMMkuo9YdXToo5qmCuzQxoFTx4vlJHJGv4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+luqNxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+luqNxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0101C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749536993;
	bh=r+Rvf1OVNNlY2L6lsLtTqCuHPXfiyN42CHaPfPvIm90=;
	h=To:Subject:From:Date:From;
	b=X+luqNxIJz5RqLP9LY/NAT0/U32CMNAsiUTViNRcIqO8uht46DBAYszWEOvc5aFbf
	 hoeaGYE6EeurwhqMYiiO2YdPQkwgeEwwzmxSXFTEZ1V+MVYKgmzoyd18Ev8tM53wiF
	 vt3mWOXrV/b97DohjkIXwG66GSLclr00W0tthNLBqmO5nn13OUNEPuSr7kTYqprLbp
	 5ZWQAEtqp/fc60ED0UkFWcFzOjdTrlexZKJdCpcgPJ8Y0lvWLg1BqN1hy1YsW3qcJx
	 lZ15Vn6koP9ABgzznQD1Cycd4CMKQgujRRVFD6CxssYHd+L9MAldeowiQBYKd/pSjG
	 nlP5nb4+IqxuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A1C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953699358.7378.12855397686752187101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711e3b42b8146c8dd89bb2482727f07fee64ada372bf575a6d484007a74d4454
Date: Tue, 10 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749536993
