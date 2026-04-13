Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD723C3BF3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776085053; cv=none; b=WrcZNxWy1sixVwJ+O1CNCjQj4kUpLEZRrZvUPd/pOtjdZH7RELVhn7T9Pud0NwcwrcXP1VGnmDUWPOTJxOSgqENMBsZMDLDopnQXPlcZsCdonnkb3mzQ/etdv82SRDOpCDAQdsAje3CV99/U+7hVj6EJ86KT0JWqVUX1yjsV/Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776085053; c=relaxed/simple;
	bh=XC1byoWAgS5QCvcrfYtCIXMsqcvt9bM++m5a7JOF6yo=;
	h=To:Subject:From:Message-Id:Date; b=o7Kb3qd0v2UXBPovhfGiZA0I5KIj3EuXhwuE037zf2qYjUEqD0daUBKwFJPEmhDgWosFkd3x7SBzfMx4d18fZUwu9+ZqtuKkRra5ivNOKn/yLFdI2nrgTRC0ReJu3xKNV/y6zunej4uBj2b6aebB8pIN03U8ik16x5SW7TDjX9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAVVMLEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAVVMLEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D1DC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776085053;
	bh=XC1byoWAgS5QCvcrfYtCIXMsqcvt9bM++m5a7JOF6yo=;
	h=To:Subject:From:Date:From;
	b=WAVVMLEgGPKv9dwfOIfE2Ne2XCHeve9xIwNpRkzUIe0qf3GfcPQySV/iMtYrgfSaV
	 SMDG0dm7lgdBxn8Wo4aUNDI3zrLud5XTCutHH2P02LssAmSGJPnjd8SdUEdkd8fCYK
	 qxg82LCuBepHSVNTu9/VefcaZZwEKU68fY9FMapXzaVGX6Sca452qtl4U91aJLYDyL
	 jDGQr6UtfmirO2wuMO/9OyV9W3mWPqSh6Q4uCOoJsS6m4gpiq8oMq15fteAbFseXno
	 HTWPO0FhTKdvz3F0JioTt/O2w2nE2fHWZUSkfEIR2ytkSzBgMKqwKo045gZ8k7opol
	 8gIR0mcgxi8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BBF34C49
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608505368.14371.15468498146122307529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f471c902b0a308b12216c107f328d76010666c44706e0d9687444601fcdefbb2
Date: Mon, 13 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776085053
