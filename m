Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476BD286D76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749201594; cv=none; b=oMjuc/YxbpjjwPnhjK0Fo16dp2W6AFtihbUJJ10wnfZs1qzZc//ThmhGdn17LP7nLhoiE8qHLPNOcrodfOlfzI5BFba1AQS6qxvfhifXPDNgg63899t5gQq0o636TwdVjtppc36P/Q1GYduV6lgDMlQ5fM9vmxcFvE7pxbXjtt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749201594; c=relaxed/simple;
	bh=rZwq9GYTPRcdGepqnSJpxtyvsCOTSCf0OuuE9H477CI=;
	h=To:Subject:From:Message-Id:Date; b=m5V27t45TGMWiD8doqbT2TvlRBi8SbLQN8fojn7W9El05g7CMZrPALn+qB7pAltg9Zeqhk3RoQTMM2703czfVCs3QeU+hTj0sFSuQ5YACmXmVkpWjr9Lh0kVJBWAuBz3sLIpLMvkQQb+LyvBCrhsbLEUvrX2gVrF2FPsfEDpDts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW/jtqpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW/jtqpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3972C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749201593;
	bh=rZwq9GYTPRcdGepqnSJpxtyvsCOTSCf0OuuE9H477CI=;
	h=To:Subject:From:Date:From;
	b=fW/jtqpm/2XobdzvCPK3jtoopBK1JHmcQ/lgyvSMMgA6ewQcS1h0l3v60NYeeGxXW
	 7J7RkyIyIXyZeT77YMHQYXo6Vwi8km0y01bJuM79LoJK0Fjj3XV1kAo9VHE4Q6HXdT
	 YkueYSFW45bYLFQbD7EzwNBdziyyRVJmo7ndMT8qVK3L9nrQQJlFJRvjmRFW7sLPp1
	 RhPoNRGgiNsGhwgcGe1IkllXaDH/8XV+c1JqNTWgrJ+jFgH/3jACNHcRqyWPvnT1+c
	 LpdRuZDRXjuC92q1b++AgeFoB9yBfmWSWUVjvnRjnG1av/pqyB/2Ou3vVe1RfxnrI/
	 t2rB61nrcBNLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035EC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920159358.28091.12869812511164469375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec11cca1d23bafad50fcd3a2e2965c226b2150c4aec3a8182a098aed371a51e
Date: Fri, 06 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749201593
