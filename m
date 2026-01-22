Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1636227703C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769073234; cv=none; b=thOM2xnKMU7+doHxkX6M1pK3ggs4yN4y4zst3CNr36yRjv2XUyOW639JeN6S8h3NNu3RML19/0Y7ZIyBjYGnkV1h9FsbsMeDPZfOTQE6BB6xFmgvpZowv+4bsvrwZtZKLtJ2k4SlpFXOvfZkEi+Y/Wf0AL2BCn+3g8ODNUkooB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769073234; c=relaxed/simple;
	bh=6f5oyBRvr1wnmI+09dyN7D1FEoolEW41TP0P+uH9OYQ=;
	h=To:Subject:From:Message-Id:Date; b=RCY/C0D3rbGUKpggDgQEEW8o2j6SAl8YhMyY1O7bPBL9lHWiTjDNuYpnAQsp3ZfFN3RYu0Z5dYqmsgW34BcmyCusbaRD5SWZfdnqg/ZDFhPx+vXy9ABKhSgMhD8X0XZZS5x8x3msFghQWAyMUy2QVQ5zqy9EE96gNRBQQDqgXxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho+1Uds8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho+1Uds8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3611C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769073233;
	bh=6f5oyBRvr1wnmI+09dyN7D1FEoolEW41TP0P+uH9OYQ=;
	h=To:Subject:From:Date:From;
	b=Ho+1Uds8ozml6j/ZnVnLnChP8ZM5qp1DP3BzBjAzUDtz1ehwWCf+Y9UqLZgl9KYZ4
	 g2BwArY+Ua9SmSzJu2y+wc4em0MT01ej//kPtBBlStH2xU+Ny26qHs8bThP49G00Q8
	 NSOyUtau79dzEWoAFvH1xPDFIzlM93g505tAK6w3qP/y24sa6lWwTREpW3sCIn/H/g
	 3bo7bRGJS1hSQBiiUftE/hT4k6hoV7WdQV1rOg9ENneUDLHNf5YzzG7lC+ggZfz4at
	 xMwxuwkoGYiO5WTuS2WkwHjp7D/c09Q3sRCOcLLaX0nQHDRJ6l2Vht8K8EnrEbqrrT
	 905nR0cLFonhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91161C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907323358.13669.8453604461566602040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36bef3fa5a76bc6f51cbf3f4f3b775dd18b39423a193b494d206af11a65b8fef
Date: Thu, 22 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769073233
