Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFCC38C2D1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781378794; cv=none; b=HrwCDWH+jHuVsCZRv1HwSjR8hr5EvvEBBeRgMFWRR7RAtoK+OXpmlKlC9ZeKd3eRxLBCA21dO5dorFtZHKgQL999Byfe9RVKnqY3UtMoYw0bomcOLq8EmaJ8ps/jCbGCzyb2wCudkDvx9bCoeQiuuLJf5slyGGb2ZiYRLRe8jcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781378794; c=relaxed/simple;
	bh=yRO2Y+rqsySn5NnnZuT9pNTHbGb6HN34NzDmlpC/S8M=;
	h=To:Subject:From:Message-Id:Date; b=rnoUIOn670HfEnqH1aOj4Q5w7A37nM6sbGhGCFDtS/m/L/UPmJvm5klAJQ4EU0/FB8kqLuzZvdUWawP0qWh1/xIV1GTFbDD3PPgwkOOzJ/fwUAWlPajJollPt7NiK+RaBPIcixYt1q+o9NdydYFdD4bJMIfMfakwR/sN30IJC4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3TmPoNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3TmPoNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF39EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781378793;
	bh=yRO2Y+rqsySn5NnnZuT9pNTHbGb6HN34NzDmlpC/S8M=;
	h=To:Subject:From:Date:From;
	b=R3TmPoNwbnNXCwShV8+o58tGsQ/8liXiTa199j+Y8rkRoBJRWQ7GcQlUZn3gCfnHF
	 Pb+7jExuQCF74RaRoMxwsa6e3R9vcPP417IeMHNMm2fEJR97zKQpmtz8BPQpno4ij7
	 kpSGAO/l/rzyoCFNaWgYrUwpnnsB0Mk8VQTkP+THFY8Ha1nJXKrj9dboDoOZ2tVUs5
	 a/vMbp2N3Q7izktxgV/0uLMv0ubSwCBIFNh0z3EuuVL700GK+srw3mWhe80oYmnWEe
	 wZJr8E2vcx6Irpaw5Rf4MjGCbJ/Pt4oiZb9XLu5k63UYFWKWnqILtE762Lo2jHpfZS
	 1PrpyeMf2i8MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6776CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137879367.27895.312778277972345338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d97913f94dc61c712e3dc9475575e3a0952d4f9a8c91ed29dcfa486ddfd9a8
Date: Sat, 13 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781378793
