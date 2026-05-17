Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A10732F76D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778985034; cv=none; b=G6kWtrhxoJWDfY1/a1uRiw+aLwptiJbz/Z0F/T5Yy+QAIcXUgO2ghYULuslC2bMQH275r9Y0ph1jC9YdG0TPxJQ9dF5R3a9kFE7Vp/30JrpOO+jrQWgIKa80+d40bPMIXuRHMuXqMZMMEugNbuwaLiEnU03APZbfEJ8nBzQ+iwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778985034; c=relaxed/simple;
	bh=1nOlQcks3mU3F8TpqJFgOzJ7YtGQwsnPLyK7ZFL8AjI=;
	h=To:Subject:From:Message-Id:Date; b=aHXewuEBHpYSS6waS/ypo3lLWngTCaOY/7r3/IsJivb6suOVZ3Mn+z1QeJv6WUMSu8zzojyQKu40mVyTpTeFfw6U2mN1WmTJv9y++/9TxocaU43Ld7EI360bHEju5DWUWEMMaWX3ZsmURffiwrBSNJKkvJrfagnI8leXK7+JzOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knfcw5M5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knfcw5M5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBD7C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778985033;
	bh=1nOlQcks3mU3F8TpqJFgOzJ7YtGQwsnPLyK7ZFL8AjI=;
	h=To:Subject:From:Date:From;
	b=knfcw5M56tu2EnLCei6WKHZjrS2rOUUr1oU4HMYmkaZZ/2xEKJKJRqJwprhRxXPro
	 l83RPjUqpYF+6XFUbjjct1Efa8out/K72t48iLhjK0rSBINPfp2PWwAfytRvMxHmdt
	 KJMc/PwPt8vlvM4bXCV5K/PfPTvxg/LpdhAFE/ZLvS34D8fVyVNEr6LC5r1Ka0c/Ei
	 b4fkqIvFGu+jk5VqAc0/JgDnQiWyqchzORp0kNN9QIiPLNht9Sy3DwVPPBuCAs1SIh
	 lVyZh513MAIonjOT8eCOpDzW/yspejTmB6UXVMxVIeDLX5wsojlWyRaTiGZIFSwSFb
	 aGic/q5Oqu1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC130CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898503369.13711.7119215084443472208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163b54e6fd1be1438188796d28802fa4cc92f05b202e682008cd26cdabbc50ac
Date: Sun, 17 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778985033
