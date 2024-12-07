Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E152CA6
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733583354; cv=none; b=TM8ZDDR0AZyjCB+RSvFr1hefkp4jc4pU2cOVz5hY+oGXGH/6foKjCDzMZzysF8E9QQIsN2dc4ePTPCf7fYWQwWfd01MlIqG9F/U6n6sOjIVD/tBIZpVUPhoP89OLx3+HzfKi2/5fbZ3FIxUP6GAS88BpD1hs2vbAx57bSF+yuis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733583354; c=relaxed/simple;
	bh=NKdncB2ZmBh6Sgr+ypvvP+HjDGy+B3CR6NalHKKd/+s=;
	h=To:Subject:From:Message-Id:Date; b=cQvrUe7wDEsKfjYm2F17JJbk1BDf69ZYlEMUV+GRLU8c1C/eF1LX13ugAznKL2MDnTAJvhpuVeTLqac6tl4jTbofAuLZhg1/YoOeMj9Ga7j349aHOkFjfqcwVHVs+zFf+EPChzpHa+8+GBPH6tNVksUkNkUi5D8QnmxKJXK4bX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVc7QpwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVc7QpwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7694C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733583353;
	bh=NKdncB2ZmBh6Sgr+ypvvP+HjDGy+B3CR6NalHKKd/+s=;
	h=To:Subject:From:Date:From;
	b=CVc7QpwTER1q4wbLnLH6WAucgPBpHJODVYVKfOxgyjFdMT4kbCMspo3nS/tDtx90K
	 ioMA7L/P+nuWM0lAr8At1p4S1GC0ug6REC4o7dqdtmX/qXIafizueYw16zqvPCsJ5K
	 N4Sh8AUwrQ8LsZS+wcF5IgfQ8debnljlt9PG6cbh6tKNJQWUAnANcXFzATaW1IbB+E
	 qE81j4EQ/g3QwYTntYuLRHN5gCSu6JFcoJ1aFgPHNzE7+DwilpxCcXrQpTNoO4UKTG
	 yhXvRk2bXLXXb8uSm8w5k4xWJnVt7ktV6ImOBIReCnea66G9CjEBLLiJbjENUxGnfR
	 Uuf7i/2Yw4aVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA8FE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358335361.5454.15302541385071832486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d7368c41c6d3f12fe84958f38b5f82fd39c240f952f4d674efa710114d6662
Date: Sat, 07 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733583353
