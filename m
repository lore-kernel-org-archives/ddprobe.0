Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6192DB789
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789911634; cv=none; b=bo+VoxdSlcK61dahxnFeUk4HTRRcVPnsQbD8R7iWiFpg/nNBd/oWj7xIc01SQb5vKprdPgKtSUUAFib8+ETjAQz49VpbJsW8Xby0eGNXPfG+82tZxs1I2z3xTk1RN4Um80w4tRdQDDb0i0EKRzwNkc92wxHgjh5871J8ymWi9y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789911634; c=relaxed/simple;
	bh=YFiC+LPxl23zwq9ko9mk/MnQbZQuQFQbX8MaYRLMKso=;
	h=To:Subject:From:Message-Id:Date; b=RYpLWdp6ki6JKytgViBJEWK20Zp5xXhXr4vBss4/8nV2gJ20Kfy/9Vvt85Cvf1pcZmha9wJugRM//aNP0SuP7WmHIIaPhif3jSxf/NPBmTuPPBG4mP3YeH1k7W7XD7EFAeeE4TX6fDdRuOEPoXBB8d+yx3zhl3di3FuM+pzKgPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBGdDxlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBGdDxlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FD0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789911633;
	bh=YFiC+LPxl23zwq9ko9mk/MnQbZQuQFQbX8MaYRLMKso=;
	h=To:Subject:From:Date:From;
	b=RBGdDxlT6+yMHvGTcHSqUdyNcHMhAKEX11aW2ffU9nWbukVl4ulTH6dWQYEO4MgqO
	 B0M9GK2DuOmzpz3FzDZl+9ZSISXa8s+OfUa1rXRSMiZb1blgT7cog2i15xRmn/P/yw
	 IHsencLxx0AnD9fxUpHr2dg1O/cMzPQgW/lWPAXMz7WKgEavn71Ck/z3c2pIRdSTfv
	 +7bOrAvR0CE321u3zxC6ozO4bmjjAZUg/MTWEwFOxKwy7/Ji5HWWWAX/oSmMqWp6/i
	 WgcIeRDmS/F7S1p5IjBceqGuFbPglVrRI8hQOu5ttP6SDreplJtFOtRi714J+lMNZE
	 XElvtNVk1iwpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF105C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991163368.4281.11994650612493133171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad131cca047db4eff66ef429b359e6cc6b5c5cab95b39003adc438d59f2026fd
Date: Sun, 20 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789911633
