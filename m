Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C9B46F4A6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786731634; cv=none; b=jyhg5RH+3bd32H1xK6NSUgjHC85hLTvgHCGOq1f25EgJGG996Zq/dR2nOgX/duWrkQiqmKwMovstkAWiqifW2FVkvVCQbRT2XuHg3r6vT9mFwLoH/WlfMVM7FTHCyYzUuJyc/ZWPoC6iJ8ok+Q+3wYN8Va4aLzTRH9m4L2Aan3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786731634; c=relaxed/simple;
	bh=4iJeTKOrw3OEOEscpi2LcwVRPgWGDR84kJu+fKdewFo=;
	h=To:Subject:From:Message-Id:Date; b=uay6ag5F2mwECfQnjUN7NAYqcI/TJIpFZxe6tLr7nGlv12S3kyaK3zApcH0tkeh3MFUwbVycElR+JsPS4qfb5oYsxIKf80rhJu/rwj+BCZPUAY1NWLlwRc7ZCFRn3I9uWGi5VxtMQIryTnihkv5R2SkEIlgpa1oQ+er7JtdGWLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cG4zFdUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cG4zFdUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF09BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786731633;
	bh=4iJeTKOrw3OEOEscpi2LcwVRPgWGDR84kJu+fKdewFo=;
	h=To:Subject:From:Date:From;
	b=cG4zFdUzuOnyXPR8+hgKpk4sVdSYljGEwkZV5HBZbNxJExMWR8W99Tgpx/VWgrWZB
	 BTrGuhdizys2dZv6/YKufKdDPNJHx71DRih73J3R+DzowdnO0cKmut3W1WLeqe2cvr
	 GDpRnfbNxNT6Gu5H3Px3WLh0MUtDbq/cesWPiOYIWhdvx/jhaxn32JkemQoQRzlhJV
	 1DpdI/JZ/ZRxwv0Sf6/B/YEYvJU6bvi3RHrisebcsz46a/30NO2HPbpnctrg34MH/m
	 oKHZl8EePzhvfsJHXgJeAPDk1WTUEKw1I4vSlveinDxLOwj2RZEFBWSNH1O+Gzc6Xi
	 3lZtxcanMGS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93C2C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673163368.2807.12873887736486037069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44271d5e43cda73b5c4ab5f71813afedbb4690ee0677489beefe9ffca2ff1f8a
Date: Fri, 14 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786731633
