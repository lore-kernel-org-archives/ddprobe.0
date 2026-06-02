Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CB936F90F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780396474; cv=none; b=SP6G7vOWT9Vd6tMcuCEiDF3pdAQEiiiuvwNvwhgfZFVB3EYKzq3r7oPIuXrVH/cd/KeOftOwWpozgIqGrGDTs3KNFa3ivEcfX3lqrdzEi/ME5x8IBd1WT0rZpEfXmfpNLCCORQdhsso3ViUI+DNUkz2LyCfpinCoPIwnMCQjttM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780396474; c=relaxed/simple;
	bh=lvqPp6To2/rxLOHsWvDwSVEMyDzUGE29XeHIwEduJlI=;
	h=To:Subject:From:Message-Id:Date; b=UqX9qMhMeW+fe2vpiPFBBTQkql5VG5klyy9xLJW/zV0Jye21y0gUwv9RjYmb7KDy2+OWNfvBFwwjPnETk7jrVEVxNQaOQ25L3QGZ4+keHuk4ZhqhQ8fus10ao9lf0OIFivV6im+B9aO4Ffiwzh6IRMLHi6LTqmn+HJDXWo/r/7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k68q0CQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k68q0CQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A33C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780396473;
	bh=lvqPp6To2/rxLOHsWvDwSVEMyDzUGE29XeHIwEduJlI=;
	h=To:Subject:From:Date:From;
	b=k68q0CQg3lrfnsdN8gAs7WpzYi6khjlpZBV4nbtDcwCSTvgqGUIEez34vA8YMKsB1
	 f3ViM0P537OVmX2NU/kyoWp2FgTUhRKsgtLBth6VY6Aff9w+Z9MIH/ywcSWg3tBJEY
	 OtnYB3hqCRCoWLlUHlEuWKjftCYys+zpzZiLeEaSvN+8kNhhlOHcaZXUVb3jWnzIPA
	 sgpKlysR0yF5S0WI84FkGbngIInnU7aD4z2jRPKZ01VwgHt8W5sMXvH6RWE7HyV++H
	 RBVcktsxdDHKEpz+PupZojCxg6EmB69JfgN7qxbnCepynW8mTk6UjEsMotoLF2lNSm
	 VjSv1Z3kXstrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA552CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039647368.7711.1374170725720955293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422b424b6af807300b353c2900bcd778f9cb8b4021bd493d8b4db6173fc5e00d
Date: Tue, 02 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780396473
