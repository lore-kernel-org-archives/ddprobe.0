Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E001F92E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764091374; cv=none; b=Mp0a2tVOWRYLJyzHalvWf4RyndFtGDc6K7Yfpp7M/a3eoEbfzBW8ytslIskhTxPn23aAIg97QDHNihYUNtesGNJa/lX9cA1OPXnKiIbHkrXSNKKgYjOJ9zNlXMs5VxtjK5T/NV15GjEXlhONGeiPW0INAwcX2X4/RnBOOVvaqXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764091374; c=relaxed/simple;
	bh=jvv2SE4XmnA4O3S5ZWNkhIlRUAXvAIZ1j4ICPvG5sto=;
	h=To:Subject:From:Message-Id:Date; b=sovCDav9pkIsccvMp78fr8nAzqZU0+36bWvFQ8SDBmzVvXA/tpEnyGt7JuzbOijprOkRgkQwZfZQpnYdvuBrsCeJM0V7P7zUtZod/7ZAfTrfhHEZDgnBEqBhsmDiSYUo9W4m+4XpX3ZXHlj7Pmi4l6bC4N++qGpCulkYUkk4Jzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlOQWobU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlOQWobU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D27C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764091373;
	bh=jvv2SE4XmnA4O3S5ZWNkhIlRUAXvAIZ1j4ICPvG5sto=;
	h=To:Subject:From:Date:From;
	b=MlOQWobUnq1n8Rs+JXS86RYrN0eRZQBEW2epdBWlZZujdk2BAObrwpY7JGhTFfZWm
	 HQG2RbjJ9JqIHswV76MSumewFa7ToHXJclddgQpPUmtmYv6O/IuHIZYt97+z9g4QjQ
	 ryDgPqByr8UQ0yIYp1FCEmDZAw6vh31uffMTana74AkbvGsRkzWVKUPkHYqdv6UYaJ
	 RAcyoQSsBc5D1NXmLbhxEPdL50S1Fz6SFKNBh4+69101YWa7P8OOqLqB1uztuJZSnE
	 XLxLzcFc85xWTR0PyWRsS8nBAMXH/anlmX1bdCFMYJC8a6u6Da26zMnG7xwU0qA4o0
	 D5ogYK8bNWg6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046DD0EE0F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409137358.32405.11078721821086614254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442cba494d34b3975420242697375c0d1decc7a2902ac6a107dec3b99e0f7108
Date: Tue, 25 Nov 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764091373
