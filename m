Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1FC1E833D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756870194; cv=none; b=N4Dc8aaXE/EhDA+ZabDsIceBZjXrQ56Zx/KUFPp8LqdGlsBlx4e4OUZ2xxxlFrNCMjgTQXAhQbgCHOpAukocjDMJSCip7pjlrpCdTwyd0V8WNWmX4+OQNg6GzsAPa9c/c+p3QWBJX7M85K4GKYdjzkYxuNfnfGYlAilSYkzPiqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756870194; c=relaxed/simple;
	bh=o5XfpJQiwL+4EP/D/ouio+LfKcwNSmomNRDxUMXC0bc=;
	h=To:Subject:From:Message-Id:Date; b=ejLssiuVTdzW7zNB2sZa7zG2nCizMjiyzI+TcXtwSbN9eNZY9v+p3lr8ky2gCXPTXFdlf7nFr0Wzh+ZRTVdwYwpCkrJ2/k9+S1SgBG6huK6tmpBfAZ0SX2qEF+mGp2c5JQDs6KWyPJ6+9Uv14+ikyxWXIavxjL0dsgFAMLQ8XF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKCAAiSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKCAAiSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9313C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756870193;
	bh=o5XfpJQiwL+4EP/D/ouio+LfKcwNSmomNRDxUMXC0bc=;
	h=To:Subject:From:Date:From;
	b=TKCAAiSf7wy09VXoItSwV8IWs6f80R30iWbBIaz0Iwg6A8FPip+P2apOXGj2+j/0B
	 cENtgix/X0O0RF8kvA5x13Gb0qbYisS693vogvOBtMwiHyy+w+HIahDyjafkfaPrZZ
	 0Y6JVJvU/EFAc8803UH15AS3WgFAhjYpqOVmkwzMice12+6xELT6Xqiw6wZQLUzV08
	 /l1kOAAqAq6A4VhA2N+vC3okuaLbReEzV1Z/g1ojIPpU6AGJTKKU+3wp845bmZdDDX
	 D72umgqJ/e+mtdhV1dc76VdfHvfY25v6dZ/6mDQWKerRERQygwbVHHBSyqaIZuTLkw
	 ApoLrYnkqrqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B5CA0FED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687019357.8920.9714221626031867398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbac11006c665608df0618a6c6af0c6c9b610895ed6f6bd6fc4af3208e5b6ff
Date: Wed, 03 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756870193
