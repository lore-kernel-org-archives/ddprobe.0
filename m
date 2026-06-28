Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346DC348C47
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782683314; cv=none; b=IYuJ11arOQ6WP8rxtiffttY5E3sVzfnJuA+7Y1ekYWsFMaEI2Tg8+171oSRnj6w1Gy/7JOmbvN18B74rk7YGHuh6F7F5WjDN4TsJ7vE6dhxzxwZ8RmGLndnGXLo6i+AhRxcjoIspBNwdEvBzMfg/ztZDSc/YlkV7BzPQTn5TFFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782683314; c=relaxed/simple;
	bh=NR9uS7dcyMJzcbCSjT8QiTItCCkN2kyrea8VgoRa7d8=;
	h=To:Subject:From:Message-Id:Date; b=tqVEs+Fp5X6ncX983Clr5kdjxGlDFsdUOKjYvmLf3WbDBxBtoI7ZNO8Yr+9dve8wYxBlo4TNZbKCue79v2K136+S9lQRId18l0fQBz3dg0HSjNLPmTO00QQDA3kObNBI6pGPBYFs24IaoQRmEz1s57CW/grpH5zs9JNXkszqlqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLOkPjzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLOkPjzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7570C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782683313;
	bh=NR9uS7dcyMJzcbCSjT8QiTItCCkN2kyrea8VgoRa7d8=;
	h=To:Subject:From:Date:From;
	b=PLOkPjzdwnsmSPvZPYY8v89l5X1V2WTNQPl3GalXrwEWqcP/m5WitOUcqE18WGqVx
	 aXBUKg7cLIhrHEhBeRMCwMM8v7P8O6iGIRAOVswasfs1L1aQoqj2wJfxSJ+5xWkGV4
	 vuceZbyMvWFFKg0fxxu8n3zWq3ndO6kx8haHUpMd4dQPx9Zvyb8loFwq2aE/PZpwT+
	 BHEJSKQUxMNULKrBFuW+pKEV3VaDtPW632NZHeenjSbEG+ZbCIuX2C7dcR2qleByBT
	 ZP7PnmidlJQPR5SU8h0PP1mP0jbHVn8O7h4iQw9ossiTb5TNvjUU0bKvfKK2fTpG57
	 LyzohY3p/dCQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDF4C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268331368.6284.11255231814891713671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba3ccc1e3670f3102598473d48994eb9efa608506dc34ac26675207aefb4a37
Date: Sun, 28 Jun 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782683313
