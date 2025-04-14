Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AD61862
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744609194; cv=none; b=n6yMlsykFkFjGyWOV/DxJsulm5hoJNDw6LOwl++EHYPwNb7ojrj34Glj951WEjgwxGhi4+MYoGV55b7eQZ5nRFs8HPRIDd0/OQadJMzV0e7olEvxbVb4oQqEvFDo8JxtZcyy3q+Xd1REJbf6biIktuQPcTcI8tHUa8mcxktdE4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744609194; c=relaxed/simple;
	bh=9ZHietvmJPmwP3iz9ITiKhy11dhLDQ8bT5fmbdaNYNk=;
	h=To:Subject:From:Message-Id:Date; b=Agrg0IK56H9v55OljgL7iq6C4hoF9LjYC+n32V7ovjGwmpkiXMKSTaodqLKcUdjLb/obOVfQX2B4h6+GLFmsI2Vg7GbhKMOKCjneJZDT8vRA+tRDIV4OKK/LvQaMXeq32tcA7E0/JaaICeGxDU4NNecTvQTk3o24G8OXMks/UFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wuq8aQT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wuq8aQT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02F4C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744609193;
	bh=9ZHietvmJPmwP3iz9ITiKhy11dhLDQ8bT5fmbdaNYNk=;
	h=To:Subject:From:Date:From;
	b=Wuq8aQT+DVNBMs+MWMpNbq8qPDS5/WY62EctRzB3A4Ub4GFLaQ+rtiqYGhLTMKQm2
	 EuXnO4ZhNWXgUTTWjDZ8Y11iGXy1/hEVzP8gxjyJu6dIpbpiiiGOIrQ5XL1/BgutbR
	 Xq3OiXLwgqISsAEmd8wMfMtbdlnlbA2dGaAThpe9wWL21cAjSEPlBHryMPGXLDnrc+
	 spIX6lyluOPS/gFypLWO9OHigusjCF8P2/T3ntMitGYKL4naHlyu09GWmkKCJLtmMi
	 KWrw8zg+VXdKU1gNTlge8Iq34mLbUAVvVnKUk0tBAPtCrZPpaJcsNarTiRmAZhBtS1
	 G6WnCrU9B0HSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A088C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460919361.6972.11697391773215515422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bfe23a5f844e10869a75a1110429aa7c279e8151f5c159c4f8b62902b5205b
Date: Mon, 14 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744609193
