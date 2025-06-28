Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B7519E992
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751072994; cv=none; b=adLVzlkO3n52+DQJynIDhkRJBZjyBWCKQqt8Af1WnDVadZJnqE49jZxfHSC9ml1ueDmnGAJmJBFTNB4i3b1a13HNBSlboxgLrW9GVzpy+Sr0RhSNVW90Tac/wzlC2XfZShnhFxn9b1apmwGPkdJFBeBBzltp2ajR/x/1CeqlTIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751072994; c=relaxed/simple;
	bh=9p3qyAyhPs4U1fNxbL/NuWBZm0Edh74H5yNCuY3zIPE=;
	h=To:Subject:From:Message-Id:Date; b=uYDM4neNdv6fqFmHbWiHKW3dvHTZsfQ5cRcGVBpJX5TFDM7obqG2e1bnI6iLqOuqT0HtKdWE+igYiQjyKeTRmv0uSmLgl5OPpPHTQ/1D2Q/DzemtLt7mpvU9ej3SaNpC6fBzdeyl29ieCmqRdJd1A/d8/IDkqKoX7LV6jTsRks0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQr+IKkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQr+IKkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA17C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751072993;
	bh=9p3qyAyhPs4U1fNxbL/NuWBZm0Edh74H5yNCuY3zIPE=;
	h=To:Subject:From:Date:From;
	b=mQr+IKkDlm+JfFs1jP4cMRoCjlDCNqbLbnD0z3rspijxQZ47brEZ8GjW/lbJeyJvU
	 iJ/NjHAiyHRZP4BfMAk1/HnVW7EoaWRzxQHcl9GRbpjujZBbtASy0mXawz2XKgifEW
	 Oitf48usdA/vuQJZVmdfMmVKUe5oNBfSlC8ZU+cr0Z2psAHG9sFjyl2FAG0MmlFt1G
	 rbXmvi3LWt+iIpwpFA5VPIl2E9MSwS5EtkljokwueuNg8qNHg4PGlwepCqRUKi/6ZY
	 LA3QwQ9mrPBpYa6GCzuX2CdCa0rYthaDDzaKwpgtWvfnUGlWHju6/QdHSCOj1/bWkb
	 44+9oqhT145BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98466C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107299359.17173.4227231108986291735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b74616c22cfd59d6097c8d77279873290756aed39c87f3a0e1d1fc5d84f35b5
Date: Sat, 28 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751072993
