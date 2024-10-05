Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40240231C97
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728101754; cv=none; b=C6Y5eeKV3sSMyvUq0Eus6oo2iDabFvCHLcFLGTxREh+2dvRPoSI3cw4oD3yYlfvMGHq559gNG1o8NIoh11RWQ7XawCkX9BMSdYuZJMX38eqMnkr3bMi2AfGlGIl/Fxk5xTLUHHbkrBsdi3Jw+LvihKpftk5DRjPiOHDsK6ru2gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728101754; c=relaxed/simple;
	bh=Ui8zXpjTeOBVodhzl5uDBZZOvacjS7Hu1qWhmlmaLmg=;
	h=To:Subject:From:Message-Id:Date; b=rYoH1YmATCxpBQ8VGXnyb+x3zfomlO22MRUMEdPbG8Ml50wu27seQ0XDEe7PJVAmWle1w/tRUL9K+CVjm/kSbBjJYg7WSJAeA/Teurb3DXM9a2P6nktBKohR7LNM7Vw6dEUkT8Tph+ytzGWMTaAEdAzeKstxxL6myjrcaal0IZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxG7fAiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxG7fAiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5B6C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728101753;
	bh=Ui8zXpjTeOBVodhzl5uDBZZOvacjS7Hu1qWhmlmaLmg=;
	h=To:Subject:From:Date:From;
	b=CxG7fAivTXkPvccPUmn7yXwSrjAduljCALJnLdxOcyvrNqOu+ePAEORS92rfjqxXd
	 8C8xvnFFfAx2IRE6Ft6Refk0SKQ+kGWIHOJbQv4SUPFs2v6pE8g4OgaMHDvIooi/MA
	 uVKCERWDuHdvi/2+Qgz+xY4LKM9NyGSx9kg55Jyqlyb6XZBYjB8E22YcFUZZTyG/pL
	 t63ZVvPmAlVbEjW8L8+yr/KJqA768NF+wFrWQRQdukZQa6deRdeiCcQqjZ5PoMvrLf
	 Hw0Bn9ieq3pJoVOBSl9Q0gmGFUuj+doFMJ3EkvJoIg4Z9udtlji8Va08D6PjFBPEzI
	 toJI4rMfMbWrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96864CF886E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810175360.21168.1534364455295996220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99755d435f453950728e60cf3aaf847107e8293447ff6c561c409b2035e5cdb
Date: Sat, 05 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728101753
