Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3714B5661
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745761194; cv=none; b=NGUQO42nDJDZ87vznMnGUeIbojwEqyKsfX6AyLOlVBXF28ur4xxLiFofzV5gXT+IANa+9EIXIwccr8/Fa9PJckTNUeRxVL0f4sHheclqenVbwQFHUGifn0VZJWjB/EBVGKPQ+Bz8iPMeD/pyVWcMNUB9snMhrK0h+25Tj4EiRLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745761194; c=relaxed/simple;
	bh=hwszYxsOLRC+f/52ISk/hUnYo6zMa7eGtnHaXMPOShs=;
	h=To:Subject:From:Message-Id:Date; b=H2WKyWBgLCYpHsTvI3urFDLARmlIDOCkFdlHPVWv4OGm1HSus867MzgX3K0AXFW3oFMcwOxiIl+FSh6+vRibBx/uOwYxQObd541i35xmkX1hBkqwjLCaSpb4ySlh+NKOQEtnE9f37XP3VooYrcRowdxiEx6hd/N9rne08DbcGF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM7YKGip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM7YKGip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F23C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745761193;
	bh=hwszYxsOLRC+f/52ISk/hUnYo6zMa7eGtnHaXMPOShs=;
	h=To:Subject:From:Date:From;
	b=eM7YKGipOfc/3AczyhV6mWOa2twZIbO2abmjn9N0rereqK1WrCK7KIp4jhXpMDlNq
	 /lwDPOq8ZIjjjISxKjj54yXrqpug/sl9Olxzdq7njb1sekm/C/dPo8PFglWjf5caQX
	 iuvuuxSyKOLJQeMQjQMpH1nDptnhqb1ltkYEFtbzN2bpY6P8jbOf3fFu9syt7ehtp5
	 /8DLwIbre3xcJFHz8rU2DAWBem48iVP8H5rglYZjSAWQ7Xm7a2arjopDsGYCIZmo6u
	 5+ToretXrW3fZAWcwoWmYFsTmEFrC0l9RspAam7C7zFvuYVsoPQ7yAnC24Q+ZIgf8W
	 m89AITXCMe43g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A65C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576119358.2034.2660493887152769843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15ada3be286bb96590334859227248213ba78b5e77561b0f522ceb552f56f73
Date: Sun, 27 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745761193
