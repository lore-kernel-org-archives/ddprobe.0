Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F5D14A4CC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746591594; cv=none; b=G21TVcKWQ65iFVpSNGuOAZkVTQ6NiVe+VfM96CEJTUBMfycJWaWKa3U2NZQA6fFoyDmg+nyEgyHs4YzPnFbBYzsnN4tR4LNG9uVcnu+OnKZR0wgw361Y+xkkgoDrq36hr7InaD0StNgbALKojy+Jc9PaD2MUdAKX4yT7ZQdHS14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746591594; c=relaxed/simple;
	bh=l7wp7TvDpi9KSt+z5bhYll5Gr7GxiEtRvHpcmr7cEyI=;
	h=To:Subject:From:Message-Id:Date; b=ifHOJ1b1pNboUxxcIMyBiR1RN3LFc87lqtEpCYwh1pH6XBTF/6OnhFwwk5r4QIWNchAgYTNhDk6A42+Ffl68hmShT3tu25CTbfwSnhlO9uBXTU72xq+fODnVWkwuHjBzrJJCJTcU+r+QnLvdCzTNs6yzfUqvc22+6h9+P98a68Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eh0zR4ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eh0zR4ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746591593;
	bh=l7wp7TvDpi9KSt+z5bhYll5Gr7GxiEtRvHpcmr7cEyI=;
	h=To:Subject:From:Date:From;
	b=Eh0zR4ys+GUOMIDbw0wbljNCAQnRDHa8Y4h7A5Zr8kSZX7uMUd/XrsoT8LLLnXuX5
	 ixX2JPtcdgbt0wzleI5s8xvSFpiSHheMk/T5Y7SMf/IQKzMFsdHcqr/Bi2HMPZugOe
	 69ss1+5Jxx5/fnlO33vmdJVDG4IcQzye0VZzBeynH2pNIZhWCK/6Be62cY3UoaT8M6
	 lk0MSsxgj9ZNyqv+FC72vF7hoCudwASlzQZCB22RVNtwZP1KfQx6c8by1A2BRbFH4v
	 8dnTsValBDKc/5eoA31Bdx/fe/IzBDJROqZ1f7ZAD691WVPS5dsRV6UIaZXqCJ4AbX
	 1FX+kMzV4pDhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B824C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659159362.11254.15114746416794081590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f986e9d7153f191154d93f51e0b3bfa1484d9ed88cde24ea14d6c3f7d7fbf5
Date: Wed, 07 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746591593
