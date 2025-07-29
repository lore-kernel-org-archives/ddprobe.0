Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26B41B3925
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753818593; cv=none; b=p95KrqQSoDH2gCDzFK5xqy9ZpSIKSFKEDvI4Xv6eku2EnxPT/XTXSiFQQko6p9m/UzIPh/tcM+a90fE5cO+M6+x47UQKBSr05az+mC4wFF+7fd2lPCYB+JOUeWqC+dsQFzsk5DHVtlMqQPSPJfI2hzEISnzd3S5E5UnAMq0xews=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753818593; c=relaxed/simple;
	bh=wi362CPwbuAKyT4FCZPriL1CyDze2p1WSKnt4p9/r7I=;
	h=To:Subject:From:Message-Id:Date; b=Kgsy4w6yX1U0VKw418H1XGZLpwq2+0OJt/4d8KFAmAYDUo9N0K2wgzY5f2c/f6pmpc/PyJ0CHMjFpFeFNgxL6JAgc/dnMS+lsbqEUdH96ADujx4KFDmStGC9k6RAt9fdzUVyG7NywUL2GsLF+8ZudpsQ2uvfmIzJwGoZfh5e+2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyPnr7g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyPnr7g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC3C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753818593;
	bh=wi362CPwbuAKyT4FCZPriL1CyDze2p1WSKnt4p9/r7I=;
	h=To:Subject:From:Date:From;
	b=fyPnr7g6KQyFJyZTbzJIdZWqHehXufonlP2DgTpibvnkyMl1GOGzs6VN+ZjLubibi
	 iBIqa8YSMeh2DmTFCxxN1YxUdA9Ns1m3lLDU7iI8RbG6WWwJtZ/Zbhdn46Am0e1Fi8
	 jL6yq80tgBnjCCogEfKpZz0oUr8FcIfHUPsFuZtksPL7m9iLyra/jSYMcxhhC76fji
	 jUqh9ryK8RQo8RSSw05H+yC+jMfQtbTxG/2Py8poWFIjXyTAwhpQ9X+PI/SzSDEJ45
	 oLaIxzJxveU2x32aEOASj5xn5PQWLJeMQGNXSH+w6J/Tk5CIoYCKpnyyTzX+3n6Uo9
	 /C0HHsQrc56Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB9C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381859358.28604.3810320760534303824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e937cc35e33a1a724775668b314c4cee8734ccbde6c4081796a38c90268ee5
Date: Tue, 29 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753818593
