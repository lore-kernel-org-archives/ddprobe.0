Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7927464
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752607195; cv=none; b=NuJWjGdZ83jnSSkn6sBnUeTruvZx4imXiGC5DYQJOQuOfu9iSqsTwM2O3DQ87bwvCjpQmgarhjVd3IzOn5aUSjprmQGDJBJM0QEZlO0SLv82ncIEu/kR225sRoFZ+VrZK0UKYc6RS0MJf8vC/HU0onG2sSOAc9/jHWROtSNWxvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752607195; c=relaxed/simple;
	bh=/JulKYC/c05wqMfErTzOpra5HPiMXMWmgbItdlFgxY0=;
	h=To:Subject:From:Message-Id:Date; b=BR42JoD3DE36cY2bnQwc9WplObPlDk5f3MRq4VYn0G//cOchdVi951b3AEjXL/8OeeSVjjgQIi2vQgSWI7xVPiKjQS7bYgQz2mDLVreRvLOF6WxmYWGoA4qb08aJbtSj6t3v5Jo2D6JKbIVY+d/shpuosMFEnLWI1dD4SbJ78vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxEm9Rjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxEm9Rjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98EDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752607193;
	bh=/JulKYC/c05wqMfErTzOpra5HPiMXMWmgbItdlFgxY0=;
	h=To:Subject:From:Date:From;
	b=uxEm9RjpBBRXYUAT6K6OOj8rdxrjAyXLoL4C6XG8p3FUPIekfdEcmQtkbdwhc30Mx
	 4y4iCsGuBc+bWQXxCAPDHI17Dzrh+lRjEJXO0Xj2MxDJTeaUDzCG9uCH8unk/XMAdQ
	 IE2wkAKCAKnqHyJqVsxbuVTJJd5CesJ3B3BKofQjFD/MLLThyKBHmeL7L1WDa3Ftjn
	 gUXhrbW2qgIUzsdTeu3yHnGhQGcSbe2ZQQYLfGUbarnskoV4dh4Fas8K2vHvAwoW9h
	 d2UHj5krRoBer3l0viSATiTX7Wm6tF3VxzpA1dadQFd0zknI1LScPnaA3JTvN5OMZ1
	 CIe8T3yzfR8pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2BC83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260719358.10022.16968455841961408537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4fa59338825a7a7cd54a20ac90811cf4c34ee94f1cee291c64b1a0a0920b0f
Date: Tue, 15 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752607193
