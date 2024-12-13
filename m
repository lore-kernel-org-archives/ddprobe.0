Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14303383
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734119154; cv=none; b=pNJLJc6cXvoKTrYVmKrLdA9VxuTbNB2yCfPoF+DxcB2obAKkO3ptiBBVZqBRrGd1Oif/QfZCH2UWXBBEYtdGnRQNAtbOkAzgdFuhwpR00CY4wM2GzyMnq24deV603u6qfG05hg3S9Cd9cn6WWm061EoRg0a13/vxR0FmVulbysQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734119154; c=relaxed/simple;
	bh=rDY1lSCadM8ROZY8QZs3KlLOVMNyUr3wym4LBxOi7CM=;
	h=To:Subject:From:Message-Id:Date; b=EvQC/s1gnH+tEBeSBCKpUHvJjCJJFRbRTCDB9I04rUmxyJt6oLqCgLDGiyC8pkHSYHyvHNEaHtPbyKX7yIubAi9G/f9XZYjBrCmpokTyUUOpMnuL0eTJaqLflg6/uq1OCk5ido5h7vsy4TI8FkYxy2vwQ/GV1XBbBHslswXAd+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZcC98gL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZcC98gL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ABC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734119153;
	bh=rDY1lSCadM8ROZY8QZs3KlLOVMNyUr3wym4LBxOi7CM=;
	h=To:Subject:From:Date:From;
	b=AZcC98gLx9lvI7QK5WoVl6kDDjQZhCqJmqE3rSQ78GLrlOC6Il4Y8MBxjnkjt2Ixl
	 1bjfrw0U3XwPCXnSm318r9MZN9dStqb0XuRuVQD0XXpSjouf9O2DAybZvQhe+NlEPo
	 PM1KpPP/WLq9DxexrYmcY/uusXKFzCRxwhRV0gkVlQ1ZfeKkQVx9R9lO4JE60VnE8w
	 VTBJGC4etwcUtN9m+WS2XDd/m3AodQyJnqstmlqLemnRxFDIT5mdXrZk7cISlWSNpB
	 Uk1++wvQW4sXgIvtj57XWlkCjoIHY0JLvek0UzpvGFndaaBCGsyiz63vH4jo8MUfD7
	 qa82a/xCDLeUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B1E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411915359.18520.13577990480827586795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b917d7df0e4e52c395af2d76f14642e463a677dcbd5e734085d329108a778fac
Date: Fri, 13 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734119153
