Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910B1F94F
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787086834; cv=none; b=r2LzYi2kTU62FNfjWDKFMSf+rZ0Desm377LI105P/9agaKG1fPIk8KYnYVw1AItmCcHbXKicyx1DC5Wav3wYL+B9PAj8xykDL4TTjYzUrwkGfrkbuikhP9Bgecwkk/VjoOcg89SmznCEN1N0smdTex5gdq4H2ke0aSmwDWptV6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787086834; c=relaxed/simple;
	bh=kEdOObePR1OMlGQfrvS7YTTBQQG4wmE68JZBpkNhDc8=;
	h=To:Subject:From:Message-Id:Date; b=kA5r/43sqvp64x4KISnth1VX/U9MWFnDDo9bRNJyOrpIm/r8uwnJ5XsH0w6/K1d82kWskfG5oQMXiaOfSXiV5C8gx4BaaC56/RuPobhIN/ohL6nerfF5i0mWj/rQEysyCs7TPPZ9FbdUdmQbGK8upzfOQSCYRjeHxcySjEKldgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LddL/qvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LddL/qvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3689C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787086833;
	bh=kEdOObePR1OMlGQfrvS7YTTBQQG4wmE68JZBpkNhDc8=;
	h=To:Subject:From:Date:From;
	b=LddL/qvi5at1ZJ3qyKiZTpvmJa26h/wjrhd3Waw1F1tYD4ypvOsvMbZE4pMrY5N1U
	 Khjkhb3qgJ7AQC2JwumNWi4OAJFgPSXGZCprt1z8GXKE20KXndSQ0lFnYHv1fhV4S2
	 c1/HK6hlZCsT1Zuu4tCB6R5WGAAo/n8Y5tyT1upGHz3kpKVlHBQtCTek6K1iQjeKdJ
	 5ISh5ugDS9ct2FeSRymMxxeVIHNsAiAUIcIJHLgaaiq/zdqoK/a8qzZbpf0qCcjl/X
	 wzWn3eDMQJNxglGWl2V2ClJv7cR8wwJ4jPU/LHNlZy9uUvF49iGfrX4eQFLwfy7o/S
	 oUNaz8Wc+KfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0362C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708683368.14226.14881610251371415148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2d48177a70b2d0279271089fd22e32d3134186d9269bb427c9ba4c6fa39001
Date: Tue, 18 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787086833
