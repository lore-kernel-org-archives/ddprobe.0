Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC8D171C9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748426994; cv=none; b=NQGzm0CvCrojyUs0cATnAM00NuIx3tmubj/BUhTqSplWcedztcQndgXCXqwQaZ8T2olqSlw9wweAyDU9Db1Kp4H6OpZ8eYwDf2Epjq/rWq29gpP8umeivkQN3qnDsW+AH85RQxao8OfnGOIf5sWQKUFaNTd/W7X/MkVBFaJZLMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748426994; c=relaxed/simple;
	bh=SC3GEF8Zk2J8Fgv/8i8lFhNj+ZVwEqWHRjB+tNKQttA=;
	h=To:Subject:From:Message-Id:Date; b=c0qv2+tlliOoovulZYkUrASvl/KR4yST5eg+mYktONwekdcl6kf2nAANjo6OTyV75RFdlA8zT4T1SZJC+XTvFt26XYHjlvxaR3PlXLX6YMIeDyinJMe3K9pinl4Gt+WMPMod6d/qhNPtVydhxeyFoSixzhRp03Pvgdo6NgW4UdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+ipV+nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+ipV+nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5714C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748426993;
	bh=SC3GEF8Zk2J8Fgv/8i8lFhNj+ZVwEqWHRjB+tNKQttA=;
	h=To:Subject:From:Date:From;
	b=D+ipV+nfWJSPlDzfcPlr/ASu9TTxJKIlN6AQcHicPH8fS7H3Tra0xHUImHyzXxXPu
	 3UiffUmpZh9/cRCgxy3Lmu6FoSleNCHCMVYYpNQhkKF/25OMW0XTEU+DlHS3cCSAtO
	 Q0+gkZ6ebykkeBPzvObhexBMwhCeDPq6fZdb8DFDTUON/Pej40+dM51l3SOUvSebuk
	 Uc9X4cwi09QPyiPdN6IOwmL+98bFiBEs21inENUXk5g13N2/RoqYgTlCaOuaQ4yO0M
	 weS20JgtD2Mw3BNwBtE8nno8jmLoEYnWME9wizeHGYiyezMj2siB5k9Al2SjGIv299
	 j/T+Qdb+8SClQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90658C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842699358.11358.8086564741828062929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea01c6d99a09fcab6ae0cdf6d039b13f1e1f813025160a7bad3e39ecde73fac
Date: Wed, 28 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748426993
