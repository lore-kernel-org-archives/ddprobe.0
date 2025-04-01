Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255BE1EA7C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743508194; cv=none; b=XIrODKhPKCkD0tWkYB/nGEvMGAzqG3y0dLK56kqcygJ7lFA1YL8GhyL/TVeQKG+etgZR2e0RsS0XJszKC3d03eL1SKd7N+qwqISrFYzOq6R9HtYuG4zu2eAJuG0xcsZFKabmjOIxQBs4o2ZfOCBlrsxzjbkfJplxW7i9FnZDgNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743508194; c=relaxed/simple;
	bh=P7UWYGODGJgfp+xjVxdK/KoXOEcqdNs+QwPw+HqjvhU=;
	h=To:Subject:From:Message-Id:Date; b=ktS/HTKqUwX/mLPiXxcIFXjcUHsyXZwrWU//lySlQ7+t+5RdpijEdfjExGYAzdtLx8AD1R6ICYUsrjn5KP4jAE89wGmkKdvzx9dW3jbUni+zri+HRj+ogTIkDjLzayb2HSaS7cKGJ+UaHHc9ewClVIYN589lNXEEd5OlKRG2420=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb6EBXjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb6EBXjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743508193;
	bh=P7UWYGODGJgfp+xjVxdK/KoXOEcqdNs+QwPw+HqjvhU=;
	h=To:Subject:From:Date:From;
	b=fb6EBXjXcZp+U1BwPk8n/0Kj5aqhRXO8XHf4awSIU76aORglWcfwWi0nsNnsc/VGg
	 cWiFnfWtgvauKh4KZHNpKwxxVbPAyPdV/N2dMn6PakbIXv2Pmbsop4AZo8dmKmbvs5
	 LAGUwuzdV3acjYSy5KTQUBLEE9430fAut8LPhIAjEheBP+Od56v5aN6o9kuSiOfBVs
	 EroEfkZvTEH5bmMcKiGSbFE5uAA96OJ3RAgGed7tHAhgWFxQZCiFgq2T28J/imXo6E
	 RbbBtC7AmOFcHyyK0bcjxMr+vI6Kl4/5/jSIAr7vSz7GAK/Thnfl0QrMFsIyjKd8LY
	 NjXE2d4OP94Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE49C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350819358.20378.1445379350703342011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364280650c253d1722e028752783d991e87179277b2da0114854c6b50584f977
Date: Tue, 01 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743508193
