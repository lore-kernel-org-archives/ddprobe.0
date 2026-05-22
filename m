Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762E525B09F
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779416554; cv=none; b=HEtFnBc3pvd68yWUGDZmj6vZonfjJMaQRt1sPIYRuN9EMB1ZXd9+BV+ljhVQuI/Py3nHhMoT0uPL06098HkftdhJfggQ/1MSovJwQdjiFuMyLPPMOmUHKea1M7NXRrPWxoLjQigi9AcngrDe9LsgI7dm5h3XaseawsEgNrONkug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779416554; c=relaxed/simple;
	bh=VG7tVP30qIySrUT56Qodfv4vKDrqCWeej0GjRoSsX5M=;
	h=To:Subject:From:Message-Id:Date; b=GHLU8cyP/UoXRcDY5lfbJ1YsfIdYi6uB2XbnT4I5IrmiCGkgoGnnHVud4YSUs7o5Mup2h2a/ENK8QY1YOIUJ8nt8ElnYEf3J9qBYcsvAWzEZmfurAPcoYNPfhRSVJupBv1wSs9MoNDm34C3DCxpHj+X9bBjAdhnZEdUGXVTy43k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvZJAJby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvZJAJby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF36DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779416553;
	bh=VG7tVP30qIySrUT56Qodfv4vKDrqCWeej0GjRoSsX5M=;
	h=To:Subject:From:Date:From;
	b=BvZJAJbyDElHhgG9EoHrafBUX3oVqcSswscDm1R1BHS4A7gXM3leVsjyl6XT5C7I7
	 6yTbs2U9lp3jOh4+0JytqYuyBmt2cfkHT0xrD82Jv/cra3Hzvn+LeBZ1mqSxnA6YqE
	 q6WnScoLKHou+uCBalCvt6AaI0QI+6N+tXyJWmgOXQ7sXcsm1Cc18O+WtNqPCQhGS1
	 7EsgyQfbc0WISHRLH7IJ+4MIY+fPdzDCI97+k+gE8EGhGEZIqd/dgB3uhTY6TMAFIZ
	 X9KLYgGG4M5ZHwmXVhHUsstVMaRPt8n3RaBGuH+KAt0V0T1UdyHuRSE3EXA6VF3Sw1
	 0LczAIDjnbA4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE95FCD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941655368.692.17887809549857461953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd8ecdcbbf2d14337baef807370e05b6bc8dea4efa180b9e9faf95478d84265
Date: Fri, 22 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779416553
