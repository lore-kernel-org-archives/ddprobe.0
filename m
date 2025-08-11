Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1344C258CC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754905794; cv=none; b=NSc7AsxL+nH4ifCcYaXrif71U5ULKWa2rJYS0uuxFyf3VE6xeKX1cxu1dWepHUZwKkZdJjcG8L8/Hqw+E3FjrOE5G/Jc/UmpBjpXocpI+Cwc0ldiKPEef3sj1QPwcQesPg0eIRTMZ+tV3nr+8M30mYvCV3HJt0G9QH2PboTzlDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754905794; c=relaxed/simple;
	bh=vh+p84vgN7wvoGIKJVtdQii/GHihC0WpZ5gocRE4Wvw=;
	h=To:Subject:From:Message-Id:Date; b=fzLJ8BDmMhKvvB0v2QWG76vFyIP+oLrNujci7TMWUvILjyhz4MpxB80qnIA/MrnZrXJwv+ufm8BUnF4nZZm9tl65mSacPu4uL1gaAYfRkQpt0rPc7qoCrtewq65PWyUNoPP0Oa9k0QAWzVtzGOi6vmLr4RXtDWaW6hjLjsNmcMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MglcCLKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MglcCLKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC44C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754905793;
	bh=vh+p84vgN7wvoGIKJVtdQii/GHihC0WpZ5gocRE4Wvw=;
	h=To:Subject:From:Date:From;
	b=MglcCLKlRGn08fhZFYixS+PdD2tV488p8dUmg3myki7Ovzz05Bw1iFeFcvuKW4L/e
	 ci66j4WKnfGbpKgppRkPY6i7stkJIEYzU6S1Wt/0PD/4UzukLngcYph4OO1kN965bg
	 BjEffSlNxkqf+la99LubOIIttberv9jFFPiwT+2VEeneA5jGGXnsSHErgRUBIjkaON
	 2bQcTG6VOvRv9zm7w/r47ezyVHIOiq/a6PiqcLGZZdgXVQ7n17cW0IBlui/DxIRRrd
	 D6wkhoi1Ij5ut3MFiwPGKgP4mwVkcNDkV2b746QHeg6LMuZ2Axz3xiUYefzxo9G1cN
	 CaB2Tud9ePV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED27C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490579357.2271.9675776507134024927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8cd6f50cb561b2a79c4f8bb0feb815175e2ddca68269417532f0a5dc03113a
Date: Mon, 11 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754905793
