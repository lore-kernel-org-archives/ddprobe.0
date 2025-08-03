Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A482940D
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754208594; cv=none; b=s6nR7bMWqi0NPNYsis/DSQPgiCKXZm7trDiLKX8DKFmuyWpZlPVczLQ1TchfgvJ18kO87ZlZzwyQZCfgvuRLP9PdvXDO1wGLE3solF6V47CfWPxX2WnkaqYHwRe7mod5xpbA7OlLKvO0EqLjH7Sxfb/UpXtH94lUUUJbLYATAbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754208594; c=relaxed/simple;
	bh=gXz6o3vij4pCg3isp/lEVwTfDs2SOKYnL546WksoX/0=;
	h=To:Subject:From:Message-Id:Date; b=kpAcRYUdSRPgO6LLWlSWpQOrgRfxj1Kob1KdAOuaCXIuX9AUIQKj/jU+owOlEHCgH8TBwg3r2RacNegijthjyYYL0MiQIYz+0vK8CuWniWfEsGOfhVPXKlUnrQwXhm7/gZJPQD5Z3bRIVsuvfDHu9SOWYyJ9flqYkOrEA49yWPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQzjpiEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQzjpiEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86BBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754208593;
	bh=gXz6o3vij4pCg3isp/lEVwTfDs2SOKYnL546WksoX/0=;
	h=To:Subject:From:Date:From;
	b=YQzjpiEXAbwxudlZ/a7SNnJLjBw3bA2gxjUM3buUSJGokQGRo9g08XgOGUTBwWAMa
	 19RK27VarIRkwFqU58pTdWV78ion4xOItmk+nO/nrUvAJoUzGaob+ERMmX2ucn+HEU
	 mq+Fx+scwwcIowpuHygNdcosE2qJsa1pORp5qSNhOHXyVZfjiTfL5KxIiftNvMnkTc
	 TFWDpnwu/DPC6GH1F8ZXGV2lULvuIp8/XR77fgDwGuqyd/H8Dc6ot/OVsvKAYVeRSW
	 7WqkAePkrHaWZlaGl+3lG9EQ5uGq08HQLxIH8jKVkx2bCYPeTlR9GItWVOdl+zBl2p
	 WFs24ImfncELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92485C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420859357.25613.10747076350577487958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34af78066f8dfd15cd51ff38cefacd1a3eb4fd911d81ce438de30188b221af7f
Date: Sun, 03 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754208593
