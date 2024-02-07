Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B431CD1B
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707285497; cv=none; b=lwLS0d3HMMGxhp42nwuhA/gtZh6BRU1isOv9K0+Bk5x8z2E7b80mczPGeLCP2MLtbiO0yRkcALGTKR/FbK7XrBuTMEOuj8HqAh/Nv6I1pspXcF0i69l3jbbwpx8P0M+MxHek7hWZ5BU1r3ZfBtyLUwJ3sOu1HiIhoorjVRNq+9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707285497; c=relaxed/simple;
	bh=knNhPTuSFg0FlzKBfuuxwNN57v3wJw3BQBiarR7c8ns=;
	h=To:Subject:From:Message-Id:Date; b=n07bCnmmfQCg24Sreesbx5yxaC9dnmInW5jsVL3AyebgLeMFpWYiIYclq3n9DFyyz0e74cwn1logMXKmYE2OFZ+mvTdmtNygFIvORZgasrOw6LCuK5XLzw3mF2YcL9mKoTkGHHdZfeDTNwSG5F3+1iMfhfpwBHDMRROn6CQpFrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZBUisxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZBUisxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E6A7C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707285496;
	bh=knNhPTuSFg0FlzKBfuuxwNN57v3wJw3BQBiarR7c8ns=;
	h=To:Subject:From:Date:From;
	b=nZBUisxsViQwi2j22Wop7D1welVT7lJYyixlXJFI9b+Zq+uxf5FhogtScJ1R9dWzF
	 lvmAid7woCFV56Cg/AG/cZ5RJwfxT2mQOsyIRuPK5ZWMpJUZaCGyEAquqY5rRnmlHk
	 0oRSR5475VMPaJ2oXlVC6XHPvvGeyIKkby07IsMf4+rSjQwzBPYmSkwZ+85A5fSFib
	 C+HHXGIMtyBj4+iooNhx+XVHHptaWMcCmUWMdW2mdxLcWZ4yDgdj80RXOyUODeF1gi
	 2dtrNy4hzEtlQr3Gp7OWkiaKehXCgiCnO4k6lcETSE8rx7pSv7mZBVnqByNYAbaOSN
	 pyD0ApihanZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E019C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170728549640.28480.8802587026853177112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c09fad8491ff0b5bdef3689bfee9d66a1b2aff4cd82ad4f6062931c8dc0566
Date: Wed, 07 Feb 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707285496
