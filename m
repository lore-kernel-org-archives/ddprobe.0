Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6244F1F8
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714549943; cv=none; b=I+6ouZIcE3R6Mm0gjg41L9GIhe64aVmqQiCe6WvU2EnbHQLKdkHdDGQFNSykij4+tU0QnYGXHyF32twxbPh4TDdwbTNRVX4Ir0grPz4SEHzL2bQp5ekMGHuMLOVnnyAst+SEnJetzd7dXfcR3KAHLMYBv0+4GyUudzgQVUxYquM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714549943; c=relaxed/simple;
	bh=hpjqcRTc06XNC9XQ/LoAN4TuY5IxmImlbaGIaCd5Poc=;
	h=To:Subject:From:Message-Id:Date; b=GZfg9nZJXQ7x62tk8Uu+hjXPAPjwvDxkMxZI4yuQE/7DJJ2yKigood/8U4ieouHj5Hj6wWNVeYTTrSKqbBzgLZctnPqPGmHfeEtS4haD6SQ8YnJndEf8wkFhzqPzLYeodnIgv36EZ3l4VHM4kw+QWRL12AZwHewyqUdVo4tLpA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmf6x0Dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmf6x0Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDF4C4AF14
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714549942;
	bh=hpjqcRTc06XNC9XQ/LoAN4TuY5IxmImlbaGIaCd5Poc=;
	h=To:Subject:From:Date:From;
	b=qmf6x0Dl247AiWbSZzowe8hRF8x2c2CVUYVm3IM3MQWtaIF1nrt81PLIon0hApFTf
	 DcsOA5mNnoPCL4t7QQuRU9LtjWMF1WbyLdbFlNswWrJj4XWbempYECk/2ii1etBYAc
	 5KUJAAIJ3yQ38SYRyPcB2jIKpBkSWj+4iIDVuX2UmJXRrcUX1iP186vQZgMmVX7TgJ
	 boMNcjxOUCFWz47B7REAlDqVLfIYgYrpwhIgWiIxmYZmQJgivcPg8Flz7Y+yScmbK/
	 PQ8GEfXj2BGe/byGkp5jk0SZkTFicFC3d6hOaZTwGdEEcb0xnsRr4c+DTFCxNcpCwN
	 4LskkSVRIzjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2A2C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454994276.16371.25506850624834496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96888555b41c75167530a0e7e03a07d976cef285a2e1daada964b94809133c0
Date: Wed, 01 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714549942
