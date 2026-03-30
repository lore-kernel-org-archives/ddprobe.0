Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219842749EA
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774912494; cv=none; b=EkEH9wtoNTCzG4e6pVJId6wK5oPBIWxackJtKbwFL3/uTjOP1lszMbRmRdjJurgYGvV6tE1GbPwzp0mgfSFz1u44gchy8vkDK2U+/yDHYF5rInejdkdr1AoHth9N4osFP6EwUM5eM/36NpyA/wBg1orzgQzGMhs8dxGUoN4lJKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774912494; c=relaxed/simple;
	bh=udpwFSkCpuQ/DKiTmWkNCFyOoKpiXBRSPCnPT+sTTnk=;
	h=To:Subject:From:Message-Id:Date; b=lFYdjV60kPS0nkGocOsdrRcFa34eiAoCKNPWB27XBtvl1euI8YHDFgOYeEOVKneI5VL7/gzCsAJUia5+jU1uUUNoroBH/oH9EM0/IVXp0EQEfhPNJcq/HIFdYUeYHujnIeMVA2MNMXELzeSgItH6M3kA3KLii/wBiJAc3+cPqfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+lmc6Cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+lmc6Cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC210C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774912493;
	bh=udpwFSkCpuQ/DKiTmWkNCFyOoKpiXBRSPCnPT+sTTnk=;
	h=To:Subject:From:Date:From;
	b=d+lmc6CsHsgmWCqeaorP5bPnWNkHCi+XSCv8BC89q9247HZWa+BRL9+EllG0Hd+tX
	 qr+RHzlIL9CoghI4sz+PKG6C+DhjQ06u+QZrwVEjnpY0YxiCXvapg6Z5oxrpmwltA0
	 6SnU4NzdC/4kAu1NVYXUuyFMMVOG0XKcbs80Tz422h9HxnXqlrEAE5ggIt9NEihb6f
	 SCJNTFq/2k6RPWFeMuhU3qtNs6jb37OtKCOkiUGMtHqor/ZwhhnkyMWzYH9JdxMzJx
	 RT1TpsGLUHAGTDQHU3NVNqeOB0wJiQqyy8MN69UI8YP7PxKwCi2H3DH0u1mN8cv06w
	 o7lqit5vImHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B261061B29
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491249359.9127.16626554522599755836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7125ed09a2eba5869bf46c7cc0fc9c5339fba1020b9bc8c8d0388bab8d2835d
Date: Mon, 30 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774912493
