Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B272BDC0F
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787993434; cv=none; b=dEEP2H8NNQMF3UVjL7ioVwrRrc+h1qpr6LDK4VuiacNMsqHUI18y4BRy4pgdlQFvc0w64DbO4wgYgK60KHa2E7wpPIIzk36deW237J/4150ehnO0XChycamALhM7oMHk2zoftrVtNosoYT2SQIQ1OQEwdxKbAhmDzI36wtfzYog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787993434; c=relaxed/simple;
	bh=BwXCq7vJJvUWyVOTPEonKaXayHaMuGT7Aers7lwMcD0=;
	h=To:Subject:From:Message-Id:Date; b=Bfa/yckA5llm705GrENvaDbeuhCIm3Mpmdtso7WlUu/2IkcMRKqTENa6qoENiO6hHSTkxlUnr879J67fjCjJR9fvN1f0BEhYVGslCdqFw5WijvD3y+KPvCUuDeb9aDqpdSkh/3yCb+9DLSq+cewjE+RMdhTtxqUKqwLspQbSwBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lH7koy2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH7koy2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE000C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787993433;
	bh=BwXCq7vJJvUWyVOTPEonKaXayHaMuGT7Aers7lwMcD0=;
	h=To:Subject:From:Date:From;
	b=lH7koy2AP/yn84WajN5ylUqK0Qgrws0bj7ib0J/gH5qxiBCaES+VZT0TY+c0g6wkG
	 zwQLcv0+P6FqjsbzzTTx5U5kfk42fUz2Q8PS2ZZb1eKSOzYFuxQrxm7aKjlgidYb0C
	 gF2aeTkA57gKcj8c0T6JwLlIafDazlJuFyJz1nscpm8VlJB1pnQrRmr4oMYGEtwgBA
	 /D7LZg9CJJckjj06YZb1NEmWrDcz5B9hajNedhMwEluRsq3nFK4a47X4QPcFdn3xqF
	 JyMWWz+EjwuuykO+CBhj8vEfeAUpmJSCd5IQ6ql/BpTTeX5MzC9lMgjIX8EAiN97yP
	 rpTAcC5RZRlwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DBC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799343368.405.66052653585132010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789d43361ab88d0adacabe5a0768173e0bfefd2ab7358ad26920e14bdad42eb3
Date: Sat, 29 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787993433
