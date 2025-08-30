Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153BF36124
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756559995; cv=none; b=bxPlAUieFaVboCJG93JnHjXEhv7LsrkpCl1+1yR9p8k+u+omWk7WvPDEBK5pAXDn777Z7yZh4GXaFLS/10cKdTMXx6dsBklU/E3JPML34XbghWoPfat5LXK/Ph25jjF7E/NfTiCY3PGRr0ljFDNl2qaEwxKK7zt3tIcbkpBrtUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756559995; c=relaxed/simple;
	bh=GJ39y6Hcx+67vZ99nJTlNf5XHogitkpilqLuRnMXSMk=;
	h=To:Subject:From:Message-Id:Date; b=W9a8HY7MBaESwtfPl5drrFtWRctEWUbD/oNWZYbgksYjtG0Q9wWEk9cdJnn5Zuy6Jk25fi/jFZN5TrHOAi1VAh3CVUSquQ44g94g3/3Sff99Oot67nUWFWGfOnTIpXVKXKL5Ezldna4TIL+y87H5+U+dq67AbW3s8nCTSO6cTe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzFm4d7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzFm4d7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A6C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756559993;
	bh=GJ39y6Hcx+67vZ99nJTlNf5XHogitkpilqLuRnMXSMk=;
	h=To:Subject:From:Date:From;
	b=tzFm4d7xHerMd+elwOYB69caF7AR7QCwNIS9hFD9ZHmvoZsYw90T2+9fsLGE1dtQq
	 Qqy8hQBGtc1LC/hxvfSR5pvZ3U+cB9HusN4nSP6JvwSI9ODo+6LE6Gim9KLO35ndUK
	 lCTgzFbuhXMCBI3cbck66lavrJRu9uqglTvcIChsD7+zcNOSDyB3CHAwphXhuzmK1o
	 8KaMsGZw9o98j/wl9GRjyeHip8rJn7FSoJpZ5kInBz8NOEukVWXB8BtRVeujd08+JR
	 v0BcfQ4pFOrGJVqRZouYCq8c6w7ghK2EdgSz+CsD20RCLMZUB+qZ8Ac9PD/LouE+mk
	 xYuUcKkqeoArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61CCA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655999357.14532.12760971362453454257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f61d43964ec6d2ef06dd1bbd839a91bd942f5b45ce8f0169d2b7ee5c9d02048
Date: Sat, 30 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756559993
