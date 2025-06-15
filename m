Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECBC2609CC
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749955194; cv=none; b=VvCVIJG138N8LPh6iWQweMUuHghHSkJnsjRPJBTiJGKcWvs0v4sQXhemFHyXkyBGQw/Rxg1r0TQl4G82gNphSx2dpDX6d+NAdj66qCtNY8JWZcvvJk3DdUty1vb3veGQshekJCFyjKyygfWf0JgrKxdJ5uhajFufpqcnm+LdtEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749955194; c=relaxed/simple;
	bh=a2dArAqxfSBKjH6qxmg8x9d6du2/9GOxvzMT+X6kb/o=;
	h=To:Subject:From:Message-Id:Date; b=oLreYpfLm+p0JmsGVPl3Z2uq75PPoojkuMkJoSCGgD+QF48uPGaIYKXE3672zerHYFW8ti6rENG+8eeuAt2SaT+2mEpnrS7BsimH2cHUDgogF4/DUIsMqFcxY6peGHaFgbrslrKHt66QdZH8Uieb+e/7+HXPtva6ZWLQx8z/PaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecJCPk6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecJCPk6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C4FC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749955193;
	bh=a2dArAqxfSBKjH6qxmg8x9d6du2/9GOxvzMT+X6kb/o=;
	h=To:Subject:From:Date:From;
	b=ecJCPk6ccKiHqBqjX775VcRcnugyuiJ4DXByJgS298LI3MPocY74CJcwfKshyl3R2
	 J7FyE0eZfD0yNci5cgRHe6BE4TvKFCh5kOAD/WReIEyYQrWmH5Xd2A2GTQc5XuL6sN
	 VuvVyouoPPwoV1hZaAzdESBChIJtH9A4DRHw9BPXIJmv7b2hHCZQ4pSduj4bDieEZ9
	 iFfpjC9sXbGl8T0TIi2u0d+KZc1cDMFhTbKLO4eOXLllkp1JRHqZetSSSVxJltlu1e
	 1bBw0Z1/FBEN0Fggrt/h++0VcTlw/0FyOAVV+bzQqEeZAFydJdwmXPU5m7amZIl1PF
	 zovJAqT+yXsdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E2C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995519357.11480.10711124165631733023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82f508e53d74547444f26d8519f2f2eed61fae6cbde274795388f7c352e0e85
Date: Sun, 15 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749955193
