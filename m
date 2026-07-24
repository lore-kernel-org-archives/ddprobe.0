Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FD61E9906
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784853034; cv=none; b=CeITQQ9WCtCJKIEf3YR07GX+w1YhHdtrWNGr1OJb2+I4WE1IbB7wO19DBZulM9UY737/ujA2e+ukluMYkKlOFIkH3Nqg7s9cKwTBuI1NK6wKN5z7Fthb//AiBbA6wRNCmJVA45SXw4+o6qTLyfUsfnAZkDTJ1PoB1F/pybvgz+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784853034; c=relaxed/simple;
	bh=xQbO90YPud08644ChrE39zGW2Q3CrUkDQEqo9mGgJbA=;
	h=To:Subject:From:Message-Id:Date; b=AfMo6XB211SdaCtCo8EHJyAhsWgnaMrbEqK/OWE1Z9irkqCWV9D/XBvIFt7XcoTNkuc2b2tFG615l+Ps3XzY28GGFZnQV8svr7zs9BjRPChbzo0B1NpYhT5Z3YQ78RVyjGjGmXUe9U3YZLi1+boJHcfKAugMQuXWF5E2sjTfyK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ1/i/Li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ1/i/Li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0043C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784853033;
	bh=xQbO90YPud08644ChrE39zGW2Q3CrUkDQEqo9mGgJbA=;
	h=To:Subject:From:Date:From;
	b=aQ1/i/LiDWwoOYmLo3fSja6jVhO2P1mrM3hLhRRspWVMlZOuRKRnKfEdCfY81xEj2
	 UqyyM3f6ld0zyu8QQgB38fmDd3baMv6pagIAIQ2bemXnpP6qBO0/5V8MUIfEYiMPaO
	 iRAM/X5x/fXu6T5NKE5DeJmLhMzl/kw7Gb4xh671NwZF9rpNw2/UdmqE5olbLWGIIx
	 D+zEn3PkXzoEyyIpQMNjwTbksnjRpfrtx+9QhuHRsvUm0RxMEEvKd6cK3NMr1DM1k4
	 2of3ptJ7Xp78wvTneS9rKKLvTVOqzF2H1msNuXNqcYnSoprSR1S+u1kPhvUlyiddXO
	 SKNKbSDxAmliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B13C531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485303368.19549.8135132578832116200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49b0fe39655576826d6e2b02dc959d334953a90fa3ff9f709ab042467bbd5c1
Date: Fri, 24 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784853033
