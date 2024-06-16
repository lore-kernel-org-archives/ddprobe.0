Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6391847
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718498303; cv=none; b=DHJp/lQCDasP4skahbxx+c2kS99TsG+6tYvoJG9jW9ow2wD8Sk4QVVmRq1ArbMwR3e9R1cSqH/CF3I8JP5wof46V7KvHpdXVWUPoGh5pOereYX/OgtlUTS6oyNcywyjWQ09vXNM6h5trNTUpqMb7rAztffSZ1OE5MU3WEyI9YKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718498303; c=relaxed/simple;
	bh=OHPopr6qLCj9Mps3N4eQ42QDrWSoRsOIVac0KBHFn1c=;
	h=To:Subject:From:Message-Id:Date; b=DxDctNjqm2BvXVM0i/WRV75gLqNztQzk0eT3CqNYT58R4Ndvr6oQSF9SP0GBdC5sLsTG0nx/CAhCr3dF7kN/enTiufi0MxpSDRNFbfjO/WGp/QCf4ilklqXOhdWwd9cenGZ5Fe6B69dMcY3F0bf2MoIb8RLxhYTxpyd0X20BMiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqEWZX0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqEWZX0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E344AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718498302;
	bh=OHPopr6qLCj9Mps3N4eQ42QDrWSoRsOIVac0KBHFn1c=;
	h=To:Subject:From:Date:From;
	b=rqEWZX0SzpC4CRMfEQaw6ELTt1IStr0MXclmXMxukKGKT5F9xTvaf+Gr0o4IV1SQ7
	 h7f2LSrWgAN2n9Pph2khY/mwSotOFKvu9JpWbKo7AM2J1RToHztLlYOIwSBGoqkKM5
	 oyHP4vxPb2iLOUfqfAm/+jH9ewC0CAsvu0uEnGKLrvkjM7DvT1QwkE0c2IPQY0q1ix
	 kHr4r/QLiFgiFv+cIYUDTGPal1nMVu6ZIQAHGUZF/sG2SwNez4qMwewmu4NeHj4K00
	 VoU5aw4232ycQZa4A0DbA2lYkB3MfGCo7Hx2oEIKicZXqsQcAdv6NfaQyc5eKIO1Vv
	 T+5Je4GN0NRpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC70C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849830280.18921.16479435738318013477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1c71b8e6d9ba1dfc8d950693758e630e244445f3090f1eb4ad6ac7ea72e9c3
Date: Sun, 16 Jun 2024 00:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718498302
