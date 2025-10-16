Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD7A334680
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760634594; cv=none; b=LjnmQKHFmRsibOOed9/HPRx+KLAHjDGIhzsv45+yCOdz+UvMqz8ZTeAY+IAYkDKKaj2XYYkBTvLRlIOVsZp/KxQGiMX0kylHpEO47t/37SQP+N6sUXz+ZviGObC9IJZoG+tyA1kir/zn8Ryi/EpnbhK3pzuB+Fnveq+REaaH4Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760634594; c=relaxed/simple;
	bh=vs+KFsOczsNZ1KOhGblxE8ws2JTHrYRU0EtArR3t9kE=;
	h=To:Subject:From:Message-Id:Date; b=SjjtyWvrxblxCZI46RY7R3VLNG1CZ3kjwSLNMsbqreVA/Rgndz7HtIwvkxx0y1QRiD0LR+Irx2/AMTurlcnoTaaVevLUCW8hi+Yh+3WmWR/4MbLU8bYJZHgPitcnaY67hyex6K3BI5SkljTT+YkMpJKokkKjt9phiT1zU4yHJ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AA2kc7UB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AA2kc7UB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A468FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760634593;
	bh=vs+KFsOczsNZ1KOhGblxE8ws2JTHrYRU0EtArR3t9kE=;
	h=To:Subject:From:Date:From;
	b=AA2kc7UB9GhTV8SEC3zgoIQm6trjVCm+8vfqu5VucnXjWN+NXZ0Zs4mWKrbcuON11
	 N7oFZKrZ6Qevw56D6CMhIPbfQGLk1ConInAEcKL/6/102ZXZIwBs8ewiveqRM7n0tL
	 pWDkJuEhQFxdTs7e3Lr9utVYzXkMxeyJ+k1e/FQdWsDkI0qKhh2ntjY/Q9QiYq0kHT
	 cTGNnl2SZlzmroZkOzQBbleiXB+P5U3b/BRudG0HTVh+Fuh0J1/T24JtNuAXA6C4pt
	 /PzitI4llVjjSzu1rCJUeknvjzAYAfNNsfaMa7Udyc//v9t480ZFfyiEVEQsnVTRtK
	 PRdBfMAmM+eFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D4CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063459358.1922.12933420374538254413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e88df9b5c5551f9035cf772f20718aaeca63e1d9d078b5a44e28ae9ae09c25e
Date: Thu, 16 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760634593
