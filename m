Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5773E63A8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788691834; cv=none; b=SazOKL7q+xxK5MZ5SUd6jTW0fYJ+xodGIpoKY0+K0Z/XFgom8qG2aNXVD/ZjGI7sVcfzTaoDvtnzHUw3PnAjECCQttHgGE7bxWDYjUtTz3HIW7OohCtafZarOwypQjiHJKH/K5wqNHUDsSoISa+bgBkqLhhCtDK24CY+eYBOIQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788691834; c=relaxed/simple;
	bh=b5bWXsKXc6KsmzJZ6UXbTBqn7ENjoAg9b00fXU+CL3k=;
	h=To:Subject:From:Message-Id:Date; b=MphnURDBKPxgCZBc1D3emlpJqfuqbnWYhhVJ3SWNIhtbcY4WC23hS2CUsyMmDmZGTi6m+sEGx77mdftAZ4w1VKg96W1709iF9sC8hNUQ4UXMBryCFFpZt0srCZH258p3VFOTA7MgptU+n9wCIBMGbVaa8xTqq62/5Ln5awH6Wf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGeSoPC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGeSoPC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE96C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788691833;
	bh=b5bWXsKXc6KsmzJZ6UXbTBqn7ENjoAg9b00fXU+CL3k=;
	h=To:Subject:From:Date:From;
	b=PGeSoPC5tIM4JVySjIaIR37uj8J9u6DFrfvVuuykEf2JN70bEc4LqUNe4MwrVycj0
	 CrwPlr+Uc0G449ueN2sipxC91t2hnmgDTzt1p5J5MoNNpBOAxh+2DZcmMZWSfSz+QX
	 7S0OHDAlGu/a+Tv+/rrANLchBOwxJs3+/qf9KnC60In2H2YaZ5ZPMfXuyZM9vhaYE2
	 OQ+vRFOqB27KnlKkoLtoWdk3X/dt7a7nipYUceISCPfbe/61NfQBLdF79LDjg9otAC
	 eFMi31SiF1/LnULXTNwJ7hjLZIDZq2KUg4GN/eyr7gU4h8U4+KvHnT4n8TQ5sLsfas
	 4rJ4Cykqnnnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27DC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869183368.28411.1907391782865193267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e68770c23d144047aff94e6ee62890b0b0d1fb2875e1284c93a75ff67901e6f
Date: Sun, 06 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788691833
