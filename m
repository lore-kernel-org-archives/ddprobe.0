Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48824DE713
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789647637; cv=none; b=Af2Uo0ukrUNteLoqbW7FTVjQ+dxCyUhah41rxrnOmR7+otgsJrszP/27R8xtZ5kNlQ+3JvPpNec+9cxZWNLSVfrdfyxsHTazHblBVgJQcRh3V+qKC8gnlrS17oQTcL4p3NfgHs2KGqxXAI1skaitmn+60qyfca3OCbQifFyOW0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789647637; c=relaxed/simple;
	bh=ipQdsV9JiHS4emooOvvdpIDFY8qrrdf0ct3V9ursdMM=;
	h=To:Subject:From:Message-Id:Date; b=CkgN9iVUP9CdrufTs37CfeqNLIJRDeBra/SGssXeCOYw9H0sQ2cPtGAQczk+4Gc3wiBrmJWNvLsLK0jB9GYafDT3r2h2inQFgtwDXpPEzImAqpDn73tuVdipR2J0Cb+fxjLUysKoeyh4sH+aw7yE6IcNYdCel1rtRoNsl6RAA1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgSbsOae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgSbsOae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF98FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789647633;
	bh=ipQdsV9JiHS4emooOvvdpIDFY8qrrdf0ct3V9ursdMM=;
	h=To:Subject:From:Date:From;
	b=PgSbsOaekr7VJCzVVA8+Fnb8DPmDaum+ZO24Alp/ujuWCSDj+o2rJ9WcICw0utC8A
	 P2qhYBkQhxQbWaRS0JpostDloRki1myNd2wvSTIZDThjG0i+ezL0g/xxAYqhDKQI1n
	 t+rsq7a0yRMDmScCu0MD/nFP4eb1h14Kx4qJ34oo8Fq17MxjIRqZ07s6oYz0PYZGjv
	 Pqi4RkbtXxDxGvBvUlvmFNzs95/Z6dMQe0u60NAPEYzlnI2n27Mx43rTNbi4kdAaPO
	 kBImmsYUPkeOfIeQi+358Q0BvECQxwTo7917RFtd8QYJbZoaTcEwCgXh8vc5NC6WDq
	 E79srgtQhhIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC462C982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964763369.22492.11040711849796403137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec830e7956f38e8db6ce81a0fb139e676509b16eba0416eaf9ae1dfa99ad664
Date: Thu, 17 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789647633
