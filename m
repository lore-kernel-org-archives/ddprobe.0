Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AB72DEA68
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550914; cv=none; b=K/6oJ2wrizIGFlpfxXisAG3uSshcYt0Yn7Qcpo9w8o8qn5Q4pvTh8wADTw2AWpnbYiUbXuuXUJJeh2xecmlW7KCxjTtg7eIrbK3tOz/AurrVICNh65OT/lp0jfz4rnK7j804kOPSZkRS6zn/wYfbavtPYpScMGn2FijEN5rQ36k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550914; c=relaxed/simple;
	bh=MLBaFhIflgwgdQI6YGl9YLGmVWq2nRH3LsPvSZcGxvA=;
	h=To:Subject:From:Message-Id:Date; b=Gi9w7PFG7VqmG1sTDc+41V5EIv2TjZQd5o/g+TIbncvRsUVljwb/i/e8DOE+Za2EKKawC0SPE66LYuAYultFV66OBQQ659WfFU2Fi7GXdCB2k+ho0debcfBWy/Ow5dRxBFPl3pgVnY1YcOXXGuvBSwjPlTiNVI3jkp7vaUDECjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRP9fRQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRP9fRQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A8C2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783550913;
	bh=MLBaFhIflgwgdQI6YGl9YLGmVWq2nRH3LsPvSZcGxvA=;
	h=To:Subject:From:Date:From;
	b=uRP9fRQXQFngkjT0TEQ39Lj6nAxZl0u0OSZPrz1wzgJ6YDawmFZL2RW71y+UZusOA
	 3H5kfw3Ku7dY/lfieTloFUniDPoim/wv0DGuens33WeaLL6eRRHDguZNhwiWhlvswE
	 e0WXuoaSMqjd+iiLBaK8d9UtuAmVy4SpbUYjToB2zPM0ER2OAT3XS5jHpkzofbwLCj
	 fvTE4DoTp3R2+fnWwWUrGU2GMBaJK1mLb3sKq9NNugrEepnf5vSgZlk3NQZ37F3HTM
	 4HYbnho3OnMDc1vSgji78yn4aScbENpKdZHm/O0F6+EAnOjBJckeTsdZAa4BTLplGL
	 9f3IadEq7TIMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBDDC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355091368.29297.5562862464383842043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591c3c14558fe3244e9ff5aed1e2ce00c738665d656ed715f79bdbad8766a347
Date: Wed, 08 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783550913
