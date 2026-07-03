Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430C3285061
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783105114; cv=none; b=K8xXb6HJgl4jHGOVWGSblGzPu/WGG2SybLcxOIbpLksAZmdnrIGldvf765oGdFBC3BoZ0Cxr9ruubK+jn3kB5g9sYR/OZaHCrgy9uBWiTyryRFlIrsanGeFyLG7Gy7tV8G16aOKJxCEyAbgqhYt1+QduLe0Z4pIhpvf+Y3kRp/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783105114; c=relaxed/simple;
	bh=a6J4YipccIrBhYIPTCOx0wCKyWXS/HzPuAOgi3YG9eY=;
	h=To:Subject:From:Message-Id:Date; b=OC5ebdTGd7YjQcTQhBL7Gwk2PH1MBfNqUDaqEkV5EGaxhSAPqCDMUNEX9TLblvxIcrIBeVlkqGZVeyHGFjxoCyDauohjNmGJmZaHTUSP7l8rzvnRSJcAUcMaRO/xOV0osdiO+wV7FVjmFStQltqK/vkxuW0yqEkCgx+eS6esNkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+al1Rql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+al1Rql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0B0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783105113;
	bh=a6J4YipccIrBhYIPTCOx0wCKyWXS/HzPuAOgi3YG9eY=;
	h=To:Subject:From:Date:From;
	b=g+al1RqlMyLz5hdYmIELqG0LyeACjmEnH5pE9hyW4UKlrYDP8KJogW+F9h4REQeXN
	 zI3NxqONGu3ycPWsV0hnM5TiLf4ibx3gQHg92yEfk/xKvGSXO65wB7Ma1AzCVJnhc+
	 cMXaAXvaArFMTz+GD1bfb29mo8GLLpGCb8fPUKsGte7G0PIJ5UHmu2Ziyiz59fiyUk
	 Xvu5qkgG8fr2UesGnoFWBiduxr7HCpomVOrxfqCOlZvO+3ZZsUynoETpOEOLuDATDr
	 1VdKcnrM/sVEdktgIYqvrpkthLFr/GsJ399F2W9UAPGzt73OaObFnGlZWUH3PUFHHZ
	 gzBTjPjvpTxwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9238C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310511368.31869.1835202825023337080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58167bee35ac7f4ba64644ecde72d6f9b178c9929d424a4fa46f122ae632f05f
Date: Fri, 03 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783105113
