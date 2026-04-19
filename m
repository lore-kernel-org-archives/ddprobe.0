Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EB615E8B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776559054; cv=none; b=ZWNFduxHUUfRFsmJnPOtVXBF8hw/hP3e4MhCuMC0wnwz18VTRU2dpaihwEfpnxKsntmw04vjLp3tSaUCMOyZB3BFSL20C+nb6pNF5lHnjFtT5ubfm0VP5OfTQCGBS9429soAabdz71bOhp4KHX9BE+rcW8pibetqIgChijAAzbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776559054; c=relaxed/simple;
	bh=ac3xYme3sVSrJQFUjfyGfZ48dUP0Bh+H3DSq/HjvmSs=;
	h=To:Subject:From:Message-Id:Date; b=YTq9OGhZvcQcC6wJyFQ80J68zpV5ROjMBjzPUqNot8KyEZbLw2p6mzhskLP9Kgn+1qOVfVxDzpPzQEu/vtGHmIvq651Dk5TcBkhi1qwqtjc8u44gzmqlX+7dFvh5mAba6St/O4D/JRX4So3b8s/vuyMh9Dg39tCcKm3Av74l8U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5rewXQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5rewXQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C3AC19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776559053;
	bh=ac3xYme3sVSrJQFUjfyGfZ48dUP0Bh+H3DSq/HjvmSs=;
	h=To:Subject:From:Date:From;
	b=Q5rewXQ0hIvT3paWMBDXT/PgN0qSasICbmWnyD0TN/oKZdDfKPf4ANb/Y1fhdk8K+
	 VhevDzzEOJCk0JQ9BO7KatgL45ZO7ufiJJpzmDkbbavDl2dXM3AU9F2l04T8q0NZg9
	 Gu8Om/Kd2ksqPluRg2J1sMp33diVnnTSWm2ocOb1sBgXzGodCAYlUko3hoDlRCnXlG
	 hyJ8Erg9Wg5E/4Sv+QUhxkGk6RWDbWossxrktxvzDjviTxhh0cQAu1L7qQbGXO64OA
	 p7eB3al+bM3FqFPJapYk7shpPDeWBIDnKB1zfl5P9HVWmnidhLaubsxu49cxzxymNX
	 nDAvZJpzDy3wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0214F99C8D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655905368.5051.6990399201548718827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97860edd4d8a3e0d9a79da83e512728a87f89d46826d98e2763815a579122a8f
Date: Sun, 19 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776559053
