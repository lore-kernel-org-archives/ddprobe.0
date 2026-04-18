Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA5A1F4C8C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776472054; cv=none; b=Z4LkVSiizdI4gUCE4qnbSBKD54xXsXyrh7eIas/gGw8HCRoBU7ol1aqeASl8jJA3boJfs5S0ILBUt5JIC1HIFqVWtRDKWDjAmIKaEZx/4HBtGLtmqE8UVeTMIk3QwckrUFmiou6Ak53di1TUMmSKnBTiJGKdhRQfe12JtyDlvS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776472054; c=relaxed/simple;
	bh=Yahz4NCVieDDkpKrLSU20DoH+AfidLHHtjWLliem9TA=;
	h=To:Subject:From:Message-Id:Date; b=Ps1UNj16qO50HBi9Ya63cixTDiHAd4qJ46G/jmIpTFVjrDgltz9ITNPqgc5mkyv0+wlZmhgVs01FnmRFdTqZpOeqbnRD4qhU8HjO8T8UMv00x4YZ3Uq27/Z1Mf+a+VNpw4MGGnbWe1CA/YiHec0bk1magVI+vFbnmMwqSrbzjD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxWHhR22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxWHhR22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD078C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776472053;
	bh=Yahz4NCVieDDkpKrLSU20DoH+AfidLHHtjWLliem9TA=;
	h=To:Subject:From:Date:From;
	b=TxWHhR226a8WrL9aBxfIMv69fukBDaU1zSzwZqv1TO/AbXlijsK45YrbrJKgIOdri
	 2Lk4YVTVFRuJarqvilZJjoC70Iqxh52DHgLoJ81vIgxVarfaFA+NkZxAxTb244zWyr
	 KfYs9ItlWAZwDDGQBY+XjskQ2Kz56AVkXwTDozvVGkvHI1OA4iktEeNYvblWcShqtU
	 FgYhfkDOB9w0FpHSjDmobAsuwq7AWk1OGHa4ivWCEBw3FRI2QPCzRYyVU39xtzVZ+E
	 jsmtXtQoaeziPp00AKXMgW0mEUZvsv0OYSn32KMiDPjcRdZiLEt9JevV7bvPk1HECW
	 KztOp1YY2l/zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9639F99C6E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647205368.7888.15971030783567984132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de74f823a6d2d03b5aae58af7acc9459a8f84a2acfa98c848a2d533ebe6abea
Date: Sat, 18 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776472053
