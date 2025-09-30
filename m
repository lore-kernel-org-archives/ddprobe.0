Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A2418859B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759199994; cv=none; b=aBLoA7g1njd7nXnj4lojkkq23/WAlcAphNeCsC4EIGQdsXZL9u5LL5dueitgSNlATXJ+jtAHjU/BVAgeGi++HSEugfUq9mo8HoVkZaTd9/gI7RJWS4S/DH/sg409fnwfQE+0cGHoTvyNRsOgQ+wGDJU1IMRC1e9gyIH/aDo/jOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759199994; c=relaxed/simple;
	bh=ggWz2Lvn2dS49IIR3MmKpJHBMCU5C3YCyMtsu2CebeM=;
	h=To:Subject:From:Message-Id:Date; b=gG2FzkRNkt2RgCKfQvVToU9PLsnlKV2ysP0/iYnzc5jwNEwcbfpvq2xiKxj699SdWuqJuTKfWe8IMky0M2RCYaZGcDT+kr4OhkbGm7Qz6O2uLA8JQ/Rj0tRDTl/+5utgisr7peS4kj80kf8k1hYqUBpIrd9jaqbaOcUUYCk1mV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjTRxWk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjTRxWk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D61C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759199993;
	bh=ggWz2Lvn2dS49IIR3MmKpJHBMCU5C3YCyMtsu2CebeM=;
	h=To:Subject:From:Date:From;
	b=cjTRxWk7QLWGtGGOmdARLALD8TII05LwmknN9HsudiOo2ZPxqFp2H3ilIC4m25qas
	 Y5k4KYwiga7pB/xVYyiqIxx0da921WDczG6RsACiW2OAMiHE/MGiXJqxyrOi4lVU8b
	 08DOpO5+m3bHfmyAUF0kZV0Tw+/C/WYPILEv17LKkqqBc4bSeIfb+x15/lJxP4Yr87
	 vIjh/Oc+gF2GCQNXwirNmJQK+Ftagm79JI8hKFSmHz/h8f3zwc0Kvk2vdeM/STUXg0
	 VSq3B9EnGQ2aVvhshfceYz2sBsibeYKCcvp/cPTfl3Zgd05Z6MPsQoRsMzX8/t2b2B
	 dZx42Yz6XMzxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73ACAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919999357.24618.17991288619807255954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34453f8c20150b2277acce5ac8d6983a7e249bdb56b5f82ed9ef4e6c05759f3d
Date: Tue, 30 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759199993
