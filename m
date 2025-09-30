Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2A52940D
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759225794; cv=none; b=oDk/G6F69KStlGOM0UKB1sYRk2CGeI6bjxnpe/c/ah9e8md1DK8zyhNugR+a1oTEJGom9B36hR8j34HfaL1wDNbbFbhGcBQDN8gRHSrxGAeY+MjrhLVIjBSCWkMXZMxnbrp1IX6heCkXuax2f0BYgmxoDzGNdbUYDNL02qzzO9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759225794; c=relaxed/simple;
	bh=EXQqWZjEskz7z2zfBQYoKyNAH3Tl8CL5afsxey+x88s=;
	h=To:Subject:From:Message-Id:Date; b=Y6Csnb1Li/iDVfQNJVFvuByeIhzv4A0ME9g+MJW0Ui8JSXrwQpejRLy4JNSTPuA2vAhX1yvOXwCtG1tyYFIHf67aEfrA09XjpwEsJ7qTjHeXtu5bAwHCbfgrZ7q5gpTYvnFfI+zkohM6CVDQ5yMvXNCvGdUfGRH96MzG5AB4syw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceSQasVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceSQasVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4947C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759225793;
	bh=EXQqWZjEskz7z2zfBQYoKyNAH3Tl8CL5afsxey+x88s=;
	h=To:Subject:From:Date:From;
	b=ceSQasVevXkab1C1PsIwh+V4db9CMs7P/Nsccbf5Xwr5RwD3osRdjZAL7e6VEtKCJ
	 04ZxI2pMQPwNAX8f78WXeYIjyl/QvRG3S9Qc3AZBYjYy/N9Lfw251MP+1hoeCt/ClF
	 LdMyiD1p1Lsp6z9G1d2i/fI9tLFxWl795bZ/kHRpB1SbzOin7uSYz5kHm87PcjlQXJ
	 YG7lere2lieqPEy90MlPtJW3QO+qocBExAx29QG/CnxqjfR4C2bcfAZ4sQCmuTruqH
	 PGniXx3bySusqcJdSdvgpQNCW3LaNOKyXoYEWZRBeSLn2BjT8XHD90ELjvQZ2zC/CS
	 ebKxNSGpEF58A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95318CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922579357.10615.12976053739296468069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5639a69850fa4c76f07935696881e583c1a1cd61657351312efb4e9695f30744
Date: Tue, 30 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759225793
