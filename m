Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D0B1459EA
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752542394; cv=none; b=BT+uUsZmyIByupQrHKYGfZcEXQzUMgbVWxutY6WgvegjEFoFdYvDsSl40qRPxrn/CpP0+bXI4QRgjtu4DI3+5++r4OUSshXhTmSr5/WZ8uG2FwncH/WItNuEiDlpuFK/WAjRq0KP6NyYdm9Yu+tsIGBK1dStik9KzMMLilcgbik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752542394; c=relaxed/simple;
	bh=WhkIwHWfglnnrsNur21GM2KHExF91vtCYR+pvT9E9YU=;
	h=To:Subject:From:Message-Id:Date; b=WFgoVYMUugg9ZGvDShNtcQ46GQEGB4/RPPE7cLp8+1j4b6o3D3+VC1KgLyDUd3u4L66TJ3fSj22V52b5LV4neWfdw5wWSSCqGXieuuAYNzBzkm4J062wS9mRqHSrm7/92R6QFzmsAHhoP79esdGY7a84vmARgaDfcbhU4+BslVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbPOMsRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbPOMsRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E54C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752542393;
	bh=WhkIwHWfglnnrsNur21GM2KHExF91vtCYR+pvT9E9YU=;
	h=To:Subject:From:Date:From;
	b=gbPOMsRhuZL/gsdXcGUzWh0rzGLdC8BiX8Ls46aOT399uDx8uoOuZQnl2JrxhedIt
	 SHpw11EvuqPDJmy6gUjppiOpJ/wLX6wKJINQmziJ3vxcBez4DDbkWO1k1kVvOekI+t
	 r7Bz9moqoU91tLGLLKbgLKDKJ78Cv/RYRDdqBrscGDnQtz6Xg2mohOISVmM0fOfy2j
	 ZalcqJek680oaGBEkM6LM3gJUFMgZaHTJkT6EsMxjhyeOZbO9QP1tp9Sf6FrJJ+Xqv
	 OtbktSxOKiHQBXWxWtkKRCIL7GWU5+I1gju7jxR/cmJ22aKVz1VDxUF7dGB60Ym5xv
	 hN7s8n1l35BvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A8C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254239358.6177.4949217633935424922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7824c8f991d97c473ad4c11eba983e183f2eb732b926ea0ea675d3c3daada8
Date: Tue, 15 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752542393
