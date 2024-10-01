Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EEA6FBF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727747155; cv=none; b=tnrMR9Ksgpdj+4H7Q22cemOloNT9f7HCKM8363qcsimCUFNZT18qsjoofEjH/dm3xh2vr9+JUfm91r8YGZEmfpX/rv745mxfRNRf1KRkaIF+3Ji7uRSH4cjpnc+wQD4GXfVFgHfzBa5IEHQc3IF1NZcHbNUJAAYy+eggKwKzbR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727747155; c=relaxed/simple;
	bh=G3MieGNw7MlPAk9OLE0cM9TiHxx/pV0OpnnuZuI4rDE=;
	h=To:Subject:From:Message-Id:Date; b=PomRsE3wSkMaXFBddyYFfRiuaRFhwoldux543L1TMhCuY7RGf4j7BRlZWzoyyrZNZxAZaQD3DaElt1bibOEXrfxb7Q9W0hLVA1k9OfQyygGCVzxy7aW5e9Jd2RwELHCHOnBPm3W7Uv3yi+jvtMIH9LFgYzKoKvlG3c+d/ZZPUM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiER8iMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiER8iMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE38C4CED0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727747154;
	bh=G3MieGNw7MlPAk9OLE0cM9TiHxx/pV0OpnnuZuI4rDE=;
	h=To:Subject:From:Date:From;
	b=UiER8iMJPhGT36ySixMh/7pKua+KflueX9nfrBD81tVmYwMYxh0CKsEQ8nVjQlz0l
	 SNdrWLio7iGN0GbjV8VSHFg49dKOeP08IhqZXTciOBd1rQ0ufz8C8f83vxYIxKS/KW
	 oxz1srbq669eSWBWYaTUAMl2oWqKqe18ieyE9AAbQdPPYlhjvwdcz4CZ6TdDQLX1cj
	 eF9qTWyk0DIAojVSKos46wNLPYJC6bPmzUtltg3Cty3ihdh5Dov65SoK66aQhZfJH3
	 gKBhgcb7ySioRdBeuAGcwrmFhXIzVQT7RS9v18rmwwNE3CAO2tmLqhD0IAQF7ZiqNF
	 b8YN3/Dq1fmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980BECEB2D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774715361.28662.3335177189946222307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7874bf2803051cfcd21f3c0f410bdd35e58f475759ddd401adc9266baaec525
Date: Tue, 01 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727747153
