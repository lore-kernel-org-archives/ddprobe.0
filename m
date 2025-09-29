Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F33D261B6D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759187394; cv=none; b=f9HK4G5+36N+85YEI2qlYK9QDc9jz8d8CGpWRltjgj8KmgBquXbQp85+DgZ9YdH6If0aY1SojsgD1qMqroWI8BhjysuJ4h298attKmXj5smTunvrfzYPM/5n1mulA2+iHTJq3Mf2w/eD76dqZbDQ9b4T6je0j+kIdlBrnFEL0kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759187394; c=relaxed/simple;
	bh=4Y0Dq6v4bLNtAlr1mO/FgoT9bnwwnGdXp42K62A4u64=;
	h=To:Subject:From:Message-Id:Date; b=Ir93lwgcSMaiprYg5bOu+1T/IBV6f5a9/RIO3h5oWiUzMWpTiGAHoJ+qQy4XmyNABkevEOGREmStiiaR0SX/pA22FyH6jg16xs0OlSou3w/QF8iJj0LBfbxTXviGKz33Bq1tWSLph1McMuo07LRLQVzcjn/HC75LroLAHqnSkXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFgnjWx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFgnjWx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1099C113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759187393;
	bh=4Y0Dq6v4bLNtAlr1mO/FgoT9bnwwnGdXp42K62A4u64=;
	h=To:Subject:From:Date:From;
	b=fFgnjWx2+bFbB0pzJxZFyFLMCFkx2c12a13UWSwZ+VQnu+Td0BFVGe2Bb18QcukdI
	 /3flA4TB/Nbp1MSC192rDzTuGAEDBpSdXMVZanuBD59FAVjxfMjrdb1WHsyIV3g0g3
	 M8JeIakYDqMqzooFviUzLdJq8E3L33BuAcD4EZzLf1Gn/2FA+XpmpBqBO9fGMZJ9X6
	 MIRshmapqMBMPl263F2aPvO9BOFyeYXQ4FVACxz+vEnsIW6Qud27GKcTUiUfYsVOM7
	 lVdMmZGmbIywnTxgBr8hGKq/YA3zuvOjlfgnWV0X/jXyq51b/iwAofq2iJPpnlPJB0
	 MJJyRdnS1YIrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B70CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918739358.18582.13933588051806960171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b264a9d098a5753b37122149e365a8c2b4867f80cd0ab62f7c26f92f1802b81
Date: Mon, 29 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759187393
