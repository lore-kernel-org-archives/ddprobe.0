Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A48217719
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752829794; cv=none; b=fNAeIbkdhtlw38PlgcAhfGCOYO73Vnh/NmVNXWslkFznRvfYYhGgMylbFNzC8jG6Nr4zj1F9xbanIyEA2HD17/sHm0JIDR3dNIv+Akg73aYrgLckhyUgqVbhRy3eZI8RL66JlM6V5sb/PekTJkmc3VNaZJY7YYs54U2UNUZ8XfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752829794; c=relaxed/simple;
	bh=j2996ZN3RTqXECsYyvieisIOIP7h2h/G5pITjcxsI/c=;
	h=To:Subject:From:Message-Id:Date; b=NI8gsb928shdA/lM0WvtQbXyFoMuEHCh2x6Ty+FsqqVRYNYLpNwOizWH0RA8otl9yOfN2mbqUeCXZ9/LczYzb1uIIxVfvrp2xEj32ON1C2oinsXStmIuLXq/OGSKOvaTluhxJqXb5xod9TXfMmMAK+A/Ohe9hqqypMZsHmrs7jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5vT5B1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5vT5B1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752829793;
	bh=j2996ZN3RTqXECsYyvieisIOIP7h2h/G5pITjcxsI/c=;
	h=To:Subject:From:Date:From;
	b=g5vT5B1Is6sV4/QouSH1wGV0S2dlctlpf8sE3tB1byaNeuSHFyCiL2K9nJTxm1ARO
	 yo4RUzax3S9U/ZCB9t8m9B1Unpod7qJdZVK1FOEtVxh+Bp7+wzUr5SNQiQZL2vWVGs
	 /QEcXo08IR3kkS37XwGMfOOR8E+Y7i/ZYICmp7G8WhUUNj5TmM5Qhc3F0r04drynoX
	 J3gVJq3vLMS89Eme5lBTu1yeeBS+mklGlnx7PZlnER73DbdnrxUEY8O6/1NS3DJ9BH
	 wE6cY58o9ibpMCff5dV61sv5JG4fi8ZuqJoho/oDBMW4bbbE0IxJuCj/j1Xvg6sSJf
	 sl9i9Kt7X8HYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90162C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282979358.28964.2117479653599010742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac05c13d0982de1050ae1a9e25ff38d3a2baef98a09965cc2acf7195aaf4efff
Date: Fri, 18 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752829793
