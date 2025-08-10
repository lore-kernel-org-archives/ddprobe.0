Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320B21DFFC
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754867994; cv=none; b=qAgdwOnQmS2hHXUpS70FIvLL45+2tveynTsO3U84colo1nXvEPLV9pHsANJAM8dyIhPQrDZWmKdDZgAC5/ynQ/WL9QkHQiStjzP5LbNlItTq0IHbEZDXNeKuDhb4Ilqxc8pKbcQQ5rdnpDLCehFhmUevn0GQX9+tnR4B1yS8ZXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754867994; c=relaxed/simple;
	bh=wQkt+yBjbFOVsmxSD2tfYVs797lGACECrDAdLFzsthU=;
	h=To:Subject:From:Message-Id:Date; b=Dg4t7uimzxsOSC3vdacI3XbLXxzrn58+wlxdXvv8pj5kFcLW5j13Cb4Mym6w496NwF02fP65HgADShjDYPTlYvsV0VYvz5o/dmJCjoVhKx5JEg3pHo4jCLg4IBx3XlOHnxCTvt+T7nEpIClAPrDbhsAqDqJX18Ii/hSxaIU2XkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN32ukbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN32ukbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24D0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754867993;
	bh=wQkt+yBjbFOVsmxSD2tfYVs797lGACECrDAdLFzsthU=;
	h=To:Subject:From:Date:From;
	b=LN32ukbIwh594gi/jfClXeSkQ5+FxR3nGX3Fw5djv1VmMcgxB3ADOaTpCDiEVyZvf
	 6R1emX2b8bSthbi2aRmuqYZ8tcvHhxeQ0bb5ZrOg+KOl9U2VkzR+oM6XgzbDqVQMmw
	 g119nwUHIgObNQgbP+27a1GB4Pbcesn+QkP/4Gev/4Z0AXQB9L6y2L/2meLrWsHmur
	 kWKXxv05F5KleAB51FNkgWdX6sl3teJ09mM0NXGpMTCkEaFiUuNyKPCeN/UcYJI8XK
	 nnZJVAahTnF/i9JheZRTK6XngKqwr4JCLWj5M44Md9GXornKyxOJo4UZXlGiveYnpQ
	 Ht46ZFE5uLZRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDCC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486799357.6402.9359676846824283937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f3911173780f63844a4ec8e9b538d29024ec50e6a6caa1540d33c1a824e39d
Date: Sun, 10 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754867993
