Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F12311977
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790001034; cv=none; b=SnTlPNxxURjuPRnVSknzH3eUk0hzLXJ8MyKP0+9iwo4EWJowSCPSf/IEUoW/UFB2OzfdO2j60rtlxHycWa07AWYh9Ur4QdVxm0bp5g242k1H/t4BiU8eknnmtBKgVNtCJDNj0/A/zLrfZ1JSbzhjjfKGi7qT6kqjbwPu5IQODMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790001034; c=relaxed/simple;
	bh=K3MbsXm6oB8N4Vi2UNK6JcQhvObHGo7TDVrw7eKgUJ0=;
	h=To:Subject:From:Message-Id:Date; b=VMS1OIvmu2w4sDeZIeSp8ClvIKh7mn2/T0S84Wh977LdGcOK7TmfJTMpqkIQAtmnrrdopvjqBIN+dG2WG7X1/RVFY4qw4cI/GypagabJ695wvTLpQeQI6ukrfS4QisMwVw8qfbh3aYcETICKKJgyxoLGtDUH+vzImdSYf56p/fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKUxhKmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKUxhKmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF125C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790001033;
	bh=K3MbsXm6oB8N4Vi2UNK6JcQhvObHGo7TDVrw7eKgUJ0=;
	h=To:Subject:From:Date:From;
	b=WKUxhKmiMv+giyr4kR0IcVZdxzD5uxUbr/LIN9GB4Nh49DuSbnqZlCa7mXL3GoWEt
	 PjPejhHoUEFprqF5ConDy3qoqsRFuBGLfLIPT94bm8AcgA2FSsVv8mB72BNeoYa6Y4
	 ZmbuFiCcoUamXly/95627YdEm46AQXY1JnaDaCkJEdWnMyn7aBxqyNYywrOQiG61KO
	 hiydH1yONMUqJeGW3mreAG5ycY0JF+uTgcj4LVJmS67fS5DpA9n7b87oMGK/wl37iA
	 R4Ep+OhbhAQvf8E2rrZRsQhD17gqDlwex6YKwerQ27pZ0nApM44AkheV3/K8Xgphbz
	 GzpLxWVj0KsOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC54C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000103369.12873.7559715439981521562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a06d9d67fd7e6797c6170db379e825475810b31f3b97bf67739620c480e3cee
Date: Mon, 21 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790001033
