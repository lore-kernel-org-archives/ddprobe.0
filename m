Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7B870808
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780967674; cv=none; b=T4GBlpw8NzcLOsw/g3DzCZIJZxq3QFd8vpiRFRCW64KgF3jI+OQMJEwcHmClFZBqE/n9xbBKA4S/2ixIvEmep6Cr/q0egfFtq0lqoGIJWTgqs5TgI78BZbdwwYfhMGDNT8LM7EIrU3r00HgYTVHRUny1hgyv9wg14SKY2ab3PuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780967674; c=relaxed/simple;
	bh=+zvWnjkxExlLfZBgF3T4ZcHq0iTqdwmcG2xVbnDi+So=;
	h=To:Subject:From:Message-Id:Date; b=so9lzkVUMW9EmkH6Jb4aFRRYy/pHSrdpTqPgWR6Z2TdkGfC5lhxehuPX5SBe02WOB6N9Wbf/8hEv4rCWWfFxRUuYXohCvV3b0UjMRcCmjIi+xb12IOBbWAw2nL4LpKfRrHyb980+QZ78dpLx+/UK8NXpNJZvq9saDN3QWK+rx8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEYVcsXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEYVcsXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0457C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780967673;
	bh=+zvWnjkxExlLfZBgF3T4ZcHq0iTqdwmcG2xVbnDi+So=;
	h=To:Subject:From:Date:From;
	b=hEYVcsXKvu3wFBJ4n9fnKMZ5xRHwpqGEUaPglfqvCFUdZmp+ZImpQPNRrkqmUTvYk
	 NKWc8bDLnJHfLHodZJyMlxDsOW3JKOWGIpSoTnqgHO3RU22XMTwuKY0sg70Lr4QrXc
	 ednF3r/c6Pz4joIvp6gBjPwYqOfiznQaL1x9Xz3p2YVhU4U24uJhwUSg18Mt7u0I39
	 gXY5GwpssydUBh0fzWknZ7bFbAN4qWkUXSxA2N2RclVTdUoL8HSzKVCG8zhA2Ew9Ig
	 igAkqIw0sykzqbtTvwZhH2/2gZKsIPTK7UnEXI3eW8Dr1KGntIa5nKheY5N2ikLy7E
	 O1cMIx1lzzzeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28C9CD8CA7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096767372.7456.16456807430994242533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca5ac435a968f8c10548ef191490623f532d830175f66e32347097dddd85137
Date: Tue, 09 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780967673
