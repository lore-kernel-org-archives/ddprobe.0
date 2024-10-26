Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365C01C32
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729956354; cv=none; b=Y6l8UvSl8YM8+eq1XaJ3zGQSD2fMXtELD5cyut4RNqrBbt0lownA8LQhUWeCmY9vBKKA3rA6/jUyQI72bevc6qgyVE9ENYg8VaT0mimxSLMrJuqJ9WSUdPZwiWlcTtqsWJZiNkRpvVCA2BApVJ5Jr5hKJFTLeTP1IXAPBZNK6lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729956354; c=relaxed/simple;
	bh=n7unLEBIyGlvrp3M7QhJkFk1JEfAhcdGmYHfoy1clNA=;
	h=To:Subject:From:Message-Id:Date; b=llUJOhuU98oz65EXzcTwOSumJJi691wEJqsxRE4+KQyo/sTv+7/49tNEFzAhCSaRft1UKoimC0ARFJNm/2uAw/yc5kZ9o85iuCifQqXA3s5v7gsxe7RFQXavMb7ztnG/OkyvmmtJ2RAKB0YRpOHEBnExNiAFuROlFN9mDoJr2q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7oBlpBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7oBlpBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3257C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729956353;
	bh=n7unLEBIyGlvrp3M7QhJkFk1JEfAhcdGmYHfoy1clNA=;
	h=To:Subject:From:Date:From;
	b=G7oBlpBBXSbNxY1yiwSro7xtu/A5fL7tCyCWKfnua7BOx8glM3PudTDd5dB1ZgwUJ
	 pKUiSs2Lhqwm5ioKB+gwJB1VgttnWl+BJZQR6ErhffohyWB9LArfsRod+PIeDNF64x
	 0Ka/GyNDjLU1l0AEE2eyz+N1NLpCioukzSbIM3UMkQ0G7icZMDM64zvSMAud41AIaa
	 WReOLMJhcVGbm4L7gwSuFpfXSnxn2268KJj8W31C+owQsF96frc2eVbn/lLxivI/q6
	 xWdtBk8n9gZX/tDJElas0QwhgRqINTJGuYjbQy9ZHr7kUX7PZX9rPPGhW6BUr8EvUu
	 3b5iFUCantspA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDC9D10BFD
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172995635359.4590.5290438458582956107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8062549781fecd686cd210a431ffb6fb36ee76387407dda10d792b15dcb94fc
Date: Sat, 26 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729956353
