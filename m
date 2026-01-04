Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC1B2580FB
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767528234; cv=none; b=QMdngBZVlOLLExObb61cTD2fUdUPCLZ6Bqi81dfFSighMRVZmnytWQEsTu9M78Ap9T4Lles9+Pao2zJFWckv8fK9q9CmuScW/KpvPD6cN4rn1+gP9rQPd+HQyp+B6JaSJvlz/A4ugHdkbhoIF6ia7YiVZOTTvP7yHyoALfC5wVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767528234; c=relaxed/simple;
	bh=285EEYXCjzqdBkvYHJHCIj5aZsY02UyMjTtglbAXvkw=;
	h=To:Subject:From:Message-Id:Date; b=af+Rp6SNKtHjIUPEjqF+mvluDl7AQ1FL/INizlkw7Y5wgFCDHDTnDhhlk/6fzVXFk/fYvKwJssLodd87U6zGb+BFoOoTp8denXgsw5McGkr7JHSlb2dKY6igN+FL3d1nbU+bDB+86Jr9COsPddjb+MrunaiqWQBnOzdB/LRaZzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeUGhfFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeUGhfFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767528233;
	bh=285EEYXCjzqdBkvYHJHCIj5aZsY02UyMjTtglbAXvkw=;
	h=To:Subject:From:Date:From;
	b=FeUGhfFDLdS4N137sMkITV/sSG20rNbTGIm/T5L0sNcWCeoD15QBRs3w+64S2gyBM
	 NmI+2J4m3NlEmFB0Y9HID347qyqD1wHnF9VeV7G8UlqBw46ZRgrMPOHWTnYWR3DeIU
	 1Iw/QH8vRfqsf1bLTt2YOVMvJ6V4v+ljlUoconUv7yggLED1Sfo0O6rP15kFnacxRV
	 u8DB38+683w5tXAHJPvh9fNGJzKl3gekg3yZ3TB5tbgsXEwCmTLnorTPsfBSstmUKd
	 /NkNFrqMDL6lVMTsBwFsZf5vDZ+nEZx0XLHHpWJaDEcqHQ/Q0GpGcjN3YK+FLtKHXc
	 L+0ZFhkw4N1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FCC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752823357.1958.4936434086571874427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3029c66c4ec8bf2093a1fc57c5e4b3644d4448694a9806a9b8b8eac89313cd7f
Date: Sun, 04 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767528233
