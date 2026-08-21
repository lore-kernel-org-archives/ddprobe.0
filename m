Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49769352008
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787347234; cv=none; b=jIMNb2dGk93FPuUT034Rga/q0d65WaWNxGgVbK5uBVYvNBO9tkrkb9PfQWbwNjPKCTszj2s9DmGwrPaY/R4KyDyn5k9gUQsLhRYyBKtKRRgsjOl9BizIA9JzlKa+txxYlASMu2sr/FHzGR3bC1xR819OOPkyu6ixHzMlQmiFhZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787347234; c=relaxed/simple;
	bh=rr+g/aHl4lEVTdZtKfQ8OQhdOjsNZXLWr6sa2sICazw=;
	h=To:Subject:From:Message-Id:Date; b=TPOtFhTBsxhOx9tSrh7c54sgiCg5/yAg4e8UjS991u5sdWnl3yo8GrZtoWRsFI4Ziut/isrUDJHfazy889ZjyY2ldsg6/+n7GDJ2vBD+FouOwd4QIZ5VzM+bac68OHucig8eJgKEfB7yVnBAbSAOuUsIdEx0Sga4D5grXbzr5NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPugTrFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPugTrFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2461C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787347233;
	bh=rr+g/aHl4lEVTdZtKfQ8OQhdOjsNZXLWr6sa2sICazw=;
	h=To:Subject:From:Date:From;
	b=qPugTrFs4UgXLX4ljJSZBkHp4Ed0xAS3IqO1Bvp7j9T927UdhngpORr4Qvue6Ft/U
	 fZ1Lk0IrdrcxIfY7rEy13h902f+6fnwjlULOjaJ+mOsXGTM9Ot9RKagnDUXzTxwZqh
	 kD8nFWR0+OkG2InIu7m3tJIp8A7oCGNy2Y1wq5vhfBwIhgGv7mwGO4i4oNXXp795k0
	 1M7z8Bc0K3T1QLsm0ZJOA12ldyZ3HSX9F40nnHKrNP9c2zHN4GLdeIEmNVagnxYZvl
	 d75+6WWtJw14AsNEmrjry09M0R4h3QRfaFZHsElBTQQ/bEbwSx2TnCnvxz+U7Pej8Z
	 MZ52w9tAYgo0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE375C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734723368.3120.13739000235752370036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22fd648086480019bb303f9f5c6af63d08ee729a342ba47acac98c5e231ebb8
Date: Fri, 21 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787347233
