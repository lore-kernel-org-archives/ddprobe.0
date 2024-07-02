Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3551A286
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719887123; cv=none; b=WBzeVe40Q1hJchsYtQ5m+G3ja29b14X5aXRqoD9Md/FUMBSWDmItMxBqd0H+NoIci7wmZsSTqkbDPnl1gCLKAJjoEMatJvN8SH3jOrz27MDUG+Rs4tj+rp/rqgi0G4PrDdXbrId8GCHb3+2hfh27KtPSFfAYo170GwYsS7HhB4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719887123; c=relaxed/simple;
	bh=Idrb+vZg/AVaIYzADxZVZmJ98uXB/zq6AbbsBSrBUZA=;
	h=To:Subject:From:Message-Id:Date; b=RL6tmDmrZ6CxcRWH5TQ1EPsDBcYIoxqEvDQIp0Xp8c7+8ygf5VilFFmY+MvI6gJfZPgZJKdec/EZwI/L5EftHD9XavqqtgHw+MibjpGA8nr5cmNPjTqWtLBkTZQY+C8zBl4aOQVEge8rTSpe30Z35YeXGj+svTFZb17CCkSiwog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQm8x9hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQm8x9hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2AE0C4AF0C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719887123;
	bh=Idrb+vZg/AVaIYzADxZVZmJ98uXB/zq6AbbsBSrBUZA=;
	h=To:Subject:From:Date:From;
	b=DQm8x9hlN/kyIo2fYoDucqtAOjoH4vA7yLDr7vcfh74LffrkFmdLbOYONEX2DYYjw
	 fVVVgdjBFnXG/MbclWC/Wgd8DMzkNy6Cv7G+NYD49Ym7dnS5ZFQ+N2waFzQv1HWdYD
	 2N0HuKPFEncNBSPgvoSRmrS70xo8fVTxh+olilxrzN/JHSU5mAmfm2qvYbfRt7cGfX
	 W9ByVEqS4DYs2b7nOkAjlfobce2uVYukL4ILXnY3s2zby6FvVLnBFJkv3ZNargy7cM
	 5ndTfDaFbxgq7x/74D7NSxDZsXa/rHgiJyIlRcPrTIa/z863izeeiZu7op87+8yeF8
	 cllEqoobfE2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0D9DC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988712289.19832.17586708166437034601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86167d8cfdec90ec6fa56d305a764ab56a705afeb5ca4b616892d5beb72c43e
Date: Tue, 02 Jul 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719887122
