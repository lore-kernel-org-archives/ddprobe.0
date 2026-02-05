Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465E83EBF32
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770261234; cv=none; b=W83/maJPIFojc/dirZKGjmHXRXmlqdOaO5eABVJ4OB12cKasLvqHpVTe1Od6PRlvwoWT8dDdmsvODkNRyH5X+5ZjwgGGntjjGQDXJ1EdH295K+cEThk1ULYEhMPyuUkX9OpWiV+S0kT0us3qpEa7Og2jXNk/R5T/FFC8hKvb76Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770261234; c=relaxed/simple;
	bh=2lLKjng926NcMFqyRRk2VOliUHtscvFNPEPBwmtCu6c=;
	h=To:Subject:From:Message-Id:Date; b=gZTLkgtdXexSjehOuZNqnPIfoCAvKiYfeyCYyPeY1uRgFtBNluEucGzOtSKbW9vhk+cTShuvSyUnr6wbOfWMKKNt/8dPFtIjaGUza07VHZj2wPHc+sUd47lGtiqECw4jFOLJDe8ttRawq8reNpa8dbcU2SgFQVrXlQqfd/M7o84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki0lichd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki0lichd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A21C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770261233;
	bh=2lLKjng926NcMFqyRRk2VOliUHtscvFNPEPBwmtCu6c=;
	h=To:Subject:From:Date:From;
	b=ki0lichd9wPdVnIZSpcsuorl1RilOoE7nbcL0nytROJDnsMOoxw0+0n3rtzlBdQUT
	 3dXCrtgyOmA36XUc47ebbZwRD8n0t7+RxVZnm7dX0hhTsqaSndgbotO+5OAOd73yu3
	 Q6KM7qXWg1lSgk95u6YN+pEX/V72jiMFXrRDmw1kMtXFgMn7xNyXLWxxzDXh53QBqg
	 ySPOw7e4JkW3C7UTg5tWusMwZdbmvNthcg2vauAjAhCw72Ay336lrIVoH2kpg6xEC0
	 yWtxV8cc7MmHCzm4eDVvMz2lETKPvuDSS6qm2+NXkxwHb5Crcrf4lIfvnBOIOnzypa
	 Fl2MBzjw85X/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4DAEA795B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026123368.17549.5356596381077438608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9923619c12ccf47f8fb76af52e0451869bbd4101877ef0eea178a5d7f7d7a29d
Date: Thu, 05 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770261233
