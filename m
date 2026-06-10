Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D67331EA4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781072134; cv=none; b=T38Ki+5XxYt4pp51oK2RK3VqtPgNW50MSDmbMU39RZTBkczganFjUFaHZsB6pLVRRqvM6N4ZvQmmiAuytsoKTlPKcXoW642MmR52zCFaQ03Fgy+DcD1xTyzMYAzTXkVQ5v94NdvT8z31wSliomrzEA0n/Yl3lNDTfNcwYXxFcPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781072134; c=relaxed/simple;
	bh=/OIlXI9f//lxx5MhypgjR1Z3ZLt7oXC24h8w+V6fv5Q=;
	h=To:Subject:From:Message-Id:Date; b=E2ppghbS+uqv4P7S7CprP+ml4RXbMGTwxIgi6KnwGDNeDPv2sVKthxUwnxYHkldVXrw/y7DDP8bCNiJ+IqrtZS5kTkxq6L/IRUAyj7IdqumKQlsAyuewKpGO7Lw//giT4nJj3YuzJiwHE4ZKo4mGzC0+TixZe3O0rbAFUReNudo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siJcUScF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siJcUScF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1B3C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781072133;
	bh=/OIlXI9f//lxx5MhypgjR1Z3ZLt7oXC24h8w+V6fv5Q=;
	h=To:Subject:From:Date:From;
	b=siJcUScFoFWmjRErhAldTEl1/wiBmTiPFqmoDDO2Fdlkf2EoHRB6lQE/Ev9Rrol6i
	 49N0mn2IO3acD3GVmI840n0PG4NHimy9TPUvBsiXTMN1cNLCIEGrwtb/SeNHjapOyG
	 gtB9IDNtG3TPMF77XGp5+IIcPTXYaJdgBq/DwHWrqreBwm9UiPu+4CqfysNgD3pPB1
	 c0UmrpHID/Ogq2dUd6Lmdb5minCjKBOu4PcjLxQt0ZkKpMGQzC3iPeGaVZyiTzY1w8
	 JpVxKlsF0pguJVLZcxbpNrLyhK/otbzL1LHTCbEEfEOv3iiEL48fFvrvBNMN5qbXwq
	 /9HEia31+3Ycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3846CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107213372.13789.9696488314826285136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df39e299dd1acd86f4a5165681aabc06d3d0760c836c09779534a5a363bef36
Date: Wed, 10 Jun 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781072133
