Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4311B2C08BC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781229994; cv=none; b=rLJ0oc3b0uQ6e+w18Ct3bE+HiZxo7SmOjMjdPuWk8d9ubUPNNmi+1cUiTkzmXUYVAI5JATuuYypTcSkxqMRDS+ezNpGIyv9bvyrHp1Fx0JvjEiFgGDjXoj6T2szRRdk93+kLIBIT6kE6MTbZoGnQx859yi686/s5VuqrKTyHhuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781229994; c=relaxed/simple;
	bh=SDXVpv9znG4Cb3581cQYc7cmAOE+E3Hax5JXcSeqCn0=;
	h=To:Subject:From:Message-Id:Date; b=kEHEzKvNgKHoUopRs0Zb8AY+DqNX/CQSiFrF+huJpcvqf7SwQj0nNBZcs1L5dufaq67HLJllb4kQ5XqBHytVwiQo13zptWRZiR6ALM19vE0qHfrm+fglC+4uj5Y/TlTimP8WwjZ6w3LH2pfj/0cfHy6PAPqu33yKAOfBB384pH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTiN7+G3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTiN7+G3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB78C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781229993;
	bh=SDXVpv9znG4Cb3581cQYc7cmAOE+E3Hax5JXcSeqCn0=;
	h=To:Subject:From:Date:From;
	b=oTiN7+G3Gv4o28ybMmAy3Jz9bB9nhbKQ+J1vMSRz0urWZq1VoY/xJhyZlPwOnhoDg
	 fGhJHB6y52iv8ktU+WdoCdwzrXYq+b+CoPEJOAFLUF7nPWcMFMxmCH7YcO2czTeBrA
	 0FUUoRv0JA4plvvyiqMcv8lgEXmtiGwG98TfafUwh/htHmK9dimXvFM4d2SNzK3T+Y
	 LMpd0/EnNkwF8qoCC86xK58ehs+VESGUD6O7vH6zUPefv4B+3RIuceRJWRtGBC7+yZ
	 nDmfitRUmCYCSPrzAMFrIj2+6J0NPgdLvVE3qb/OMh7od/GH61LWA2xyAkaCeveG07
	 ukX99SnGwkKFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB5ACD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122999370.16731.16806849230441803126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b13dc92ad6314d04b5f1af77f23acf8125f554f47e56324aee27818b4fdeea
Date: Fri, 12 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781229993
