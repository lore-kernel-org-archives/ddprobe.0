Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F57344DAE
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782397054; cv=none; b=s8Lay31Oz6nAGVjw/w4McAIdLNpfAcYFgL5uZGkeDh9oKCyai4TOR0lSN5yrMg3NfbsCntPICzpZnqoPtNTCW85Bp2ihjx5yxFzw3C/MWd0gw9CqCZpXEX9JGifbITcCbXJfo0GqZBcMFNTfibAhd+WGtfuk6YR2QpvNc2qWfsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782397054; c=relaxed/simple;
	bh=X6v97sdsYD7Tw08fbqNKyPZnTUjbg5UYVSZ1Kv421kg=;
	h=To:Subject:From:Message-Id:Date; b=jwtwMcG641WplBlkx3FGn5PrjjiPwB8xNKztFGPML7qQNg2Z7X4Kccxo61pKTiBiBRSvexskoOdwDTKt1FEQcD2WsnEJyiStMdGKyLW5wzFdT1cpT3qNZbpSC4ZIuor2doKPV3kYpN/HSZmTIZsvwVQ4w88KK+xCm6Gv8rvvwC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iY9Wtsj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iY9Wtsj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BBDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782397053;
	bh=X6v97sdsYD7Tw08fbqNKyPZnTUjbg5UYVSZ1Kv421kg=;
	h=To:Subject:From:Date:From;
	b=iY9Wtsj5itcanRJ+8/f3KtzV6sH0U8tYBsiOce8J1+ArYNait3u6CvM+Hq6O2+xSe
	 g+ERQ+NOl05KejVvR6jnfTWne+ulq700oDVugayvu4mEv/4ByxTCBjwkdgsBJ8ZVnp
	 dmI0ziUau2ff+Bdsr9n53UHQHui3eA2KWykuRxQvPRRtCQBqgydwGwVHZSZpGtgH9N
	 CAFo9KgdVwtFUHApEOlaSRs/dMEtySrfWY5AhXWeLQeJTVM5yxPVee4/fKbSPGp8LQ
	 BCoLrIGU5wLTJexnD3t8JUduCFzRgKtV9TioTjSb9zl0xpXDilTZDwiFYqwcI/+3fD
	 UO8gTi5OBx81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD40FCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239705376.13771.17152446411464337493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd8d42cd3c008afc4a2cc27173c2fa575b920ac3b1d1d4679b99d8ec56d74bb
Date: Thu, 25 Jun 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782397053
