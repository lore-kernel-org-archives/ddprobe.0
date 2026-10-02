Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A380236D9FE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790967034; cv=none; b=S+U6SptLAFceieJO0p6+7D+hjtr5LLwV7/+PKTNdHk+q4s58F/Q22dJs1CzSuw8oB3U795mMpeRSLnLZqRBlOI/F/rT+ShqXF2G1beMFC9l+iZoWT2ZBmBVcJ+Yfhs8/AWdesYFD36R/SvVnX/Imh6xK+K3xGcgI4nuBBTLjiUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790967034; c=relaxed/simple;
	bh=8rnKRzbu08j5a9hYXsrncKukBvltAGUod4VqqbOOg1M=;
	h=To:Subject:From:Message-Id:Date; b=ESnXZv6sFtkR8kkMQvxXIwsVl6W2Xjud20VIY+DyOt6DymViDzUddREtC9gMbhODO2Rk8H1otaJeLlNqL/xBlhM6Nh3MNq1ITgZ96n9qUvwwyHFkeYLHiGikU3MSG8OrVws4Vj31Ye+FdRmb2NEbXK6+3jQDYZamq6nrOGhw5Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bx3wfe9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bx3wfe9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAECC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790967033;
	bh=8rnKRzbu08j5a9hYXsrncKukBvltAGUod4VqqbOOg1M=;
	h=To:Subject:From:Date:From;
	b=bx3wfe9KBqQJ0xWgy4rh45hmHv0/2O6Y2Dyog3L40HDtq/yZMShXcxwZ+ZcAZOgRl
	 UQ4KVl1TiBfLvl0jTKpMHfQrMBgLoEnJrd8c2EhQ+9xjsXbuPFY/tIEWuOmtV9lJuP
	 o0KRIGvFryaSeNBkYYLSKdvL9EYqWEuv/EJZi3kk1aqFseAF0U+XmLGyh+iUd+rZyD
	 4MgEPu3b8i+XuraKNYIdmM7vRPkU2vQktERBCZ4EUcRcbDHfNjjFy1UBGwroTz/wlU
	 WOJHcpr7wLzh1Cp/molL3pi0F8S7RwSSjmj8ApRS1MuhFFdVe9LiqFywuviYO5VJ8B
	 wxzojfr6r6UYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A40CA5FE0
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096703372.1982.8152283719614609052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1f8e24b89f153a8b930e07520eb41bd51ece419c3fdcaf319e2e3a96a53a59
Date: Fri, 02 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790967033
