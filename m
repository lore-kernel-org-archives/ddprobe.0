Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F56C22E419
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741172934; cv=none; b=NdO0b3URRgndEYu3qpTnpuDJyc62AKRvRK6nvA8wKaTu/Cctz/mTbY578HvYVIMd1Ax1jXHk/csKSl/LFEJuq3KAt9bN/jO39NCTElm1RxGXuST2iw2th9Lm6deA6LhcFcBNe182iebKzAiA93YHJCGBeoVchyx5QvZvBEjtq04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741172934; c=relaxed/simple;
	bh=GUX9vAfNfa0RwlUK4uEsM/skfbyz96NgAVhZ5bTdb24=;
	h=To:Subject:From:Message-Id:Date; b=oyANbvV0J1bMlUgxVSkdZG8jRrW4jaXmit/Ay5lSBjj/3/4DXvtRI2om2hSz9KM/jGA9C8EssBACA0SNnkhj+SAWnR3soHcXJdBBw4onWaUhLVfooAougsoRtfmzCMFk+vL9JQBjBDU8MqgXEbLmkmadRtgYx0HP6Z3okU/xkaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6cGUjOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6cGUjOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2A9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741172933;
	bh=GUX9vAfNfa0RwlUK4uEsM/skfbyz96NgAVhZ5bTdb24=;
	h=To:Subject:From:Date:From;
	b=M6cGUjOCb+iCsTgZSb2k52w1OMiNY73JFmGMXhImY38mtwqs5oQWbKvdpkGJS4VOQ
	 quwUfANdLkeYPrGb2rgg2ArTl8KEE0jOJYOqGBp1qjKTDg8MBBG+xm0V/bStmQolbf
	 DuxDP/GkoKQ13OxokeMfQoz6DpPAwvQ+5tVXW8FiNEhKjTSoZBbAbh3Wa5G5JsyEcT
	 4YqORq3qbJubLv6KDq3kDR47wDUAsWNbIOWOO+Vv+NZUe7J3t9F9vm3tKOerMAoP/7
	 EOaHXSOW3RaQR+t+pkO/SfeMQ3mYv0I6u0q/3pjRCMF2lQMMGrvhH7dEopTTdTGakP
	 l6xwF4eIcBPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C696C282E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117293363.17612.6461898102575551058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa9551e898b96ce0734804dcab9c401fbff76ba1872e7421e1f3d25237b49a9
Date: Wed, 05 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741172933
