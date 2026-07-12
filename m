Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447D2306B1B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783853314; cv=none; b=MNUW8/t+y1odfroia/m5fE+xiV278hwqst+X3q6IpihkuoERE2WYF/in4zC9fswidyKCzc1xws1X9pXpRSveTmD1ggz7ECy/L5DEP0x1Ve1/qoqrLJE11ddiTqnvJpWBU2bIS523k7/XYirEBnVEXJHzNmzj2rSBxhFnCvHCrc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783853314; c=relaxed/simple;
	bh=mkuPjcgXmwYHcG6YC3fLIY1X6oqec8nq9f+VNSYspww=;
	h=To:Subject:From:Message-Id:Date; b=Rkgihy5xC8/Wm149zd0hp4NgYOxR9BEfD3bo0ySrFNMt/olGGMZCb4/rEdNNGLd1pF+dV9s4bXqy8/+q9WqA/kkjvGvIjva+Aywugm0GyQpPBvY/WUTJaM1E5YDrcOXwcWL2+t9vHhc//eO96bvnwIri5pBSXg3DHR1GmuX/i84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4m5Z/Fi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4m5Z/Fi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E48C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783853313;
	bh=mkuPjcgXmwYHcG6YC3fLIY1X6oqec8nq9f+VNSYspww=;
	h=To:Subject:From:Date:From;
	b=i4m5Z/FidNcHdUe3BnuBlxldQm72d4O73Sln3sGTKdlxOfD99/X1di+9+YsW5WFKk
	 46l1dyMdBlqn1YeILeopbVoWfBO/OmTl8zFN6kGyLfPgm2QJbDmFby8ya+A1YO5G5i
	 IZytv8JCFA9btFdiwKK3XEu6yYyqvYzKK2fZzbFJlzmEyT99UbcNV7FG22jR/32GKo
	 KMHtvGcRCaPEX1qYAMn6Z2vZabpPG8ij4NjPnUwKCphT3vZPhBZ3lR4vau2du5wAMz
	 67FVybK2gALo4uDmiHXQ6A41dfnxc19zZkrNMMza+iNeYusvQpIMoDMWnRXmvcG59f
	 YlHesHsa8Bv5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82C1C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385331368.30727.6866223396940054114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d443d0ca3bb90830456b3ada9a71af4d7189bc951d2f685a7229938ee4358b2
Date: Sun, 12 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783853313
