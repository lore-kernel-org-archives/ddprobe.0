Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CC01C07EA
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732570554; cv=none; b=BMaUj+VSR6Nt2mL2d9A5j9wlq56n/HKVAFejxSF3Zl7WZexLdNLorUuqNATLBhEHu/VmsABy982xBSritNTTHV+G7cK1INd5HUQOqEpYZPF6aSNyyEzd5uCPvvkDzjrup1qa37TRu/gax5MZhimi2pvcOy21igG1ar4WnDjzspk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732570554; c=relaxed/simple;
	bh=RRLgT4uKn9jEfD/khg0Tb3xS4GdSF7ddYNdHR2ccy0k=;
	h=To:Subject:From:Message-Id:Date; b=lJkLQtzkwnShJgXIwI+kp3sSw+kHqEAnENH1Gwb1JpuYxVlWVt/B18PGkt8amS/+p7qfptQwBlmJMTes7mLiqB0jBs/SeygNv+bNAZ9is+OEkEcI4fye4sEwCKD8g1dFmddxjk3NgeYg51+VNLOOlmAI+N+9IRB8iQg8KkMjkOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klsK4nFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klsK4nFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40ACC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732570553;
	bh=RRLgT4uKn9jEfD/khg0Tb3xS4GdSF7ddYNdHR2ccy0k=;
	h=To:Subject:From:Date:From;
	b=klsK4nFS322U0c9KFAOGhdFxAfxzfxYxMdCfSR6vEwi5EXfCM5yW7CMUH/mNez6QO
	 PFPsRk68cBlFue7DpUDwzKDNssdjpOUEIrlGpPVxsxtGAIiL4vY7GnBonmyQd/6lBd
	 YvnqA7NbO47SEzZRbsrxt52Me2esVP3QSmohrR0TgOjZg2sf+SI9YNtOcHuveoBi84
	 MjX9RLl9k0f6YvFy7WTevzhO6syR9cDJG6WWNszksAhrAX4cUqBXxap+oGJjNX5I9w
	 NTyhhBywHBjMSxe7GDLUERUHhdrU0RJJjtTJeLnYbLLkFuTybb6iE2acn1QI6vTqwb
	 Zz5mAucxf3YpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E8D59D73
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173257055357.31573.17742357847201550091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1db1211ce6babbcb85717039046d9892384b037492233f8ea4a4be902a1c844
Date: Mon, 25 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732570553
