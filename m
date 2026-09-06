Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A4541F345
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788684035; cv=none; b=cPNf/xK/Pt+cn2+qIGT9bMZY9FUte8ak7dDLxQbWSyyWhruAquyt5XUmB3tBJZG9TCmzTJMcaZt6/2zsV0bJW76e65vA5OFB4WibYnmz1sjCTedCfU+jhjaUupnOT0e8Aroh4GsTZzq4HzKxL/WEWIalzwP3mFC6fQQM7HlT+Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788684035; c=relaxed/simple;
	bh=yrySH1S1nWGtfpGodKUGn9LVTd+q4zTx/PrnN5lbNcI=;
	h=To:Subject:From:Message-Id:Date; b=TX3qaWC9ipjtJ03nW3c0bo6GHXwr6kXlb3cPFvlqOhHhG3YQBNk2KN1dwqFvh4acGunUlL6UVk4ofPd9VE9rtjUgx2ZEayN2Ove8aDXhuF6DKLyaPPOc7WCzZGULLA2XTPyT+5Xn4OTRK33f6mp0j7eSqXgDS7hJ2R9hfbxk8Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxTQ2fcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxTQ2fcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F16C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788684033;
	bh=yrySH1S1nWGtfpGodKUGn9LVTd+q4zTx/PrnN5lbNcI=;
	h=To:Subject:From:Date:From;
	b=IxTQ2fcrR1jog5kmdOM8ZhQXWX7fSffmfYoxI7XOWTmAcKnq1NedJ+9O0dRY0k13a
	 BPtXLsHPZ2Nl5GLCwuI2ZGkcaQDDEd2cmcOqeeEov9+HuxvloNAAmjIAzNfv0nMTuU
	 vVlxHiM+/sdxE+5/Yx2fxDeoeLKrWxRomMoICvW7G9K75N15TclO5Wq5gC5Dnhydjx
	 M862zhJ+n+xrn65OqSzoMG12l3KebdKtsl9SS2k5sopakv2NBLHZbkcs55v/Zg1e/+
	 Fgsc1WS41tAPtgEt9IyneZTmcdpKsNSRuOtPONmkjshMlb7tp339JJ8j19uPDHUVpH
	 YTfOWi4nRK41w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7AEC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868403369.9271.6936471658530613759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e814a617a2a0bf5aa4796a1a0d250847d1d32a835e4d954ee643e6345a6f18
Date: Sun, 06 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788684033
