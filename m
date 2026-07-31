Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4800919E968
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785485434; cv=none; b=AJJcEvuyquZbPavNZDcTU69LAINJjt9wjWPHd0PKS42g4rmOM57M08Ql1wH6ckPOuhM8Ij6HnW9b3Gl8udIsNhysGJMgq+zwq8ybGDgx7IfvmFN+q+YDsqUl6a4DGX7ymhjp5MrS1PqsU1hPccCX+Jlsa8LYG/CqmKA7/ny419M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785485434; c=relaxed/simple;
	bh=1jG/n6q0ioV4qnTQLWHX46MX7JWhBBOVFzBCyflhqgs=;
	h=To:Subject:From:Message-Id:Date; b=NsoJ0lz/bdVrraEeI/8+6J25oD0eZZT6lK/HEgFqn1xm+g9CzhAyEtcbEZUeq6woUbZd1Jo007HfNWf2wQLfgOkSyIl6KbU92rv6ax8Fg3xP/XvIG/dHGCyxieX+TWqQOSlUkwawQAwgD/xwQffgD/NVK1GKv31QPNsYv7uMl1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=horpDNyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="horpDNyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF97C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785485433;
	bh=1jG/n6q0ioV4qnTQLWHX46MX7JWhBBOVFzBCyflhqgs=;
	h=To:Subject:From:Date:From;
	b=horpDNyq+bMGzG4ikxtbjRy8744OfPKtjX1wXLOXwMxqGZkz/ok/AiA6fQe93MZWB
	 LXdhrQPTMqOQP1xhyrjQQ66/BF0uqCtEBU07/ppm6Hyar3N4iOwqp7AFFMhUtwbA2d
	 pKTuHPkSP+F9nKgU/pAcH644wOKZOLzSNMOEH7NRqce9ELzvAwpqbTP5JoEj4zNkAW
	 glIzwM+sAE/01294jYsHFiU1X0rLO0txf/WyFQv5+qMAQlXEjrMqkR430FWaO2Il2g
	 tmQ7UZx0xiqLBkPOgpeL5aUosPHqnR8Qym1kQebf3DxNkATk7vfU5RmSFgAsWE6Ezb
	 9G8mjimBoAZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D5C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548543370.26686.16898010949136644758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a422e6f19dbe8ee213b55f917cf69952d3d4132827e77f0f751db8a5330ba63b
Date: Fri, 31 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785485433
