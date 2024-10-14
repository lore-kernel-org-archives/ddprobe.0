Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DAC156872
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728941754; cv=none; b=oR+Evvm2rPOyqRJxHo6+XD+irxothkqbwlULxRMc7i5Jpq2k7PS0TftvCIkwu8+Oc2IHZsxxX9njqy4nKMV6vfnQFH9EdL/cQn/JrQp6yc2/iMKvd660TZyAmC+gNueheF8oAbWR169y4TZsf5znBoX9KrFTWu1eQ8GcsLlt4/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728941754; c=relaxed/simple;
	bh=4Ox+rx2WkU4Dqpw9cc9RhIq7pDaeCIsEPWLniEHdX6U=;
	h=To:Subject:From:Message-Id:Date; b=iys00tRZ9cCwBTS8/TfhIlfRwuiEeBCB0mOpGx9g6BhQ/4HG4VT0DRYjorkJnNQPGjv2l4qdCPj7KBScCbWtYQdtiyL+toAFpNm4Napwt/8cA0CHpHkmuy61J/RuUkuCzlmsTkQimMfCsv/O2Ndrc2PuIEuyTGD0OgpaqblVHu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDFbB+9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDFbB+9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F61C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728941753;
	bh=4Ox+rx2WkU4Dqpw9cc9RhIq7pDaeCIsEPWLniEHdX6U=;
	h=To:Subject:From:Date:From;
	b=UDFbB+9aLuVN0aemXze+or/z2iMsFcv0bb6ftexFIptWPgXxdmQ3UX6JvOGpVnEDJ
	 gaiIlPSkQduWNO20mp5cK1vchHnutS1WST8YuGLAidhWdNV5XtdnSJCfaouvnL+Vxd
	 ihK5OIFkdWGl6Y5sYCqnKRR4sfwcw2etzw0pAiqxkHAK26lqueiPWT60cFP4zfkEjG
	 0hDPdJnSJR/Phkwmv9u2pSqZUHaNy2gm1pKYUapfdC6MgwWXlBCK65AvNAxtMIOR1i
	 jLj/pB56s3tvP3Vuj3nkBEr/cG3uT03wgOz6awlGfSgkWtkO9XrEndpurvCYdq1XH2
	 W/SStx4IgHagw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ECAD18153
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894175361.29032.15409103335016390048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaa6eb28e2f13046997e1cc06777f6c133a89ff89bd06aa402a9400e469b1b8
Date: Mon, 14 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728941753
