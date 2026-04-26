Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF4B22AE65
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777193854; cv=none; b=oOPPrXMLvDs0o/wemt/VyBiwUCK51eLbtSERxppdkP2XW287MkfYGcNDa8fJDt1IwRob8EeA739ApJL4PS13dU9ox5KB/lvQptU/jqeCFZNwvxxPzr4cv+Xjoud8ndDzEWYQf7B5JlCCPUo5ZZP8H8jWc01/Gaz9lTu1mzkPGcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777193854; c=relaxed/simple;
	bh=G3kEY/r5uZkC/U7tnDm9dtk7z5dN9JLAAyJD73xoMdY=;
	h=To:Subject:From:Message-Id:Date; b=pHVnz+O2tXz05Tz366kF3k3UlysdnE1fg7S6LyOnvlmW292STb+cfCIQq/BzUmv4A7SPsmvde/fytIZSzp9jlgvFCryHu8LWuLw0GMpYXAVI+lEPVdXZ1SU1j/uUGTu9J4RHNxV0AJI+DwDBj7xIoNDrrPywB5jq6gK+f7QkzJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llL+GAHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llL+GAHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE66AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777193853;
	bh=G3kEY/r5uZkC/U7tnDm9dtk7z5dN9JLAAyJD73xoMdY=;
	h=To:Subject:From:Date:From;
	b=llL+GAHxDg1whw0Dby9lepO9EChdP6OrXIWskmb+JOnNQQFTj9mIVj/0/2V2ny8g5
	 T/Bg6tiXV5EfvzkTMAHj/ULCINxfYKl2W9ZoG7lmFPgfftxo8MKI5H+Is5J21qbdE4
	 KLOyZT4m3sdR8h7je65gSBjGZYuIzMu505Ygj/bnBvCSZC26HVNoov0m3RxdrSZquO
	 NtqVPp8sbIaxcOyttrTvmUvKicWtgXSSyKC9ZUjqTjyIjWd6rZNP0ME03dsjhL1kWP
	 XWt9QV7zm/rQymjpBZN0gNsJY7D2cR1kGw5KXDQArWDBJkjfhlfxTD6ferlUBTwsen
	 LQM4vHiJP8ApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCE6FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719385368.8182.1224738844364434920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbf59672426be2124b9e5502ad0d3a226877cca9729a269ccd107086b6efcc1
Date: Sun, 26 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777193853
