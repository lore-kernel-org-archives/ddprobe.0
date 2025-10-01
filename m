Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1805525C70D
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759341594; cv=none; b=TmGNWYlkGniqXkXsGkCUwTn0jxBpVCvEP1236j4b8vW0mTZLPFClNvHDOGHF2mN3AX0HBe4IxbYMkAxRDDfEiYuPF/S0VKrluAenXrPIUZrfyAw/QP7C7dfIBzl2h3PKw3hNhSYDgwpEUMpaO+sB5bdtgp7GGXDsfwE8kcrxpZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759341594; c=relaxed/simple;
	bh=kksV/GkWUuO8Dy73mKp0WXVpOezlfA3facX038Rw0o4=;
	h=To:Subject:From:Message-Id:Date; b=L2S2OawM09bBovb/Xet7Gelmw1eeqriAYyv6XUcydIgpuBjglHSIZbvl+mgkSOu0cGYljm0ZgRJ+UrRD2JQYkz4fqGEFLAoc0n3SlR8MJtqV3hnsG8VgFbSDr5i3gHHpm1t04k++RHnXvOE6gA4+3QPipTEbKyV6y/b2yoK5DII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhLv+56X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhLv+56X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7BDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759341593;
	bh=kksV/GkWUuO8Dy73mKp0WXVpOezlfA3facX038Rw0o4=;
	h=To:Subject:From:Date:From;
	b=DhLv+56XGusAjmspJ81PAaIP/0mNV8sphNybflrm+pyxgX3/ki6isPS0SJqiPVxTK
	 8FA3Uq3lPSE1L7HoVBGtegcSQ7LAOHud0dUt0bSWKVN3gzFAK2JiHKtYsIko4d2Qkc
	 Zkvmfi8Uc1Puk+0SFfG8HOF4dNizMmTwyQKkijifqPfbCDiPOWHJR5u4ALfDq68nvW
	 uJK070AyOGvl+/HM3zlb77AOJnONyCZpB+b2ZMBIzu+a+nEGi9Ev5yYK1ctgODAPPv
	 5OIiDphQHAnDHWFEq1Wh6r6xKDDqLoIStLyEzDYy36MEAW/Zh4UbEhZ44+ZCN1NI+y
	 caOQ4EkMHCPAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90107CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934159358.27407.6110301501359996643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b946d04ffa2530a9a74c4819c42043ccc42f0e66f35628ad00fb8d3f80434da3
Date: Wed, 01 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759341593
