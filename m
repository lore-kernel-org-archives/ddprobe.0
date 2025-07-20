Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2A1BA27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753036194; cv=none; b=q4TjgSDTISQhbAVFq9a1n+HQvELroBmnp5OR3h0ClXhqMjRxy4EU7y9+R7P+qSM9M84Q7s1vicImu1kjTY2Wzx2qUJWHiXXxODDyKoL/ZVDmQPX2rlshjSdR3SHg0LWKUo4n6iNpkyCLmfSYR/sbVZrVeCz9q5TmM87WgSo1+Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753036194; c=relaxed/simple;
	bh=XpTdrDwoyIEStoQfwa/DpRApZtXc/WEk8GLty+U5x0k=;
	h=To:Subject:From:Message-Id:Date; b=cRRzLLmw2Pi3z8ZZdQlBFYzfjeE2Syuhvlsr4Gh025ZKtrG8Sfr+BajlmG05U9djkKwgYZOvHUHGMUtyhOwrojReSHTecyWazNKOGML/zGai8al/i1szC4IE0zOCKjB2qcyKnt5WC/qNeBlYeyZ3oxmuLsNgSkhsl1BRUAdrNyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa6mKd+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa6mKd+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0460C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753036193;
	bh=XpTdrDwoyIEStoQfwa/DpRApZtXc/WEk8GLty+U5x0k=;
	h=To:Subject:From:Date:From;
	b=qa6mKd+CB9z3I9fxruOuocSxK/Zxeshxu6wf4UGIk7Ijc5K2sp7XIuvRV2uupHiBH
	 Z/jkMK/T17y+QX5SojcTaqGwVyfdvydWAJP3W1/VDH5NM3wQCSU1/tVA3CNf3EFINX
	 A6JaBm925E6KG4TZkNA0vyRw+/6u7Iyw/JuYEtunnSz/VYvCscET022S75Fld9Q7Jv
	 NQTFHTmjPlSBIVEu836ZhnJ0VQrYnEvbgI7CONxAu8G9liWonRijrQpCvzG2sJ84Xd
	 hW7s9RzN9awOZPwXsW4m5vGpe2LB4uRXaHr02RJ/hzZoD9nUlDfs/BFopEuuaVjvRH
	 qQ4hx6CN0KkCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F54C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303619358.28863.6190273831772855605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd14985882df07fe08edd7bea07497ab67cf530df0ba7824cb173e66bb851db
Date: Sun, 20 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753036193
