Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFF83FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767558834; cv=none; b=ujSvakBqSAUVVbIjEvjYUA5Z79SiQfPCyV26n+WYdW5zKHoq2PPOIKRNXwsSKZgoZXnuhjx3VEd3wlqbm2bcuVgn825ohnuxrXDFcRiRMtTmhXqe0DTJWN4HxZO8FimVanZTLouIXNGxZZhfi9uMHxbq1DLZE9nQZdfJ0U3lEfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767558834; c=relaxed/simple;
	bh=RcAn8+ZvSSld3roqmmu61/BIrJz25xPyxrWR9JbBKvc=;
	h=To:Subject:From:Message-Id:Date; b=jDj7EbrhJgbE1nmkrRyUJqG61NNZAG4LA+0oVay8uZXZYOT4GJE4jWRs+cr0Cvev4CCO6NoFU0ZDYmxt3mXQD8N8NH6qB5VOWIdXZLNzG+z2UmBMNtkzc1EVOuKFUxAKQxk5c/Ren8RKSPY2myLvrJrFJuylKhWlp11+5JhXM4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxbaIkih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxbaIkih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70F9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767558833;
	bh=RcAn8+ZvSSld3roqmmu61/BIrJz25xPyxrWR9JbBKvc=;
	h=To:Subject:From:Date:From;
	b=VxbaIkihmHvXvjZsTi8+hdmKTzO7nV00FV3/yEqgHq7E8zk/Spp5xLp3h9AnCeKyG
	 akOYexDIqqMOulyhyFZx0FPyKk9ReQxLHNLwWq0m17i4Uy4+7mHjd5G/qgBa2LLnZx
	 D1xcWNFD0VBTT/pbnRthYXc9SCO4/wmusCt0wGHRA4X4BTJLY5LIJVRHMxOkIywLTv
	 oMV7UiwZ1kP0vA+qWqJbLl0gzld9t198FkOs8viv61wLlQ4bmO9EsR55h92recBKN1
	 fDXiyKQ8X3URGdOVzC/JNWRfGvB9nY6094HW2TdejskSZLrhZEFlkUyVYG7xRE58YU
	 mSE3lOuDUWjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95009C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755883357.6443.487241922985613306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3ce9e08e2f64c2046fc6303a1f46662c3343a238ee26dfcbf3e38a9ca3b4b6
Date: Sun, 04 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767558833
