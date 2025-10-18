Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBAD86352
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760755194; cv=none; b=Kl0zLwsq8Uf2Y+sXhIZxn3xJ0RVUV2AOD9CQSqy17v5BVLWdzno+RPrqp4ksQqusyOT2NwcWsFGiE6ZpE0VPRxRi8uYQxoojOCJKBZPz6tgl7WfJ00xeyFSykCRiYgLC60vOC8pJW31E0yY7YTczXDHbFDXmTSNOZe57n1s8qiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760755194; c=relaxed/simple;
	bh=vZ79FlSpq5aXJuHe6aUUJ0tkVKBI5va3B0sTx21UGkA=;
	h=To:Subject:From:Message-Id:Date; b=fUdsKQ0hDLOLo5dT2Rv1wxXEYfSIDU3hhPgeQXRLlSlBkK1DcWugNDCjRfkHGYvBTET+cVWNt6sXB2Qxz9HS77X3gMjBP6VgtMC5QoJ1RJ10wEGKu+n0D2QFyMVxSulkXn85O9vImD+GkEVjteqx+NcZgTjMJgvskNHz9l+wEc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNTG2tK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNTG2tK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9FC4CEFE
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760755193;
	bh=vZ79FlSpq5aXJuHe6aUUJ0tkVKBI5va3B0sTx21UGkA=;
	h=To:Subject:From:Date:From;
	b=BNTG2tK6YA5QHzrCR5tFqeeExr3OvZA6FUpDlTuAmVcZwywg9XRqywNbsGfwlT/vS
	 YwqbvjYhNSfPTOWDneITJ2JzM9m3eyG4SQ7A9skrE6UKg11JUuSo/TG0fi8c+QIm32
	 FzpUvLrJFqWErT5uEPHKoY2geQ4gInfniKZxiDL3hL9aEIqZlg40/vrong+99NzVuK
	 e/IetPmBFw+yUY+CFrR8Qzl917v1Sj7nq/p3wGflRiZiT3U6HweSjwcZJJN2xjaPxK
	 otgENcFMpkW/vst6Fy5SzSNnMotNI5UN78aXKRauCCSTqonABuJupYrJ/TPD3/gT4u
	 891PG2KeqPAKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D11CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075519358.26846.3782825889345960580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c62d62d001b9a870db4f9ba7df312f45e6398548e8d2ba5c79a27c3d9abacc
Date: Sat, 18 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760755193
