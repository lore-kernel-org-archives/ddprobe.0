Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C80F19E82A
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761644394; cv=none; b=j7ozFG2trT2PSCseN1oYW0FziN2sAEfLc+N9S7IUtyfYWpXFUmu3I3qMR0gk07a389gTBU2fOjpHe1ybxDXtyg5eGmbcpzDBNGvdN9TvlXmh6Dzj2AtkEYvScALBoFmNb/+mPmrDFM0OtgoFmemiVX5cJcrjKcMTtm9ghgc9hLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761644394; c=relaxed/simple;
	bh=td/3dtaXcIv//4dZokEiIgWRqBCZSDp6RKBpWcfT7A4=;
	h=To:Subject:From:Message-Id:Date; b=S+g5b+XU2CZGkDSGNnDVax0cC/037kt+B9Uw9rxzQzzo2Wpjug2CCP+zcgShqmdtxPBTDlB2HhfGEIAgX2D/dpPrqJoS4FLI9hkBP9lOdfb2Wnb/lzlt9KQUd+JInKG1+ipQ8iMuFtl/jq2LImUg+PO2cp6G9f6jdEEAGrA4bCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZNzWXG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZNzWXG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92C8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761644393;
	bh=td/3dtaXcIv//4dZokEiIgWRqBCZSDp6RKBpWcfT7A4=;
	h=To:Subject:From:Date:From;
	b=FZNzWXG+4Ep8EZ61kHs8PWARqbYN+7/A9A1lwRDHf0iYfWXvNy4DICKi/gXyLdVEb
	 68KnWdh3Yk6qYUrFwaOhTqzwTJscTNWt++BV3R/S37X6sobT78pAGnT5/O6j8YMJhc
	 TOy3z1k0zGZGOSM8yBink0/ZXBHzfiDXJMkPSW6Zjb/gQUD9BWLs0ovY4iQ7+9icaQ
	 nh1iyKI4L2YbHnb/bItCTYl812aiEAOZ+/q8kusHWjJuMzS9v4naN5jSiJ1pPB6was
	 pIrpdhw/9tw5PxiO+1wcS/defPAaJJM8xpC6NPuxsDlWlBtP0BAt9n/gI0NFNHto3G
	 ruh7NhjhKkMuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96904CCF9EC
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164439359.25253.13631801157000003821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed8b6457cc40e528aad1fa639ceea00557019e5f741b61a2a567e637e0554b5
Date: Tue, 28 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761644393
