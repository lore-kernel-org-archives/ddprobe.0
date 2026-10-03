Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE2A224AFA
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791035434; cv=none; b=UtpsQN3gpQXxoyMYHWGEVtWR3SU+d0qvCa8ZVdGw6pSP78b/WyuU03ZUMDcthPV4pQpnJMggbbZD1gJTyv61zZ/uQUZKBzYMVuTihC9ZNc5mWQTSBKFXK5x6n4kyWvtPhg53+cNHr+wGPrg8cvptiIiCRY3M5MFRE/PzkeACiFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791035434; c=relaxed/simple;
	bh=fI/gSM5U1H2kuVgeUB8x2aD1H4ypTTSgfqaDEiVWcmY=;
	h=To:Subject:From:Message-Id:Date; b=jzIPvq1jXmPkVfMQLWxDxfV3my9fP+6JIbltUJ9xbpPmNsZ+xBeGnJvGiLGg84xJ6J4PDQdGv6Qvzxf8oncZaoI2ksFPrjse2RkU+AOlihI6CtgQZ5xv4H9WwPgvU2u9ZMxHIVjML4sbKcyjLvqAeiW08dw+qTYVjkqmKpq0FD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eD+lEsHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eD+lEsHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20B7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791035433;
	bh=fI/gSM5U1H2kuVgeUB8x2aD1H4ypTTSgfqaDEiVWcmY=;
	h=To:Subject:From:Date:From;
	b=eD+lEsHIHj4kDmL1BGCgG2BGTc1/j8Nm4EsKT73/a+e0PqB45y2iYkvDFeA6gSt2n
	 LQvcDExR0/qhQIxUjFnChjq8m0qfkUHL7/eQhiYcVeZXcCogEDAUzcdQa7MteDq9Us
	 yJZkAew/zVEf2S0BhLjZaZkfzg85yhZG+mnTultpb6gwlpGahETEceJdYLH57vG4lL
	 3A1ftJd6qoSiyayC9zF2IF8m/meDFDi1KsIEcqfJey5PdX1Pvn6R9g1ExGpq+TYVGw
	 ihVfuvOgU2VsE1/dTIc0pX5eSGj7van1yPCSyEvIysFToY8VkhhxRn5f8YAi2ZyYOq
	 Z+CO/nFELo0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA96CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103543368.32646.1580155623048767062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351ef852b704d0b4060fef430d76d3aa2297ee69ca40fc25542a589b17acf4bb
Date: Sat, 03 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791035433
