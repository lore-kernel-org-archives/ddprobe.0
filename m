Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6245C2701C3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763529115; cv=none; b=Q351pGfyhhz54lFpAJkXTjZ/KTLXTkrLld4Xop64AYSKQhwKR0L/ZyILny8nDzzTBJ9WdMH08nYIEFPGsF+yWMtlZYceNfA56RzYCgYm7fYqCRz6UOSFG8FQTU2JHT0vOpyiK/sTFyYWH92k82AmCNyDv//c90YoQxaUERL9kbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763529115; c=relaxed/simple;
	bh=Md+z6e6Cxhq08OXiil0vbpfSLBQSDYR7GWg+h86Ucq0=;
	h=To:Subject:From:Message-Id:Date; b=a3P6ojBaqVI6ByLSCodcQ2Ev5Kq7QnmvBV2pgOWMkd8bwrorU/XqIUZtyELc7If/ERtAfcnpNL9Xe2dmsf6EpV41S/wJNGJyQ2jrGdrXeXI+gSFiupjgGXJ6cCLKTIdeLx+1OcJh76rJzzrNomaHitm+Yrqfyp0freB+vLjCa1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCic8zS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCic8zS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB21BC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763529114;
	bh=Md+z6e6Cxhq08OXiil0vbpfSLBQSDYR7GWg+h86Ucq0=;
	h=To:Subject:From:Date:From;
	b=KCic8zS0Uf0t+ypW/igqq4Acx47jBV2n5pFGbFbaZMikGEhj1X+fnfYRH5APo8Oap
	 Utu/RogPyWyzTjHppKC77iebsSKhGCTS/xZXmcSe+UXJLZAgs8SkuO5RHuaAEXHu6D
	 5fRR3sD4Fha5V6HueyGHplFu6QyuhrSI4wZchG11JKtXaJeGI6WgdpCwh9eMqahjoB
	 pCdOulgQgZQ80ByUPQw8IbA5in7UvmZ+b+OMGX1OcIGYeGcMwN3ZhP1K8EpIXgTn14
	 BAVgsFV/Kx08tOJR+XHfl+wmIUc2oY1h8d69a3K3R7QY5pYTSrpuwPOXrPh7XCyB9M
	 hZb5sLSVGvQow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DECF256C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352911358.5798.10931814450130041315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81331cbef4532674f17204f70e2439ce2065c001588674a0929f6c7c7af8da0e
Date: Wed, 19 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763529113
