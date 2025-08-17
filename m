Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A171A23AC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755413394; cv=none; b=KIPzFGvxpJPTZP7v1gYMKkJnsMWd710mG4yVSUSuz6RlnFjOudvtxhthAT2SOWY3cGBMeVZ4K7QwC60vAJjEpd7G0HhEwNodKp64MkoktJ7GQlBeqaGeFOOy4i9cyMeONnCrLFPZrJZYbAY38s9MFSzzTnlphbZXhCSA5ETx4XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755413394; c=relaxed/simple;
	bh=IjlHxvUWdxLdyNyPCGFKq0nbegsn4yc04Cv8PMz6nfU=;
	h=To:Subject:From:Message-Id:Date; b=p1H6eruJBb20L3OuYv31B+VTGew3AqfoZZUMywl4l/aYxgnrDUai/qs3g7AcOo6WjoASJnw5crC1TUteJPr4cAI1U/rolpydKqWnd1ewHEOT3I7puVPFORRLXfMd78gRpElSE13X0e5rWsglhbmWUBNjhLUGINYCMd264bdqJ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGxtAL1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGxtAL1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755413393;
	bh=IjlHxvUWdxLdyNyPCGFKq0nbegsn4yc04Cv8PMz6nfU=;
	h=To:Subject:From:Date:From;
	b=IGxtAL1efzB4/Dm9esd2NuTCKbYtmbYjtWTD9xyoyO3vfwhSkexsf67VzFARnq4ck
	 KzS6dGRko/O2eY/fTfe2FBXOR60dkjAYVfXce+dTorDtYvLzw0ufRPmT9HfnaZOEgo
	 ziQ8K1XvowmS9Fp8VaX0b2D9UDMIpyaaCDAKre1/RTyNqfeX6qxOkXyEKuz0w1yk8J
	 AG0sWb41SWPYJzm3dJewWeEnpX1Auy+gOalzTILc+QK3DI+6GkEB1TcAkHhOU7qR79
	 2isPccidjKSqQZVBzUCHfCih7SZGJ3Pcg5zbklyQFIQjcKFQ6wtykXbyENfEkXA+LB
	 9PticgMdN1M3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C57CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541339357.6838.7589089327695475233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152d87ae257b4d27bee35dead88688e6613cdab5697805fac28ac31b56783eb7
Date: Sun, 17 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755413393
