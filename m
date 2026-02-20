Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE6342528
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771590294; cv=none; b=eTSs3M5ghZgHkwsRbZMs8J2EsvqwFi1zEdFBfniN+BWxDPolsujz8tOEQ0uAvJgTtItrVQkSN/O3GW3/8evjKlWwOl8IZxb2Od6izYnX2eKVX6dQDqmi4Yx6Xl2GzBhs+i843h20RYQ5xujrC9q+QUoj06nk8E5K2ye4lces0Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771590294; c=relaxed/simple;
	bh=nvMEEk9Nufm2MYzb3w2uR2GeCc1Qi38VM18agIaTSWA=;
	h=To:Subject:From:Message-Id:Date; b=qMnrPp2Mnwb6Nz9XR+1iHYTKS8SAi5bDaDyxbhFHesKgQPG8LZyDBvC7ed4sK75Rc3JSWAuRzVleYA6EtbvKpMeizgjBrYWirlQZPuXGDRnU2YooxV9NzB4r5r1GUbMIzU2hkWa0JXp/fwSeT0I2PX3hrFrW7KQtH5AfRxUx11A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4bIdkJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4bIdkJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CAC19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771590293;
	bh=nvMEEk9Nufm2MYzb3w2uR2GeCc1Qi38VM18agIaTSWA=;
	h=To:Subject:From:Date:From;
	b=P4bIdkJhDL6spSRgewGQqRuddpkEnnvULYiVA1rx1eLbc7wkmSNzKsJ3/NMn9MHpL
	 w0ebMTCsMRfOdyEj7/jt+BoNy+mtktHQmuJUL0ne2vvCaEtNGCijVF48hjtgyIl0Ro
	 9HvuMykYCsHc6mIGPBxXijU4jBsf0E4LPdwWNlc7GhjdUIQwSLUVZujCctofIF4xl3
	 NLEVZlgxOW0q837ov2/Gry4MbzqgXb2hBBnje/H47sNg4ODVFuz6kKSgbrTo6VIri0
	 Dhy2DREe9EhFgKCKJ8KeG5vTqxq7nvFlE3UNTEvA69tmIgJDNT1tfWXHyITr9TcDG7
	 C0DSLNy+u0QXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B09C55ABE
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159029360.31898.2283852125136200669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537caed0b6d1f8d200deb645bb561dc78143baa2d60b418b03bfcf51d799f616
Date: Fri, 20 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771590293
