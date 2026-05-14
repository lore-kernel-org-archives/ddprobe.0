Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE4D7E0E8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778773233; cv=none; b=hYdzq8or0yj6YXrNhUxZevCqFw6zpXVZDGMGzGOOeXfKwu41yJynfNVQHVRf8bYjiyiHbcexJdsfNPoNRbT91owPANTaiFHAJOLrdWnjZY4F/nx6T/CI4HLVzS6LAmozNfBVJlQW8G67SFnmB+7p4jW5UCAOhYk5haa5Dh7jprE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778773233; c=relaxed/simple;
	bh=zXY+FRMiOGI/hm9F9ahaFz8wt6uVGdRmG4hzo+fMwJ0=;
	h=To:Subject:From:Message-Id:Date; b=IhWTcQv8cIs6tT7YTeeDoElbkjBUjz7NIKwNHpsKKZJgq3AASWeLbpg2B82uEmUMzq9D4ZsvsM99EgqHaBKk1UM+8x/CX3J9Ubf0isYHkOBAom+OWFKgiCMu3GnM5VhOphBPK25I+hZZY0j2VdZ/BrQaEYU2tw+NinIRD5PZXcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pt+bD4+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pt+bD4+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF0BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778773233;
	bh=zXY+FRMiOGI/hm9F9ahaFz8wt6uVGdRmG4hzo+fMwJ0=;
	h=To:Subject:From:Date:From;
	b=Pt+bD4+CCc9Zj9Y6cBs7i6F3p1icBHa8Og9rwMAit31Auht2iDoikuwbfAJD4bMxi
	 sG+VmhCH5q882HkZNUKdnyiTijMJ3pCPzhOAZjuAjlF+ZTf5cu0qblaD3J9lTfGyCR
	 vaNPMKGmd7LuTpRNkRP8vy529YQ4dI50lK1SN7fpRCXlo4Acayj6CdBRQKGH/Fof3W
	 N/hv7sEDCLenrYeeYFFPs5VQMcAbPBfVHLVYS/iZp0R5IjDjIY+U6IwGoQDjPZGdCQ
	 QRqtrUbPGUB+qCNajTXpq4ksABGh5QRLXwW1s6OUI03FZsQ/oFiF2p3mbX5WCZ/GOW
	 eekgiPejC6Rgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15E4CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877323369.5254.8300529056237235921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1262b78604a2c0823dcd2f16c5abd2e3badb3f08889a78e1a022fdccb58016
Date: Thu, 14 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778773233
