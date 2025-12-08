Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4A01E1E04
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765234374; cv=none; b=sNF/kWodxRW9GGu5Z8+KFJYSfHwdAMd67QTxGdYFfOTMzAWZKieiM1upAjwMz0VPx8rkjZXffqcGklGWp7DN2zDPaPCUCZjcrbISKm9W6zxYqAfxvMNWIBFgHCrKHYR0IWiP4CyOBr+GOx4uRcgFawk+dOmFvKOC63LBldI92bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765234374; c=relaxed/simple;
	bh=sNMBcHZPkp82WBAsLDf0suAFbNJCd/ccDKw5KwUtamA=;
	h=To:Subject:From:Message-Id:Date; b=uqBrByr6Ezm7Ll854+Y6mY48AO3/5/kABe5AB1HzkKrdUdNqZmYI3efZID7gWivG97XRVit1SCDVBBYZ7EPM00S9zfR3TXmQ4WdCh7iyZJ38gAxxIHHyxNbbnX66UMXSA13nAKVkkx0h1ijmUj0J0RVf0dLb9pvQwQ5uxBiau3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD8OII8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD8OII8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD029C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765234373;
	bh=sNMBcHZPkp82WBAsLDf0suAFbNJCd/ccDKw5KwUtamA=;
	h=To:Subject:From:Date:From;
	b=GD8OII8rAl9PKJQ5h9nyLynJIhwsdei4cN8n0CaJ4WWVrVArzCmCwimLrjE9Y/D6g
	 xkwFWZOTD4DIFicURr07n1oSPfs612hstG/ct647ZXwQ8xGMj09VyEhvezgnLs6SOz
	 lzrHpPVGIBfv9laqOo2nitGkrrtpQRgV89TF7Gy7LCiJLGd65tvjKYRhtDmR+M0TVX
	 jiXkUp1o5J3av4SwpVNUBrajCHLXDIKTCcrUE87m2tIlFacbhKYlJd8Ipbsapa3Fds
	 eLy+rFAHqAB2iAYiilV9bbENqfFqRH51gStNh7p1a5tdQzj6G0BAs5e4xLHoFjjzTa
	 GLCyB3eQZC/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27DAD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523437364.22437.4491601398269688692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc448af25cb8b3790ba25eb549f7c847a44549a49a12b5f26aaffe2db0c35b9
Date: Mon, 08 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765234373
