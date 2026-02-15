Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED942EAB8E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771165494; cv=none; b=EudG2vF9Bj+grCmY6LcN8mgy+S/8phuljiDmgZmp7EYCCiLoIGuJ+KdAoADdsKCjSs7+JuueQcYIfQClrh/sxB5Mram/MpAZXEzSZ4onbTvJFm+8ckPMFi/JEzIkIfmPN1n2iuw/USRpoak4NkdlZWI4PmgSdnMeD+hXvq5gYds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771165494; c=relaxed/simple;
	bh=DUD8qhzfAv9ujJp7mo/eABjXOCVAaRpN5DhLIHj1uak=;
	h=To:Subject:From:Message-Id:Date; b=kF0rrtB1ta0z07gx2uIHdOgmvKISddipR+DV9kAzo1Klh9wGrnY7cjTLe592EX78ANSLaCGUq0BGQQ6elT7FfDLAy6UvmoiI8GspPeLDit9qs9TxAf4CjiDYK1srJ/KgrtIjY0Zifw7++5lZQHUBrdzfUf+QB2hxO80WZ/uFrfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3Uomgzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3Uomgzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF78C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771165493;
	bh=DUD8qhzfAv9ujJp7mo/eABjXOCVAaRpN5DhLIHj1uak=;
	h=To:Subject:From:Date:From;
	b=D3UomgzwFo9hoHmkrC15BQ788x5cZVXKDmJCzcC+TzymOWoRL3aJWEQAZWDSg/lsN
	 913om/IiibZTD+3QG8v1iHUNiLtscjBwb2m0CMNGEJ/KAf6ETNSIu2+lYAxlxbzm3K
	 xGd/gq80AiWw7s0NHWHFHHDowPWXHAPn/ny/1ylCrtG1dTilXNvcWLKgVHtIBzAt75
	 AZpDQOAmiQsPyyi/Tj0fXFSLOz5HrpXjQuQwmfkYjEQWj8+sUXJqOJVew3zFd10Pqr
	 Rx5QGqFEje6HI/pfYy6JPIkfJaJLmIyx0kQigbnnuEk1CQZlPU+SjJucnmFs6FGttN
	 OQ6vTnzuhZzRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E94EF587C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116549363.31975.15683933143984476140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb956bfc88f6fbdf3b2f6e36a633eb6f69a8fce1dbaff5cd66e5524a8d49425
Date: Sun, 15 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771165493
