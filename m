Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2010C7D07D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752423595; cv=none; b=Im37lqxmEnzPFKbltR3R7UHAmvUJFLEmUrch7OXoKpqcSvBFYrSG0TX53x6LSudr+psvAvfaF8GQwfR88uEA3b/OkCKezWq36E/39FKb3a5z8tSjWz/SDkptrKRcAj1HxUBDS4fjLgt9Jhvu30hAKXmJ7ksJZn81Ksfc/UBM6bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752423595; c=relaxed/simple;
	bh=TWAIAH7/9Z6SWjIpLEI7KEpiGC3/z2Kuh/+XALFuBgQ=;
	h=To:Subject:From:Message-Id:Date; b=f8SAZ9i7QG9JHxn9zHcgaAbkhQhuBwOetQNj5TiSqWBCT/2GkFMeqaMZeG93uXF0HtLnMH2REfQYWZ8B0o5qWFHcNMQIpoemhJSk+RsH/WJR8w3bA2/LL62HAFj/LKWk7LnxBFUgEOddQFDjt/0BFh2MC4AlVuJ9902i1Bq5rn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPlWekeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPlWekeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752423593;
	bh=TWAIAH7/9Z6SWjIpLEI7KEpiGC3/z2Kuh/+XALFuBgQ=;
	h=To:Subject:From:Date:From;
	b=mPlWekeA+ZIBaqBy4fgz2h4hY4phIV20wgGYGDlk1PWskoCw32HLQXB8pQ03VAtgn
	 7rd1BdbFr6Ftl61pS1rJTn783Xb0D8xLH4y+TN/7YA2Jxscg008u/DVQen0CtAvLyt
	 gjt0eBJ7FlsLj9m8+P3d5PGZtHqQS0lO+GtHDtF4V0DGDPPLpv7GDaH2lAB5D+Nkfs
	 JY1mVvAU04LC0sojwrojWPi6Kan4+2G2EJBQqsG9xpf/2cgnh+86d00DUkZFqP3Uka
	 OodWfhvFYE2fs9FSjiOCkNabcOAprh8A6ECe2EPdos4mU2FdeqFHV17jgQ2pZkYMKN
	 PoyKSBZAwa0Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91859C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242359357.23340.12876204880198943753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6eeb7eb8338467e549e95520aeb0d268732d5ee89a9f85c0093409168e054b0
Date: Sun, 13 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752423593
