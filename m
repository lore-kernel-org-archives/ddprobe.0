Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3261B2581
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750555194; cv=none; b=fncLtaz2eDK3rzuSUFO3sZOpOcyQFxA1JMifuH+Y3y2QzWxOipc/CY5Iv4XU7GclY0FO5KCPNKbTUdo2Xsobd9+cKMqAreGfH04b9BDDjt/SPA2E5Lv4FP3ce/l+az5Yw5p5zp2La/fp/eQYLsgXsQ0pYA1bT+4rS3x62mEw2+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750555194; c=relaxed/simple;
	bh=jmq0ATeN3g0VWxGWEx/XyH+R4S62bqA+mmeCYrRQeCA=;
	h=To:Subject:From:Message-Id:Date; b=jAqj+ekADVFTQTgK7TsImwk/rtYUqLv8I8vr339ghVjeGRtSbTL3ciZVWj890+usuUsKU6P4/hZAaK4QO2MNH7LmxDUDQF/FxJN9Dkd+3hV1KKixbLvwS+eBLxc1oLdPgNRGvgylcZ8gncAchDeWCdi/fScdkhSyfE4+tMk4OQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juIO+1k7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juIO+1k7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750555193;
	bh=jmq0ATeN3g0VWxGWEx/XyH+R4S62bqA+mmeCYrRQeCA=;
	h=To:Subject:From:Date:From;
	b=juIO+1k7SnsYv8zsBnl7sg5GMJiFQLKA6QrfqoPZfhtjcYXwVgcpoUglAKJ7R5RMy
	 DK69wYbdUbC3H/oMqqCQ2rI/zXeAmuvM3nE62N9czgQL7ybRlDjusXvYcI4aK8a52v
	 hI0vWmUysdkeAx3bD7+vZt+gxUAVIyfdIfoC+BozEX8ypfa3K8Vv+0/9btMmRVP0ze
	 BMr6ygu6XwlwyrQkX/8OcgAI90k5WinpqRvnUoA/5o7r5uTt2b7XXSetEj5YTatAtw
	 +QaF98f+6WXqbciaFZKbHAWeZQ31E3TufmfN522/5VaPSateldEeOstIY+40n4R3rO
	 SD2P3fMTMgHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928E3C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055519357.16021.15419441944299144313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9703cfa6f85d6a1b4b08fa4d1c2af487435d93d0b77aacb93ddd28429d38627
Date: Sun, 22 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750555193
