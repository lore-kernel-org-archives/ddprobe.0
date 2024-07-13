Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A4D13C3D3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720912223; cv=none; b=LRnlZlyqPESS0ItMJaTl3RXDyl6kIbe+lX6oNHMZ6AXBWpJQW3eseHl++NKctH2Tf8qu1Wsi7K7ntkY8Hyqb1YzJ6mwJQMi6HMu9+X87C8FCCH096vjhbtN3Yb5ZQyHS1dHRPmotmIZDZv9Fa+PoEEcqQAKLlwwQAUQYsX2uJhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720912223; c=relaxed/simple;
	bh=7bbGfonNj4pLjMBrpEKVUF/eSJ/kAemmzeDhSRjjw4w=;
	h=To:Subject:From:Message-Id:Date; b=eqcE046HJ1dFjRAkkqntz4UaB6KSOTxW/uuywK1uPUHMoVnRRHJas1FOQGYDD/LU/PTmlee552cflshO05HArzHvpds108oN4cviK93p9zjpK+0ek7kxkgIOpnQ6BRwvOHyLgDklQ6Yg4YofW22ltwwxC50Fdj9jQmawd6cHFSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVsS7oCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVsS7oCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4591C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720912222;
	bh=7bbGfonNj4pLjMBrpEKVUF/eSJ/kAemmzeDhSRjjw4w=;
	h=To:Subject:From:Date:From;
	b=rVsS7oCcb+yfCKvFmMG7MPDYrRaNxXL5O1/lWcBpKFZaCm1hFY2viB4D6Sv74pFVT
	 V/+D0ozTGT0HMohXX3gTVQBHenXbgiINXmZvQdhRCe/WKKHTYBq0h6s0XlPQDRSlwL
	 ak/IT4w2V3ECJMt6EdTYawZrC/tSBtjCIeQqG7iRxmtszaDYsfIkI1T6CsjD0nHjTU
	 z9JdG7dYme5zlNsskr8X2pWIwlkBqIbMlb4aKo3Day4tui1kfr95GEJRhTvYmfsJI6
	 QVFUHuzNVxhAhAjzHxy/UDq3VZ+RWnNlbiXQqgQT8sZf4hujlU9aWbyw/BOJnfCf5u
	 SdX72mXoISCaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC195C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091222276.9011.10460230444966071585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb1b92efab14c66ca3a8e446a56c5e1ccff22795a359678749f419008ac6fa7
Date: Sat, 13 Jul 2024 23:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720912222
