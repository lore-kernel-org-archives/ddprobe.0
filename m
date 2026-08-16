Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD644369A
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786884634; cv=none; b=snWGwiBbTV6fdqLtC+RUjyIChabwZrl4JtvPPAKEn4ScXBxsW1kVn2nPkd0v96LXW0zvqpyELapjQ+/ZlN+u0pMdlmv5sv/SG20UdViUJV1dShCMMf9Wso0nuGUtNtLSXb5gDiXLBGFyIsdXOnZ8BOE+vPTRBCrTMMMYQ6MW71A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786884634; c=relaxed/simple;
	bh=8E0gRgXOr30XFRe/3zSBndZBc24xIWEuDnIRbfAH0S8=;
	h=To:Subject:From:Message-Id:Date; b=LvJDv7Qli/z0sonJ7p+bUOOytlZ12HsdvgXMP2nCJtz4T7H79o4ydyc7Mr8YenG46tfoIaB5knXWjDwoyYgYFFEbSZxFQiDPZPgQ5w8poxg6toMjlQafaYv3txjpn5oFoJC4XmW8r3KqZfxkVhkvrzaTeNJAboBidVJTRtao7h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEzlHCGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEzlHCGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D040BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786884633;
	bh=8E0gRgXOr30XFRe/3zSBndZBc24xIWEuDnIRbfAH0S8=;
	h=To:Subject:From:Date:From;
	b=HEzlHCGBnvB30snleo+PLJEOz4o3vShGFQhjHiU9Ol1sL6JCbML5odeXfl/Wotr0J
	 3L/aXKDCGlRwL3BoH05EzcX98/aqkSA9+ZzoAwLum51VcjENOPD9mdO41WBlBnQS0R
	 pVrUkifUrQfQ18CHUdLkM7jJmTKSY9T7X/68ogf9+xV6KvqkqmNJRkbJkEqxWlzZSs
	 eHfNIHi0tsqNTmioibfKdl4dOOywwcVZNwLZb0bDvx5bsL7sdbUt12s+Zt3PDmQ+kv
	 69ZFsWyd+rZzAgHUOyH1RTItSak/noiRzjFKOm7N5/70RwH7p74b7KYzNveZT4KcZu
	 oFcXMhpW38MoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB02CC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688463369.21011.11990576817555617944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3a1a9bcb27da423ad28f0f010a308f87426cb8a5b693e73cc85d06f9dd6ba8
Date: Sun, 16 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786884633
