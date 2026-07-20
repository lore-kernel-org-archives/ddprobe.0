Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF0330C37E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784561314; cv=none; b=Qlgaw3yC7c3bKu5nEvU5YR2K4DVh7bBX9TYrig5DwM0ZhByZ6ohCfoTs08KmMgY9g10P972J3rqmjLxBVKP70FaAttYqwNSKwdAfqyWTGCDmxwXdpeqlI8tJUzHJXYONYHhci9TREqQ2C7biwfOCjuVt+Z2FxbTO9lDyxWv8ysc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784561314; c=relaxed/simple;
	bh=M3SidO1+aqvzLRUyCJ8Z+p0nYmeznxyxlm2sQwRlloQ=;
	h=To:Subject:From:Message-Id:Date; b=ch0A23oe/6J1WPX6Q4vuUpM7Q6EL9txFgMnNscVvMec/MnXSDqb7bg4QjlSebLteaBxTDn1biapadlvi+KiiMuGUZJWOfF8FTvAdbx/8SZ4CLwTYkmnNXtrcpJptMVrZ1RqqlHMh2Qyb0aeIdvMpundWvIihrF/pxtAHWR99m5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McccJ1dI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McccJ1dI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD24BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784561313;
	bh=M3SidO1+aqvzLRUyCJ8Z+p0nYmeznxyxlm2sQwRlloQ=;
	h=To:Subject:From:Date:From;
	b=McccJ1dI7YbPvbvQWGLy9U81VyunWCnQybVbvM5OdLXfeuJA9mPzwR6B4/MLfvV5r
	 WR11vk9A/kd3T5cB5hLAa+tpcyrmjej2pkHQkGw5jA7XsieaHRyenyqcyeO3+RawOc
	 9USq7K5pfzSfIyZg9LD537ef7WmfSMmYfeJT/31iYDNhHmoJsUkZSmCLicAh6qV9aY
	 rwF7Hdq6WRPkSydv5YDPWUREDtvO4UqYeRgjqfRfHiMjLNBimI/M922oILEPvwhrC2
	 a0Rpdv1fJAI3Tqac2iPi2rRfSzsKWOQwkWtmAZKMg6oW2Tipjqh0DIcqsLYsUBNNR8
	 kOUrVVuOUwRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9840C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456131368.31468.8894095130942321134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e603bb22f389f443853ed214206994d597005eafb50c6eaab935170c8d90704
Date: Mon, 20 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784561313
