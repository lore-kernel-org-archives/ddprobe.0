Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22D52F60D1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763522514; cv=none; b=eVoaMIRlLc/EpkmQWYmXu19cjw6GMOKGkEB+jT2FqyKMiqgOE3jhogIvgfxevKxFlm8X57VKST/KEDp68AMFRBhRga5N8MvF9RSXBRO6u6xCmdlFYubmTZo8c+xHJJZPZ2CIN+YqbDjv8udmtmMG7ealdfA+2miUk+5A01oGEIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763522514; c=relaxed/simple;
	bh=FwDAVxadio+mY851/ER7FZvdPgfbqnZVwZvh6vnpiXU=;
	h=To:Subject:From:Message-Id:Date; b=ttD0L117xpMw5xEOhz7Ul4XxtDAmstvDyr6gnK2am7uIgZWTn0g5xr1Klmbczx8soG2fgIEs3ZLUhMteIVjOasO+3BojCw7qBqcOQhiWcTHdjkNCuseb8HZwWIIfY6sSGZISzoc5ykaXciAJYEjYPRzknNZNOPacRP990ScQNvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFwLuQ9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFwLuQ9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5EDC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763522513;
	bh=FwDAVxadio+mY851/ER7FZvdPgfbqnZVwZvh6vnpiXU=;
	h=To:Subject:From:Date:From;
	b=QFwLuQ9go8JiyedE4BWFxXlYP2Z/sGmhyuwl7OftXT9mAd/a1EMxM8T+LUIoc9oBf
	 u0bv3U+UCR0QVpqBlkUSN7mkxr9CgyIofAOWqME2cbZvsDcA2xfU1O1P1QNPAa+ffT
	 bS+guZ1qyVmcyDDBbYBkJpGHGHwiLNyZ4E2xqoXZ9lAAIdntNiRPKXSxjg6Cmxb7r7
	 4Mwv3BkzlI6HGxz09EOY4UIeerGBVkI8KyS+KYik3druJR/bcb0oLWGsHRK44us9OZ
	 xpFZBmqiQsYVVdCLV4hTvEZV60urIbhO0W3GF4hD6ssABj8s38JczjfrE7C9KG6Wxg
	 cL4yeRF4A3axA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92854CEBF9A
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352251359.13582.5366189043349916528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa12cf0a84f8029c06180c4027d798a1449657d60a41f1acac0cc7924ec5616
Date: Wed, 19 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763522513
