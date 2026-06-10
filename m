Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D17C1F1304
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781052934; cv=none; b=U05FFefODof08bFyFJh17+0EWvKdLuKN4oZ4IVUx204LfvJwNUuZ0984jzGlTDevwVIE0ye25jobAdl3SSEv948qoNk3TR/7rJFQaIAR9DFBjkPztk6QvFSnEiZTokh4BFNriyjudw9guqPJ/FMxr2hTXPvetYgoQLgEtJVpG7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781052934; c=relaxed/simple;
	bh=7/RWJDPkJQ7P4e5v4b5bbM+ff9vaw6QGXEEICfovURs=;
	h=To:Subject:From:Message-Id:Date; b=Z7qsMusFMtm6exBGgItU0eCNGg+RDxniJT+MStZ/KMJe2Ephdf7//4OHVgmF43z3ap/ejlBbLuW2/CxByxKm+UCxxDRKt4bnk/Ywuwk3rI+OVZyyYCMKptkzdsCnAE1TtTmlbGrsMxKQeHfgnKOkmTRWDXi9hzN8o9d3Unf5gJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvfC+n79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvfC+n79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C192BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781052933;
	bh=7/RWJDPkJQ7P4e5v4b5bbM+ff9vaw6QGXEEICfovURs=;
	h=To:Subject:From:Date:From;
	b=NvfC+n79e5nqBJTgxMUBAdJ7lpdHNlwLHuSz8k8OMGwjiTSUX3K0acqD85lvVJfEY
	 AnYmwoEwAUzhXzYX6zQ3+VxFjDr0BfUx0Rg04c37R4bq7blVX/VFs89CQEaRQAO379
	 Kt2EBX0S/UUfjmCocyaQ5LoHhFuy9L1knTp8K2it+RaR5XhptuaaDqVXRIbClmAbR4
	 dHPT1DI1TeeIK3t9qe+cXuk0cYKPHRNyz3IoMOJ9tytN4zIPzXzIthKfnOqsNy/PaX
	 LVwApzxWw7uCKyL0SNPrLTogsc9W4djkPu75cWIwwdE5HgOPADElegfNcvqas8ovOI
	 nLQO8+JXJiI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96CFCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105293368.31973.1916644532888764412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953377c749fc974869a944044e67b27b793d2b79da4edf8e6c7658976d411285
Date: Wed, 10 Jun 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781052933
