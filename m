Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FD31D12F6
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724300154; cv=none; b=beRsfVFsFJ1X4KBH2Vhghg+CVqvGFvS3XhYbEdB5MNuwII2iYsc7RHpPmO9e4lJtz9v7sMI8a6nyvaVlZCmmncIdoLgrhfP+ARZvjOnpE9vkuZgxFiP96tTvNE52Xe00Ft17A+EmoDbvZ9gkyqOiJ0Le8YIltySDeEwoNAq1Zlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724300154; c=relaxed/simple;
	bh=Bq1gNr8d+phmScBIExXcMh772XGCKcrGI4ApqMTIRdg=;
	h=To:Subject:From:Message-Id:Date; b=PYlhfMtju/Ub/ouYg6cKwG1fkgNAbtPzhrexGvsluODwGSP1LhWSNPyTgGW22lmSjB+q8E4c76AWGh4NgxgmbQEnHU55x/mRVkqu63MSQhq/UPzQDIT/KQR/C5i5tq7i7CPCV9abfx0bgIgSXc/4Yy0WHbz+HZ3RWFsA92aXkns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvxgcEbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvxgcEbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6264C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724300153;
	bh=Bq1gNr8d+phmScBIExXcMh772XGCKcrGI4ApqMTIRdg=;
	h=To:Subject:From:Date:From;
	b=pvxgcEbSZ7Vq2XvmY8TgGIfrpTQqXge5ITJjwgk6OZiZNIWEgdLHR4DjLW9to08JA
	 seK+h3CGrU04Qv8QnhOwmnkS81nDcm4P3ebyQIboJxX+AtrgzxO/1a+h++qYprJKzr
	 yYPI8RuTmid7iDH/bOwc6wM07CX+N9sFp9zvKR3RO1IuR3/bAQ4gffxHbScrd+6FSN
	 OwB3ktj/KtzzGiznHxPJ9FkD/wCbLWU+z2vLXyOCTN2z8ZD+QspBzbqYfEv1MBGnhk
	 EJnWhVi/K46P28Q/XqGevEb0NrAPMP4JWG5y+s0u0nfdSJKX6ThTbar8a7cnLOV3Jr
	 sGJAm3/0AZygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14A3C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172430015362.32304.16462224458508165645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b621e48d63f02d5b6f476fd2da9a957ec6498c9200cc5125bebbe423779758
Date: Thu, 22 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724300153
