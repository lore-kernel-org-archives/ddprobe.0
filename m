Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C512119
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712367497; cv=none; b=QjRMOpgvZHjcOGPwZJlxy/b8ACfZtQ6WV8xNBt87Q5lB5Mda4xTXz8wap6GmzPue04xatv+1KE4y41mACkzwT2sMHCon8EQSgZT4CgATHa984hd2ZARiHwDBOzgJcPaeq33Lr85qdrBOASZOiC8Abppg+BWqXtEOIz1CQ/SWN/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712367497; c=relaxed/simple;
	bh=Yfq9aO/8w7z9k1e81p4NLo/KIv6JSSrvrNzHM0OiHcw=;
	h=To:Subject:From:Message-Id:Date; b=hdigZo2YSgpwEvDEy1hveoJ4v2BMFqVPcph0ZNQbwjTWeSdvZ0j3/rdQdxTMr0/Z1cZBR0WGIj2kvJlXG5MCta/xo+hp4oWZghwZSEV+lm0Mh5ReWCqwbA3Dqd/T2c5Oax/+B7t98LncSAsHhYGkgWGMsiiVp/4YU4uaHC3Mt7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccCrslQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccCrslQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4C1C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712367496;
	bh=Yfq9aO/8w7z9k1e81p4NLo/KIv6JSSrvrNzHM0OiHcw=;
	h=To:Subject:From:Date:From;
	b=ccCrslQ2wJf8cCqZqeBdu4lA2p48L6AkAUCqBVLlQmsOxpdGhrNl3LBzelNh81xUR
	 MzF6D74PL/ljhlDCUYKZAYlphX9mBerF+fgNsf03F/C1M/wKti+NxE0+GUMZpRoD6j
	 bihdTbcvKCLP5JskL+sJLLWH8YFyipvjmHWPdSj8xTG838LtrMnmsXZ2Ms1UnTIbuT
	 iCwXci71UycO2+0Fv2D4biD6P813fKbQ0p9HrqL3Ir06+Q0yLTnu1GUZHOggPY4H6v
	 6uQr5w/M1tWSx07C0FKDo5pdpvdGltvzmeGlJ6igayhsDdImZK4TCB5ZFzUcFhUFn9
	 Gkz6XqH0YUvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64480C3A59D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171236749639.25045.6080803033362996352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c25a541dc52e8df4a9b6d42d64638890119ed995282471651dd5f705f866b69
Date: Sat, 06 Apr 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712367496
