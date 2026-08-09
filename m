Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FAEA26C385
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786303834; cv=none; b=LqOKZ4OKCT0uUT+EFivSPXjPRP62iYmkTpOYwYdqo6oRUDxF/fFuxO2pqZmbA0nSKzjX8dqsPp/XgbQxLEV5di5UaK5m8+5+a2li+j/5lblTrynLkbW4V49Xc8zKH1EflC0PT0AO/SBRirvNvXS8sh344xbRTihGf45j0fUJb5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786303834; c=relaxed/simple;
	bh=AgapUREVVOiCMJGFS2yorfk9ig9irIyEyN+HLpXOV04=;
	h=To:Subject:From:Message-Id:Date; b=cx7qy3+RSY5lvE9yDv8mDU7NuYlNiG3bW2NLqHx9o9Ev6tCGJSF6gMo1XBzEJ4ZsAQ84sJ7INw2eolgQwG+L95RJBY8WzzYL1xVq5AJelfVjmvLO1SALJIPpPGiR4IVmj7dpmeqQjtyiB2dBvPgLy/ui2x18vkK53QCOfR4QO2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkKfjAyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkKfjAyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDA7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786303833;
	bh=AgapUREVVOiCMJGFS2yorfk9ig9irIyEyN+HLpXOV04=;
	h=To:Subject:From:Date:From;
	b=gkKfjAyBUy1M7qP1ax7ZnOumOI4Odui9N8vo++aMr2swHoRGPuZBxgwJyo4h2FzAF
	 uYc90ipYUSEtjRMVnLuYGCLPqwiCURok5CwFpmr7T/CFRTWKGz7tXlU0TbA4UHyqLy
	 CuZLzjk0w67sLoHIvjhvBoYobtcnO4ixWlBriE28lD4U+LoKV6ZZVAjJv7G/PkPXwx
	 u0ff47S3/FmRtHD+8TSaqf8uupQRKJKbnztkkc73H4B/cF2wLQ09ht6RorkwIPP4zr
	 KD2SALr0gg9t8PkZoJkTQdTzpzsrwWwSzz5hRZoBwwWTwsMvHm1LpUMTmeznKSnHrj
	 nuxhwpvhyW/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BB1C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630383369.30102.3804696842940661836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f9fc18966a2b470810b2a7c96dfe989dd7bba26072bf69a43bee66e5aa7e5a
Date: Sun, 09 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786303833
