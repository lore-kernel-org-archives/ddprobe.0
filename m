Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FB31429D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791259834; cv=none; b=ePmQF5Jucs6IrVCf6298jQAFME+QPEAa97YSOuKbVFndOmJoWH7KjEB/9pigqm2a/FdDBtTuOjeffzWBdsKtHmNGf8jEKlYFXqfZv+bJ7ONb1z1SspiKdeNdvfBBKfE4GzNTkrEuvBHvxEvXl/QmYJePECUkLzC6juu8VjxSJ1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791259834; c=relaxed/simple;
	bh=HBsBHGesnVqx/MirgSz1DRZVjWYarK/pnqX8l03iwcc=;
	h=To:Subject:From:Message-Id:Date; b=oC9TNW99yOA5xbpoKGM+rJ0WMSzVauf1MTQklfzCjlZ9spUPjNivUnfKRTfdf30775GXbnSN4uZEovrBgzbh2hubrLWf2FxOWo4e2ExHy4qmzuVuYBO8pv4d+Bq9z1hNgJW0jXnbsSDmOT0CdeAwqzMZhy4DhfgNAm7zMqP4+RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3UgKOEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3UgKOEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F95C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791259833;
	bh=HBsBHGesnVqx/MirgSz1DRZVjWYarK/pnqX8l03iwcc=;
	h=To:Subject:From:Date:From;
	b=D3UgKOEsIwozZ6sB4eEie/gIEsR2UVn8Lxrm1MBoXZWan+qY63AMfvO17rIHDKpgv
	 eh3X/RvHLSUy3FEATRxnkPEXbpM+1GIhDmjBJZ/7fjjMsuCrscxu834g62vMBbjaIu
	 CHboP726s+0wLR3STtSVfcZFZyVY2PgItrPgOs+gMgwdngrJ42LkogpCLbhGuXI3e+
	 7oMhtrq2kdwwK+gwbQ5g+75WbcwlhZLrfcgi1PWPRzcmbvkAOrqnisQo/8PEp6FWap
	 QXghHDSQNtzKP72uIOmHzHYJiC8BT4H2ewv5RkBqVTXkiQ4TRjBxsRkpT3UgMhUrBu
	 aFugKEHIg326Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02FCCA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125983369.9922.15734415182620251848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2eed0de377c57556a09f92062b75a6fda8946652bafa0d17362b363a6ff4223
Date: Tue, 06 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791259833
