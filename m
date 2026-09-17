Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A8332EC8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789605034; cv=none; b=hVdFPfI0E0wCG7amoKuMG4r7/SttVDNOkf0ReXc143Vc51O4r9ndS99o+98tKt1ipsuOZHTpo+G65zs+/6rd1b5mQluMtys+UW8SOAh/JCl5eklWIwsFW4LjfIPtJk9LpylfOhioFt/YoTjB20DRdHMC1VA2rORwbbZyMBM75FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789605034; c=relaxed/simple;
	bh=fM5D+YBM2+vLmTF2ENIeyleahZ5tFY0mJ8wbHPPCwJk=;
	h=To:Subject:From:Message-Id:Date; b=BVmRYnprqVHh4s+xec4wkNU4+D7Fk3tSipkVsk6eO/TpWqgj5vG1OoJyQtTW5dvZV37GjlSW908UxBh7GH88bFQKcKoHMpqX2oNSdadzz3L8ROTf7ucxKUdUbDD/pEr5g4T4ef2CVC7QRPat//oSHjERhQGIpoElXgWaPel+RxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty9KrLmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty9KrLmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EAFC2BCFB
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789605033;
	bh=fM5D+YBM2+vLmTF2ENIeyleahZ5tFY0mJ8wbHPPCwJk=;
	h=To:Subject:From:Date:From;
	b=ty9KrLmLQ9MCNNvB/y5rRF2fN6m7V1yqghnD7MXNnTFTvzTXEY3O0+GKmCI7XvPG2
	 57o3gbnLSbV5oogfO2PIX5jjg2ISEjqxAN7QJ8MHnGlZ5neCy6WFrCKx3WKwVrn+aw
	 JuR3nZcpQUX0D2M+Fa+KgdnZRPCCjTddEkwWEB63p79oxK7mhDAJ9rgW/UvWHN8nDt
	 2s5EVTDDvGVpnRUrcjSkhLvHfhxxAEDm/KM8d6wNcqffQiVB914BJeajkBA1xOCRuX
	 lYkdd/6fLyLNKoOPe8/1pHGo2523wnvTxKFBn96zO7G8UhFQdH9gUAGRlJzkUgk2yH
	 Tw4M/wbyrTWDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0355C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960503371.24829.2441085201889542460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d2c72fcbd224fc9700de97fae7af966fac6cf8791375c2b428a7667c4c71df
Date: Thu, 17 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789605033
