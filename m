Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B61F371046
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791385234; cv=none; b=IbE9xGHvKQfQFRQ12WC5HJIupXoR1xFpvABBDGKqQkAXKcq0sGDrqF+zzNdYgRMJl1a/JlmbANinDu0rsmi5K+SCWN4jkAzGvzypF5Iw1LSEAF32m2quTMTkKjDrrrZ8pquFWaOLycKiQumuQJqEvTm73c7xYmwHIV9nDFRKXtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791385234; c=relaxed/simple;
	bh=6nz4Ob58lshXvgTAUcwg0aNep/yiLCLk9U121tCEwQo=;
	h=To:Subject:From:Message-Id:Date; b=tA92/oYpLRgh0BFUwYkl42R51Y74mejcKhXRzr7eCD2zxgf1/DUEnhf/2fXSvI5cZT6aCA8f7gUxhrMOhT90iohZ59ZUZTIA/ky5OtwyFKDFAc32YSzKi/nz51eRxP1GQpn94jJ2Gmx3AsdwrZhB6B1l0/ewKkrzCTm6wUImFAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msNZGSIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msNZGSIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B58C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791385233;
	bh=6nz4Ob58lshXvgTAUcwg0aNep/yiLCLk9U121tCEwQo=;
	h=To:Subject:From:Date:From;
	b=msNZGSILhn5rmPIdxBPYnn4tp0MezjWPl9ZG436k+sieA983hMGlkcXYxWvm2uCMI
	 wmBXIMD4SordcEHPToEIxMQ2OEt/anRK+FE4sBlfvCEHb6+5esqT3jKL5LtkE62cjP
	 cXu7qhLBGU/wbuPPBcyXmd4RRhrtYF2AM+qOgOpbaPnAsJN+0/tM21BIa72WFh3b8W
	 fQ1ANC3pTrsMRa6ZmhoolNh3XQnRoyC9K09dKcH+KtDxBdpVGsbknPIx8cj537Vekq
	 KU+3u28bSDWd3brOhwlhELimzRf2kmpdYKeDmn8p34WDUPI1KBUlVQJfbt0eaKALA+
	 bYgDcqqZlgOSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC997CA6007
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138523369.8072.15299259304859720718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc65936288fa7f257c319ef77fa2766626367d656d4fe504d694a3434bd51cc2
Date: Wed, 07 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791385233
