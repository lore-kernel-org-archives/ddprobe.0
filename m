Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC2E8C1F
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746319194; cv=none; b=G+0flZFGC/DK4cpwZVHiZDqiWHvH3AFzSGUe/FAqKaYD7dzS91Bx8x7YvnJmaxJJHY/RQvXgmPcaW5S4iFGons1sgtHRau8z6RHGDNItASyUuY8y6B8XCDpedGkt120UiEBlldJerPEe3fUp3aTjD5Z4l1dXbSRt5oubvt1eGBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746319194; c=relaxed/simple;
	bh=kfcJu3/GWU9ACfK1Nu3H3D0cUvhstLn1ZVSNCwLZxAU=;
	h=To:Subject:From:Message-Id:Date; b=H98bJiX2qruk6tWZJESj5UtVtWpPAph01pEqKbL8KvpjCAtTO7bMmEYwzGdZq744CYwrDHXrKpM2Y9aiID2Tafhg90DwQEzZP4STR00yCw+36SDsfqW3hnhHVYGDV1GBaS+JtZ599Df4wVlyMoZVEs8W3011snmxg02HpbTzpjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqxTUI8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqxTUI8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746319193;
	bh=kfcJu3/GWU9ACfK1Nu3H3D0cUvhstLn1ZVSNCwLZxAU=;
	h=To:Subject:From:Date:From;
	b=HqxTUI8L78ogtVgF9Z9SOtet4XEV+oVDNGUy67eiQMgZ7nlVecz3eShyVlEBIXN36
	 PkWGc1GCVHZBWM+B8Ly2u7vZzS3Ru054AuWn9D3w/wJG08tFJw6mukDn3MaUvQertJ
	 FJhCQxGLVEFR1ZXI3p19+qtRu0zqJtVNyQKTYPfV89c3lp6ORMGVETnvxXNWxtpvei
	 ctI6KZoR/X3B+HVI1lUmHLlUxD3pCdOz6RRIqKUnZs6KHJin9KgH+iexyaLP9T7yTB
	 7F7hqxq2ZCdnlyZiqsg2DpgaMhU0C7A1h4Gv7ACgmg7sMUjLngE8HpAnLnsskjuwi/
	 52GHCifQvvONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9181FC369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631919357.786.6561756039285231175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc3dc58f979a3f1cef6176acb898622ccd652ae73016b65b0d11cb96e2c7e4d
Date: Sun, 04 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746319193
