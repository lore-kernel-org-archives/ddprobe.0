Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744E733D4FB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781903794; cv=none; b=CQX6DEV4NIzyK53UmGEvNzLK2uNrZfZsmjw+r8/dAI13zCh+26N5oXIMiG1h8VPsxot33AWJCUxkd+QFHykGr2bdj63FUf45dG6OdNcsGRLWGqskyWExRwQZJsjUv11Vsf8ODC/2pJnAj9t3eIC4fu3ictdDW8flU8BXkNDqZLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781903794; c=relaxed/simple;
	bh=RWRXBQP1donyirmiEn44jr2i8QCH9euJmneHiiRVJUU=;
	h=To:Subject:From:Message-Id:Date; b=XT6676okhXuA6eqbAaTArSt4Yp34xVDgsCKlywIMqzYmfoS/L10LeAXzDe5EKxHBgbn2X/wQmFmsspCpvGc3J2YkCrs2Glxkl8IaR9WJUaeshEG0qLdGM8RbkZ4oQ/eX3zMmJJ5b2PxVYobgjehwuLir/eCx5BwLwmdFyCXrwvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cv9Dge+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cv9Dge+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FC4EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781903794;
	bh=RWRXBQP1donyirmiEn44jr2i8QCH9euJmneHiiRVJUU=;
	h=To:Subject:From:Date:From;
	b=Cv9Dge+SgDc7QpH/k4T/oBAMTExgzsRx/ZMWFkBCILfMsl1Jk9PA+7V4rW0wMOnX5
	 GcFrfUJnqgl0UtiFA12kJ22RAVso/t/cIOXHnFaX+c1nWhpCMdSn4gx9kkwChSCqEq
	 4QPcvJHBnKbaNvCrbAtmiXxOZ/a9XDhH2jXE4NUvi8WfPX3+EHjsS/VkkUL7pPixSj
	 ixutkC4wI/7duWOaTyh957VhRdFjJTsn2FNy6LJMMG5lgy0vhWUTyjNz7cQ3+c5FOD
	 cYNAHqDnPrxpIFq8iDM4Cu+1+GdATI26zoqnlGqz65NVVOG8+Lw4AIelCtIR17sWJH
	 mPUDtQozeyV7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F4ACD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190379374.20471.3425926034895197466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8d0cd91754e1e6a27c108c1938e238d5699767666db0387337d800c4bc890b
Date: Fri, 19 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781903793
