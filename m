Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFEC353A8F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783181314; cv=none; b=OkVNYlCvTvBTWbo9rdU2m0CyLMM7xhHuix09Tsyn1bu5N5QTKbIX3hgxgPVAyTLDHGiv4PJyfaHTh4Wd6WRsJ8fMSE0j8M9tZEp07GozTA4IMM0Dem2n0ggrvZFxORa0qN4qZAOh3/qGDPsWAqvrUyZE7/Fx+urxaDGCN2r337M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783181314; c=relaxed/simple;
	bh=DjXsTWkdIos0Th8bkC2Q7HEKsh8tCUqw2/QChnu96x0=;
	h=To:Subject:From:Message-Id:Date; b=FcS/jvtSOzO9TMdZeYS1qeMGR086w8Y9zg41ZUpN9tw3afXSKaPNol499jQYD4ji5cC6zwzxwckNOm46pQ2yVD4VDL7Y4thToawkune2/L/ar3mG5obaPESEaPy1GUBQoRTycGqYpH7lLMOtvHJsapGU5VOGRs5MOlGmjx37FyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvCvCcwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvCvCcwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD059C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783181313;
	bh=DjXsTWkdIos0Th8bkC2Q7HEKsh8tCUqw2/QChnu96x0=;
	h=To:Subject:From:Date:From;
	b=EvCvCcwx5lt4FZxfWlTHVk5n/GkrU8tdll6dotLdMNgyYQvTVTH+E3kewDeycVwBL
	 OrsoYZwdEeZyuptjaP70mASoqJJGkLANMOT9P0zqygzFHfXZz/7B9G4R6pPxEt0RJV
	 blHI8Ewb4wW2lOF8wX/7j2/nD7KmAuBJhlgx7/6gbeYcIRgUrOHly9svuJCJay35f4
	 9YcfU42MqsZfivDSBvsJwg9RdbTennfySzxzgEIH6ir06eIJuPPSvb1YkuMumIiu8f
	 DKOBFM/B15Z1mroAXz6Ej+T+aEiozqsoGWFpWY7sl6xwSm8OZibo4GjAw5tVoHw6uD
	 qKHgiwfL6Cifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB14FC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318131368.14382.17544941762988162895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a293915a3aacf58d71bed064631033a8bb447f0e534a4b5fd055e2536db7eff1
Date: Sat, 04 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783181313
