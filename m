Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D911261B70
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779751354; cv=none; b=Vu1n7MMC1+jRlra0gHWO4OI+APwNlTUr5zPNeSYw5TbgJbtha4gvtuIbIModRRW8Meo4kt+KdIh9io7P3QIIA+u2G7lf14+JFePoL5tnJDrfysHkfTVTzcJkl9tJIBjfoqDa5U/59RyUWTC4546bLow/w1ARB+q6v34K5Rd/1xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779751354; c=relaxed/simple;
	bh=gkv7ervRwSg/5zAaHg3Cm0sbsJZGZ97S+j4dJ2P2LcQ=;
	h=To:Subject:From:Message-Id:Date; b=hyFA99wKNqLCJGoCkj3+GpcEYMj9kjTDl5Zt8A7v3ZBqj9PspRstkeOt24EdRA5KUhz5qQRl+SwP40QI1UgLNDTJZHNqKzgxPurow+gpjuCYJehdNxyAM+QX6SBElkEdGdPkGarEJWJPNf5eCce6Oq0B4y8IbPwZjVWBZiVxsmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpxlVd1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpxlVd1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E49C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779751353;
	bh=gkv7ervRwSg/5zAaHg3Cm0sbsJZGZ97S+j4dJ2P2LcQ=;
	h=To:Subject:From:Date:From;
	b=lpxlVd1tMLUmhVwRbMx8DS3tVRPBaGlu3P8CdWgOXVpwgdaaCTpW3gyfyU/B8a0hj
	 JpN1MwRpX+kOTOESQeU3Q04p2VrZTD+U2gj0WfNxODkA1W1rx87bSa9PG+0qgRBBWw
	 PD1PTKGWKoR53XFTN5dBPOjFREzwiXqcwP+UOS1Uq33Mkven8G0Sog+9jnXLMr9vCL
	 xNsL//7S8dxRM1cn4k9PPOn9ua31mw0EgiCQuTrqcV7PLoBrNfXZfiLa6MtQWb2moq
	 cMqZ6Lv35fsFclMS+M7EanglCupEegDGWHyGfg8tV3MUPZ+DczcD71gcWy1GhOPLE9
	 JUFqormLbrHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC16ECD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975135373.26776.14020022467020987726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b584c7fe93aeee4187c0b369b04099577f0d369dda74879c755156b6cb25b74e
Date: Mon, 25 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779751353
