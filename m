Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6B0A923
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752806994; cv=none; b=kKnvzISs4f1z8bPgktxkB5vmbJecdxfyBUQZdTz4uRyeM4dMzMxU0MgaGhM2v4lQI3jRflSxaS4UuMKcquce2JQfCwGeOpwZrz4O3IJBENhrqQsSCCSC8KFQaCcF2TkvW+ErT34mTz5GMMzWO3/bK9B+ldPTdXLIb2ERm8JJy0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752806994; c=relaxed/simple;
	bh=RaCSbALjKekih37YftH4Jh3L6CmdiaZvL65wIddt8PA=;
	h=To:Subject:From:Message-Id:Date; b=N0URsaSyUqEGr01s1LBrEYNyTAz9Rf6jY4gtoMBSxqlZ6W+Oy2xdFqc3UTlpFLg3K+vsUugZZEFK+fjhjz5VIJRmuBAxFPUJaKB58BUhsiEtEwyM5ZnG2Ysk0otzjcCfXpXhNKcKhkXsyX7xpcVFAxmlljFTdN7b4iHHexYVoQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQSR9Ioh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQSR9Ioh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C98C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752806993;
	bh=RaCSbALjKekih37YftH4Jh3L6CmdiaZvL65wIddt8PA=;
	h=To:Subject:From:Date:From;
	b=EQSR9IohY62OUbQK/h2Rc8NruoyBFJnfUTXP13E5O4c1WDf/6nBquUHZI2MxcWDe0
	 dXiYy7g7ji9k2jsMvJWX0czynHE44PIMA6foSt+9+pW6FoHpC2JeepooqZGQRt0nfV
	 z+98vm5LPRbuB24wyRNm5I4K1HWGKeCSoMz0XXrftvmtgjI2SMSHYpAkNV5AjqjmBO
	 UFebBTh0wxVDUaLhA3/03NnN7XdEy88UZTrw0nJIksXXZfGv3m6H5zSDgqs+tAuOGt
	 hU4LKXV/Ev7npnxR8gf6WJ73bPoM5VeOMx6NDrI2chyDnbqBFO3x3hQ1YjX6A3VAfM
	 68F7uGhf9kVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F001C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280699357.17662.8324678287420600504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102eb27928a393030e66bc7dffc7aa43492e58ffd8fd96d376d1520a7ff04cd6
Date: Fri, 18 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752806993
