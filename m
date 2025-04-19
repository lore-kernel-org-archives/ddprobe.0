Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C0CF9C0
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745052595; cv=none; b=ecve1ZfjvP+UG92DdGX38egtHzn7hzycy8t7A/Y4qU/9Tu1amGjcBAtYOsxPDUj4fXcMRCsgOJ1MiMaVVL0FvamucE70RylwPRIdVPVEEjYJer/sHshrvT0u2MaWc+ShxVrR2WbixtxdzYsSnihmt1FCOKWJdX+gyVcWm3XZwIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745052595; c=relaxed/simple;
	bh=7Px95NTuyzhKXKE3/kj0/nTScAmnE3mUZbFXbhY2XKU=;
	h=To:Subject:From:Message-Id:Date; b=MUgFS7fmQSkp/h3vFtwZceKtebdVMCpsNN9GGnPFgSJqM/t9uSzreFpW3DYDqnJh6T+LxFZfh4+GM7fidqz7Nuh/jtcgqM3oiDjAs5gR+U1TYb9Y/zwfqS4Mf0vNT8ZrYmvEF/XY5FMqp1SoF9fxGb3BXTXaywddobHL5zD128g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfzwQ8wB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfzwQ8wB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE093C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745052593;
	bh=7Px95NTuyzhKXKE3/kj0/nTScAmnE3mUZbFXbhY2XKU=;
	h=To:Subject:From:Date:From;
	b=kfzwQ8wBzhKh1Q946LjjN6KLAsjGJX3Bd2u6Qyp1rMOoiuPLymlRqKG38pq4fXTvg
	 EY/un2SyCdmeiPv+UqBbGHcNls63tYsumXTDfq83hh7JKgkjDb577ckbLi96c/ayCz
	 17/lyCzDvu3vpKxdejzmBj0Rq5hQ2VsJvGMbRiIlbiSHp0HVEDxT9l+PJLybmIW/JH
	 3FWc/Us5VO4RuEaMpbKY4fm69fMgSjq63QFjWmSt0IvMSoqI+yi8iLsVYbLfQhY1CB
	 41Kk3JpozvotRdpz/N8sK4fOJvdrMAIxrRJvJtOFhk9OLR57EjfNTBPrs5bWLOHpo2
	 dG9IjgttXKX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2203C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505259363.24646.2851188267283462771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b52e6f34d391e872b0c3d06ed9ede72c948772cd03b753a781c2c1549fb63f0
Date: Sat, 19 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745052593
