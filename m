Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565BB1EA91
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717286123; cv=none; b=FLYAAPFUN9jnzsEl5McpVWlfsLhcaFPc5C+BcbFpuqJEIO3n1nXgoSKJI+zwUWBc5LGIhFFFVW4y4nzujbMfsx0FdsyWyk3vrszeNkJyvHPZbWjbZHCX/TKJlLks48/G66pEyMBMrzGzQnzmYn4HLPMogGXeBRkRSK5FKNfCMA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717286123; c=relaxed/simple;
	bh=gYuM5VxPiZd1gcIRmM8RAayKTdPnMhahR8zAxJ/lTmc=;
	h=To:Subject:From:Message-Id:Date; b=DvVJgf0YdptFC7h4aQ8OY62GHilCXucHca5JjnaQCW1ZDJuvnTUrla9ZO8dPa1SQLi2e3vXgsHwbYouCCqLG2mN9oQLFoRcZP9dBzRnpCBawXmwRBxNfgyrtPxCIMey7K+1ySnfRypYnpEYDPR8Iqkx8hCeiu1hA+6BBjG7rchc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyD44+Ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyD44+Ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1330C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717286122;
	bh=gYuM5VxPiZd1gcIRmM8RAayKTdPnMhahR8zAxJ/lTmc=;
	h=To:Subject:From:Date:From;
	b=cyD44+Ep6G6M/Z8o+Sb7jLtDdjI2RMBaFE1gf0GSbGAxmysS29EZq39jU82Cq0ktb
	 YFcx1AfRiBPPkPkmYcSPN2q8rH3lprK6ovPhg+jMBAIPuEkmMdxgbSliI4WznEIrV3
	 kOyVZJabLQYZmGQgEWuK8viQn4lBsGsW0qZEmU51NcSC39Ei5ZEOe9XkDji3lmyUO/
	 nSn1xSuJ3BlpmqSYBpW9DTuccHCQM+I3dXGfla1znc+OqB1Xtby/8PHdmLfvyq+mMp
	 ezjNYzs8BvW3M2DOPSoYYpgIWWSBM2mzMpjl9cGsajY0t6UMmPSZvSYXMOOpdIJSnF
	 qJUReBjO9ZgAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8B8C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728612275.11088.1615159743207248143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcea0179c460cf0fbfb953d6e37e304d486c6d5ed913c6c56f80d455a1c9cbd
Date: Sat, 01 Jun 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717286122
