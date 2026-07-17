Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503621D5CD1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784251714; cv=none; b=S1d0iJrLv/VmMRIrhloaEZWTveNa9aMUAidHwHKgj/8vcRhFxP/+9aIm/AKFTorzllTgOQCD8mZbg3vR9qxK0OBu34SAUmi5Qqhfn0YfEWtjKluuBuRnwLZYYrdeGpYfo78EwOPlhvkxh6HQR0Gn1YJn/WH986FUG4yqMp2Ffek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784251714; c=relaxed/simple;
	bh=+90D8/riyLRhvVk5zERvE8Gc9v0HB9KxOBpbTKAWFQc=;
	h=To:Subject:From:Message-Id:Date; b=a9IQA1g9sHXdgFN3SjiUNbS8tG5Alm5ZVfeUXziiOdHvr68IjxqXySfXV5JIX/LeDRYYh56iUpKY+pZhol0Y7XPvMEVIZ20hYXh9CfBzwoFvSmwqhJ1QoVZ8x9CcJArqRRTxGSjkKlsjKEUl7zVnTWmbQOGgbiGiaaJRjkSWRpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMeUVLM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMeUVLM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5BCC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784251713;
	bh=+90D8/riyLRhvVk5zERvE8Gc9v0HB9KxOBpbTKAWFQc=;
	h=To:Subject:From:Date:From;
	b=UMeUVLM8dc5LwALTDycm4oXfejd9WORJN2tDeTdqwT9f9PG9NkpXfPqGiO70fjaOo
	 bsYthkn5HnTTPzUduE70K52Dw7SbKAYyVGPKf10thVulp9VvVJDxgMh6HIuJsZQJZR
	 C+AFq8FFSYnxEw0ho0lEPZtDQ0w/JUb1a9r5g75Ek4Qzd/wFg9tTYyxPAPDbwCOcbT
	 oDflJZoEncAPDPcdrhTkZgvH1NKXGz1iOceuVbfSHk59OE8Oa5fkKfVCIde/rdQTCz
	 0NpyGnB4fdau8j5eC+DXIHRM286bXyQXs8JolF5ELsw1B7z0UB6jLBSFCIln5U3jp+
	 OkUxe8k6gKb4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BF6C44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425171373.32087.13577353583619121185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc59e72fc3ae67b54e251d7e7dfab558948b413f8d0b449b9744e8e775268c7
Date: Fri, 17 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784251713
