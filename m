Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0462227FB18
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757271595; cv=none; b=Ue/Si8lADRBNZLrYDqXi7DrefF7o8N817/HL8xoVCzDLy8rbfo/dqJBcfQVI74NYa+KC+6c1HuVxxlkBksiI878b7xkiTtAjp6ZPTgV6xWCXHj2ssUH0WAEpKIu5jS133+IANdv3OHUlLxZvSnycsrekPGtmbYRpIvUkAXk7JU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757271595; c=relaxed/simple;
	bh=dIvjx5X9l61kmWJSm+gURmMuNEZgC2Go1hMCVqMF1nE=;
	h=To:Subject:From:Message-Id:Date; b=U0bMujeZ2vzsmdGSCT0dqL6tbvUcBo2w8R7yzwYx3hHPeNOVPJf7dvUGj/l/oLacDo6FHw3GWd+kuJXo5tY8zDslSiTnTFpxeL1WAuZ41S6aGUdPDseRpuW85XGaDChbclFK1tMTkabhXXKaRUxu0cgYE4LXfdEfoMhVDHYrilU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqUGKggy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqUGKggy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D835BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757271593;
	bh=dIvjx5X9l61kmWJSm+gURmMuNEZgC2Go1hMCVqMF1nE=;
	h=To:Subject:From:Date:From;
	b=sqUGKggyL6M+hSYYZxnamIs6rdyL0m4+WvplS+t2eibIcm5JL+xRdLCZgyBSvjckb
	 R+y8MUYiT7exCzK6DwdOPToN0JCON/uAsaIVqNYym99ZdF3feq74UpYGlGtR82Bjfd
	 rXdUCqOEgE28J2PqyWDKXYRpnT9+FPSfbGOrwd01kgCB5yPro1ieRpCfJ/GEO5YpSh
	 qE8QCFLkLIpopNYr2But1hB83pEhH8/xNKAezHIApBnP2u8kW3aagr3pgOyoKnFrxe
	 BLefbkY0SQyr5n9eea7Qcj8bw8T+I9uYO94Eekw6veOb4/fRKl4H6I3pT7/BS8RfMp
	 XmrFjwDAt2UKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0E5CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727159379.3630.12477100260033688344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc6689f258512696572156640e7c49ef31c8aed3492c1673b098716db7b8433
Date: Sun, 07 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757271593
