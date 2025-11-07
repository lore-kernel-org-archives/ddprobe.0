Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1A527AC31
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762521594; cv=none; b=BTupv29SjnMTgy7+sPMhC8wl3DzW+Z+M+rmEUMuybYAhsySnHJX3lLnFlS/+HBjSFxs5bIqVpPsklWCiUmOOoD9rClQaq+/ttqajmHabdEKd9oV/1uFj38SvG5NQcFKaw5ap6PqFrCq+bxsUT3yd3Gb9Bn+pz+J2gnECozZ9ALM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762521594; c=relaxed/simple;
	bh=9e6yckMmbS4rwh4aRAHuKroLrVt3FL1INaOVQVOYHDU=;
	h=To:Subject:From:Message-Id:Date; b=Fb+Q/OWfT54eBhOaRA3szG6S2VtRihnNhPW3GnWxInVIuIO7WFu2stYrcCay1+8RasKv74rkKAHF2iTZqq4FjimDxgqyz+aqjrUy7Na5J0elNx52CyWIw0DC7yuPE5zV863e06nVpS2BC8NZU/WeCADb9b+v6+rx4SlwCA76X5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUzEtby4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUzEtby4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A07C19424
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762521593;
	bh=9e6yckMmbS4rwh4aRAHuKroLrVt3FL1INaOVQVOYHDU=;
	h=To:Subject:From:Date:From;
	b=QUzEtby4A+K75DeBi/zkqIjiSkWYA4gmZhgtXdm9vKqBInD3CRVG2j7n/onKLQkiK
	 O4ryQQN21gFJ5IeY5b3atYQkTTHv0KBq0wYfKgfpjX3ae1iHNs8OFr55iwlFlKcb1e
	 2BNEsum+QyLuw9fXG//iT8jevnREdwNuEm1fNFnGnlDYGK2crxMOFOigJzHQRfoFaK
	 lr1HTKS/QlfHcIbRQMrjubph6CAp2FHxJiO4rmZyM9mGc68J9UESGTiHNq0gfxYJyI
	 pQNGqK4PKgiOm1jlS+CCm6EFfuSXHIq+McDeOm0mulTggPh73C3wcKkdD0cOmYTkZ1
	 tTARPNtCQZ1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0CCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252159358.7068.16310612948206706999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b80706808ba61406128461c37ae6969bafa9cd3f1e2fe0a2080734866c9063
Date: Fri, 07 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762521593
