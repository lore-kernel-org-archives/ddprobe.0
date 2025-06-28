Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2585625BEF8
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751139594; cv=none; b=jppeV1cTF15kFA45FYITBGz3RTllFX5GTwRMoWWhsgv3eZTUio6aqOCsfS9HBFDMB8X/BJXzLrVH/+ArkONmq4SbkpI7eR82MM6s4qLIa1+nz8KMHftplqs4lF6pUtnm5Upobg/0mBQjeVQpnGtXEQt+BF9QWBjN+p3Q67AYzAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751139594; c=relaxed/simple;
	bh=W9mpnaGz0DTat1DEDU9S2tYbXgu1rv86cCg9EzzsTCk=;
	h=To:Subject:From:Message-Id:Date; b=uBEEGKX49dFMCrK4293kTKU8NxgyJX8mglM+72E81KYzU2C6CKVVFCzN26NMI06lX5UTHQLO3KBdjk5SxpZk4zvhBGHDp2oYpQxG/9qO3vad3vBb2csqsn9TxWB/J6PUQWaAGEpoYKUMaJl1JMUyLSa+5L/SmJw8QHnwG4qM9zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuVmgDRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuVmgDRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751139593;
	bh=W9mpnaGz0DTat1DEDU9S2tYbXgu1rv86cCg9EzzsTCk=;
	h=To:Subject:From:Date:From;
	b=LuVmgDRW7NJLHOa0DuwLMAKUiWvGyY++2HXjJLIKWhHQ40pmW0xfkd6vf5kcFTNrU
	 Mas+yBQxwlrkeH4HFGarnSuV5SjvnQMoZNYIrPOmN19DaCvssr5gCpMTFdeBDTx7dU
	 Ey+lvwG4d/9e8zl5PLb1kQz1u70eGsIBCQ7VPOh2d1Jntn467hSl6DzRMTgfV2KxxG
	 x1VosScnpxaPk16ZBtvCVsz5BYbD2zDMxFT2EPjyYLr4ZeWfPEYVv9qnyrE4c47+w1
	 OAHLigLaZzVfa4/I2yTPtWWnXj0ADvjf36w1xAIHFIrzp+YD2GQ4QPfa0twwkANSiw
	 psED6KXp7kF3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68BC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113959357.7701.9031490586309219136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb037f9001ce8cbec4515f336130d7852a4bc50e3fc070843cf6b7f64ec3cd79
Date: Sat, 28 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751139593
