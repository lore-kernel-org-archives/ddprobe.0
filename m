Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1060923815C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749567594; cv=none; b=n78E6OdjL4UYkAomJFmSuHP15mPtz17Ps+QTEUhHMv+MJIA6CDdh8ns21CUz3suRmWYG+eY84ZllRt7RMQvNhLoHbGgGzkWCct0ihmuW2slz3a+IIztBBUKs8kd1dOYYlstx2s5mQogGne/KFv25mf/LyKj3Z48h9RPrJn+SIDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749567594; c=relaxed/simple;
	bh=S1dEiu7SFCeRMG/7zKfS2jXFEkHfTgqXzRFUiGsMfDE=;
	h=To:Subject:From:Message-Id:Date; b=l5nGnex/4V3U4QnrjkUgQ/QH87oeaAM4UOQEgS6nujeYKfT6C0ZOuwcDJj0kZ8cZoo2TEr0y/Tyyv0apQT0l54rSYjO9xCt17xBuRvnyYhM3zQ7yGfTEZA8zaR1ypWpAbNhl1DfJanxsZVl+LZS6NnqLpIQowGQyTM5ASCBy/+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S14TIVmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S14TIVmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99C1C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749567593;
	bh=S1dEiu7SFCeRMG/7zKfS2jXFEkHfTgqXzRFUiGsMfDE=;
	h=To:Subject:From:Date:From;
	b=S14TIVmi7jpMWtDR32As3VeaSTnhhWJ2dp7fPezx3mrvM3gxBpPretFNYPxkiw/eT
	 26b/Vtq1u6VBp8CT9VEIHzutVypCrpQcaTZGk5KyFL41RCYddvOY1mRkpHqjwiuFDt
	 DWZh+sWAWsBOTWsAq57nmxrA6JaCQ43lYg0Ch2/4hKRsFjBwtaLb3jP6mXgVP1Z5ys
	 RzFEKTBjLkKWSb5j2bZQf1pSQeuDVsb+jToipF9u+yBsatsmjaGSBG9KyJ6WN0UieM
	 1WO+tHI22htVTeE6v4CPceXz252W3lRNUNEjm0Rkj+ef6rWAewdnxRW9KOLhk2fSbG
	 Yx/4Ed/BzGPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B7C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956759360.2783.3979582052212131382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c545385cfe4ae84fb59b60f7d6ed17265de28c7cd5dd547da965031a3f88df
Date: Tue, 10 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749567593
