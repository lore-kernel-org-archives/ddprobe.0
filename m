Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCBB363C5F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791772834; cv=none; b=ptpGcyAtyj/OW1Co3ZfmvJQZEcmutYVPg9SFxNM8JeIoaO1ngxJLC1EwFnLj31ssMEiu6hK6IkmxKc4Dfo1MMdH/aslf9yPJl+Uxi1GfVFE4RdyLFMPz/NjVbSQ0sdOQBCghsqCsOlL7izGIvEgwV5mxmf9XO2pnFHLNPZYDetQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791772834; c=relaxed/simple;
	bh=On9NKHDLE5cDTGmtIYf61PkntK4wo4NvHaSgvPIRGTI=;
	h=To:Subject:From:Message-Id:Date; b=VWsgTdbjtE1anO7+ezpAafvMXhcJ5F79Lvtpj5VzgFQ7yHtisq16DVCJ6qQGfVyp/SkqrOZmilKR2gcYuCcgHPnN7t1/zOzRGDUvDZ7XTGN1TXiWLNcaAtX96992fV/iFmRMJ/I4FLxLT6hTVsi1G3dk254poLtr6oZzMV+vzDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoAPphLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoAPphLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA0AC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791772833;
	bh=On9NKHDLE5cDTGmtIYf61PkntK4wo4NvHaSgvPIRGTI=;
	h=To:Subject:From:Date:From;
	b=DoAPphLGvBER8/bdIXvPpS2Mv8vnuTW0OTv25YT70ZZwZTg+noogH9umJL4o4HnpK
	 6GIho4hsbZ+7DREkDx3y0udrrkIeXsFZt9ydCQ9m0P4Fv+mpiW2nmUZAopnIEYvKEu
	 v0iNtN8sLKZIiRwS/Lzz5e/657kAo1plulQNt7w4iqVAE/uhqM9ywm4IRHslUEPeVX
	 Ybg5e+qdkRBbXn6IbGFleULJVv61/z4atrgDuJ7fkn6Se4dff1yXawEWLdAMYybbWW
	 J86SGl4lUVt71w9ROriyeaq+bsdw4ArHfiRAgI78pQAnBR3uJyKQ1sp/ezh6DHujTx
	 HMGYxWXos6BkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C8FCA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177283368.4439.1682674548815735392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2eda81e03caf75e52fb646e2b6d3eb0075a430ad28cf7e12bc04c8f344dcbb
Date: Mon, 12 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791772833
