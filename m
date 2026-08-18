Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3426F126C02
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787026234; cv=none; b=ph20LAN9ifc5JbnZbkyruh1HZ/OldlNSBAX7ZbtZLwTYPFfPCmubl0wCKCypEE2HnQDssINXst/kTkMeZMi42Cn0yrvzjW90jO8deaDCRMrT3DvnXt+Z40Q2g7yNGKBny+yx8bgovjaZ3BL9qbrBf2Ztv90+wQ5KFK3zVhX80hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787026234; c=relaxed/simple;
	bh=wScNK/Tu5ztomco/2oLpk2m8yIY0qC04DBMDQtC9g3Q=;
	h=To:Subject:From:Message-Id:Date; b=migXtegFphXhO1mdpJ5Cl0IiCGFu/TaOIe4BQEhWgAu/rTsrukuNqNoqgB7c94n2HQTo3oP1ix9hklnWyzL4ifIi9d1AYYElZTvICIcS+VinTwbK+Hr5e1W49wVQMXIUl7ls95Mv/NanvRaws72u2XLHvgnb2mFhHwidhhj8xyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx9RMYT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx9RMYT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DB7C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787026233;
	bh=wScNK/Tu5ztomco/2oLpk2m8yIY0qC04DBMDQtC9g3Q=;
	h=To:Subject:From:Date:From;
	b=Lx9RMYT7UaG+1Xjg5FIgRb0Mg1EZL09EpgXQuZTBd68JU7WZcTJbRtze2TxSifsWe
	 HwV5zdRkzgBtinlVFjy4aeLIKJE0CJOR6RlbsBk4m0d4tHMmMlBaSFpBAwwsfmBAbf
	 DWiTEw/P5nJWme29zuAG7Hsz5wMLKMtNsgXV5eTUEVxDjS6AJs+8NjBJG8z4DMqRCA
	 1UwQ+AhIpzITdq83Hu5aIoVgp4ZuWFfSqJIl4eVzVVRMgfujkqt1KvGzCHFf/vMBpA
	 ZXi9cegZuLYShbMaud45oY/r8A0TKlSzm19E7WEsNicwlh/T2aMBd5UGDXLpdtBkXV
	 3cnLLVeon7fFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA34C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702623368.9800.1441012467572055723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce01510763097b24fe380b5da7eef8f26bc419c57514ebac6d97cfcd66cfa02
Date: Tue, 18 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787026233
