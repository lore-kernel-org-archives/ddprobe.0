Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D813921A92F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752095393; cv=none; b=Hpgur3RPyFodo2lTrF/y5mgzfUcKB0+i0RXTrIUowzF2w7+iRZsCCTfhrZYjKZNh/cPMkvGvT9OabF2IBzFZh8NgGkadxWcYEO2A0N2hNk/og76JONTx9BlhIC5ZcrsVKYDxY1ZEGsZ1mpykRDnXxg9ppFjG7l0pI2z8WVQVM6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752095393; c=relaxed/simple;
	bh=dgrgkde9SNEJZi4qa4ZpKZbsg5TsMXM/XCJDkgDolhM=;
	h=To:Subject:From:Message-Id:Date; b=UKVfqPbEOmZ124hDv43CMdxGY++1IsBSdACsPku++LnyIB4u++1DxhnLiR1DTtZ7wc9r3Rr7zZw6mNyhm3yI/GYqAGt5bP2DPBD9EFLBI9Kq2l+XxjdFZv+3TCgZF35j5ExCSBaugX8ih5whsNjWsrGREgCB8DBhQPKqJn1fBcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKXETvpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKXETvpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5558C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752095393;
	bh=dgrgkde9SNEJZi4qa4ZpKZbsg5TsMXM/XCJDkgDolhM=;
	h=To:Subject:From:Date:From;
	b=iKXETvpm3TiIXrcCyOH8luYgTaptLFR3U/cVTszAtOOA3w3+4KZhb5eThIoRgmd73
	 +WHyw8t8EFtoAT2RamCFnYYTiTOWu0qAaRB7JLmf9He5HKDNaOc8QYYvXomiaxaIrK
	 UhqEt6Bvdlbnx44SkMSDyY4uSvbtFJQKWYY1B9ulCYspDlt6EB/TN8Qu9jOpZ7zRIK
	 ERfs0ridB30coeS8diQLtcjJbSkHFixjTrESrMs9UWn2b4T6fYhUsXaqjDJdJ5a6Wl
	 mM1uzCNNTy25XN7sR0Ji/GIwwmU5CDQKtn3NtkIn5JFS3joAyEWzBH3CYlk7VZmLWB
	 lwOkyfS4NqJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94135C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209539357.6951.18425152389212178428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1faed4ed206fd028c92bb0bff06cdbb03b4f2a26e7deff791db5189d30126abf
Date: Wed, 09 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752095393
