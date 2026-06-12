Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7BC2773F9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781290594; cv=none; b=p90UtJgQ7Wfi9vWtsNxHhypDtQive91/AbmCxaWu7iO1zexvBaI7h40gGoKyLw6R8jCaacZTEKFZBoh4Dxgzv2Pj6hH9Gi1dy0CzuGR9XrrYXslsWMbLtp0Uf4NyRFcQwCElNale63z+PGnwCVJ91DqrwMSvTWMuYBdLSvDe8jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781290594; c=relaxed/simple;
	bh=tsPGB6KHDPuEQinjO4ygIX+DiK2LmpBpi4c54631GOs=;
	h=To:Subject:From:Message-Id:Date; b=bzb4cklioTAG5g2xAZri+YzkLFOsLEsv9CyE2au4KdOjSPm0NBJjtAg/raGyIXHaQ/gUO3RtPKU+2y7renytzS6iQX1uG8NbCEdqPjkxHgqevd62j4Xd+uXLqEnPjTkNvm6tgIlcCadTJrJ2aJ1rWwPrR7mYaCuOy8b6LPfFsv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j944XrAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j944XrAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C969FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781290593;
	bh=tsPGB6KHDPuEQinjO4ygIX+DiK2LmpBpi4c54631GOs=;
	h=To:Subject:From:Date:From;
	b=j944XrAx/JOJxAWh03yzKZHZQghsRGgiBpH34PJeaUVrVKva2gB7EkOBb+TCEVupv
	 sz0NFxK8dz2thea0OnzHL7mwjKsA/KHWuW+pB9v11BNVdkvVCbxwQFyF3qpMO5XwiQ
	 0CI3FUiPCEz5SJQDNnr6C2N83djTQ7EI6pO+HiWOU5SpAdYvHLCVNzblvPFNPSLRYF
	 XVPwUUF3BYcsKN/sD61zVrxyyBF7lKrycJ0Pg+oajIxBKXCnViwPe4x6DHoi2B/YXu
	 7djcot5Tr7xdP02DII1EtKrcMpJmnm4LtZ6ahb8fAJhYyYzj7JHLmrIR11T3JuqTvS
	 hdT7VFGH3d5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8E9CD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129059368.15992.5064178294911781676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42568bdf3169a280fdc2afd202e3e9f3c14890ae22d91c62b2abebd89b6ab39
Date: Fri, 12 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781290593
