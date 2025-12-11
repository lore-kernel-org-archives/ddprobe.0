Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE2029C351
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765452174; cv=none; b=MS7HhFzY/YJAaDvIOs8uWkRMfpy4XnYBa6WzHZm3ulqZva2x3EEDythSKk/ie97CFENp3oFfjVEDtXL7SxuL5sCIw1sDxMonmZRI2E6ZPM1hAb+5m8yMJfIx5EpuqufLZWaNyhVEqoAYN3RS0PzdX/t5jUoOyljLOAcF1BMjO8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765452174; c=relaxed/simple;
	bh=G9zKWW12Uh6dUOwR2Ev6N0g1BE74RewTvM/dlKG/5hA=;
	h=To:Subject:From:Message-Id:Date; b=H2xk5+o7IPvG3iMVaUN2S2wMikbajDNcxMaZdihT4XWzZJzXiPcmoO+/LbbVH3fnrwwY5TcMzFwn8QNAMUSoBjqsT2NghVythq+B2klYMNJPtvmvsJe1owKX901kKL2tMX7oia6n0Rl93yw7jjCmJ1XbfQgHRVhQRyZXsAGeOEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEfYxoGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEfYxoGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D77C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765452173;
	bh=G9zKWW12Uh6dUOwR2Ev6N0g1BE74RewTvM/dlKG/5hA=;
	h=To:Subject:From:Date:From;
	b=XEfYxoGpEJYYkEinrsTbJPolC0Z9TB/Z7jPYyvEXl6ggDNxczebr8FV8/DM7KnOmJ
	 zhHo6a2WYHKOopJbvcvCFER9CV1JTgSgZo0SqKRPkqGj69joEXBMCi1JZeFYcRVyLU
	 as+R5STpxOsUA5/mod+Uck0dIbYbnlIemb/Unq14oi+dis128XGTFuROLJM+ETyiPn
	 /SLO+MNUUhsNZIOhIFjKcj6CIQ0qJDeIN3lqGFKqmx8If2Pf9wL9Snsakl6gaILstp
	 F+Elil5hM+9dJgcuysRuJyiEAfdQXAdVCSZ4g/xBXPfrG11wBNiyIccnsLB8SxPBX8
	 WJcN+Zlq1tH2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD118D41C21
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545217366.29165.5938038464149125168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ef41e9163e8a1e0f6d0d0c1b75c6c9aacca98562c7feba1b4f8819938fb557
Date: Thu, 11 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765452173
