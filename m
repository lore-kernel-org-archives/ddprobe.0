Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE90421FF35
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752271793; cv=none; b=cDCEtxInm+cMth+fvIGC7u3FzYCzEi3G8ThrY4mFkq8LHxjitcJKuvxiE62roLZMlccrzNsiovpNet7JCJMxZx7Ri2PhuLXGd9qY+RZxUDZqr2fW0CIeTrk3zN/WVNbz+AWENoH+Sbjih04wxzYKo8+SpspqZmEnRHJbVEkhQEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752271793; c=relaxed/simple;
	bh=vA3vlJTcFz3B4OlwfB3tsI1u/HfR+vPv/vaIqGIiytw=;
	h=To:Subject:From:Message-Id:Date; b=lxO0DVo9fF/3ChyVQFc3oJZrqIHEFEYR1GOeBvcAnVuoHms+yScbKfLk9qCy2RW58BLNpHfDQ4Jl4nE1EPVb05ju6JvRBZndyyZqhMRV3UGeOC+fJ6Lw4mDHurlPTZEeQN7RqbHUbv1SWIM+hXB1IJN1VKY9n9D4UFzsjVzoHdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtI7iTnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtI7iTnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B54C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752271793;
	bh=vA3vlJTcFz3B4OlwfB3tsI1u/HfR+vPv/vaIqGIiytw=;
	h=To:Subject:From:Date:From;
	b=mtI7iTnEeYbhLZx66GWUn5Ot7ZeV2N18vqrcfUeLbSqM415UGYX25UyPZt7Xu1E1G
	 6v9H3UDX0ocNxYk8yi5hITsR4k57+EwKkCrFILEBuYWqrozrRZ8ARoR1cH35x5ZmVd
	 bgK7BzuYlx/ZQQIHcdfOFQ9TAd9+USdBp6x08pEI4uuIO4RWMo8d7ccfe01nZYQQ2h
	 N71XhHPMz81nTA/hmSad1bbuyjIcyy+PWl5aNfLpxk2fGDv3Wo0Yv0mRaHoq0YC+cF
	 bEy5ieea4sHtcnY2jMW83X7ATnO55mSFwzyuFg+Anay+o7BoBWRSlVYJ8Yuh6PKQva
	 LBsjna+m9WPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A4C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227179357.31064.5717709490304840301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1e702d0648313273dc261da18d38b1f40ea72699f23431315e1fb98c86fa4b
Date: Fri, 11 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752271793
