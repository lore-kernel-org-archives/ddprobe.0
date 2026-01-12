Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC8B3126A0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768204433; cv=none; b=sfZifdLnp6+4stkpqlh9FN0OzbuGZr8HVbrmz2XyfRO0arri7ZqZGEQpipKcrGm2CVqWXtqvsYn3cgSGTj8ThR0Atv8Vz1i2IDiS2BKWPqhKF4zLQOoIlSGfHWpiZ4sXIVPWglx6ZXXzUZUOMDh2/3/5hAeO/HfKX3lFIwrMOv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768204433; c=relaxed/simple;
	bh=/3faps4UVErJMlLAgnMDi+s1YCYK96ehzsyPlPMOfnQ=;
	h=To:Subject:From:Message-Id:Date; b=kDAAaJKrLVAyzj0uLT5S9beE6F+PNMk0A/zbIJpFjkUEG8wMGYleJLQIDym40P3OUKgpGkyAtA64WyZjK+gOJ5KPUnWkIJJaxWCGlAOmfncP76llhwTwNeyoWWG7+dacRtlZ/hi2xYtoZ3WRipntRMosjv7nb99x1KYwovc21bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2YLWr9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2YLWr9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE42C19423
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768204433;
	bh=/3faps4UVErJMlLAgnMDi+s1YCYK96ehzsyPlPMOfnQ=;
	h=To:Subject:From:Date:From;
	b=e2YLWr9ym66WBiZpsA54HCizT/WSSx3s4waU0S95T8bQE0v+dELHESHIIvl7yWjDN
	 Qt5ktZGo+iMZXQHiHFSt9om8rc/rV5G1DwfqzNPTIRL5GOqbIFoHErHeYYSL2MDLjn
	 N5nl38kMjFwKcrlbuPST7vBgaYNkZeTUhckhky+CrpU+Y81kROlaOKHd1sVyij0Vo8
	 C466nX5McBKvJRzsrm2TYjkDu74gcB3LzbNwvH5XaaRFquWlbpDHRzHaLCVLoay6uo
	 SDrefZjWjd6v4UTOn9luBC0632U5YNmBgbFJ8rnFNYyfAehSBjzS91KG2WmoXP6jwo
	 qd17sShKJ89Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CCD2503F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820443357.9936.10428114898860341009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cec8f06980f003c04a40edad24edc43ef1699be2b3cdb875cdd318900fc8a2
Date: Mon, 12 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768204433
