Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E30B21C190
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749074994; cv=none; b=q2dZsuywFs4Bguv6hrC5rGPxk6stodkxLI6EUajU3MLug3sak+oI/OiotxcFutu4hvLRWeAL9PQsX9pZhXzNYAvUOu4cTeoNgcHp6Iq0xrBA6RLkxKqpU453TGnUO9i3DoOCI6i85vkp4Fv7YHInVJGdQpPRprlwfJo1UCgs87M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749074994; c=relaxed/simple;
	bh=dJcLiHk4ScYeiQM+tfJCtyMwXhSKvmjXWS4DFlJ2Hn8=;
	h=To:Subject:From:Message-Id:Date; b=qWP2iqrAR/JJk3f45zmlVn9A6mrNfi4jcMssFxfOcPLukHHw7RcGYPU839sZWhfXrHGyfqFEEu4eeKaB+JQG2Z41I3YwWBkNgrZOOMCAmxAn7Ukmb4B3kAhMZBFf0op1aRQ8WvtWKgm9YaUFv4o8hZbXdJzLCmqg0FpBV88PwCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck/RdDua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck/RdDua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7377C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749074993;
	bh=dJcLiHk4ScYeiQM+tfJCtyMwXhSKvmjXWS4DFlJ2Hn8=;
	h=To:Subject:From:Date:From;
	b=ck/RdDua+ShhdbCmqooBDdfEvVtw8M+CcCrZyZKAgV2s2Wp/SkqpeFaHrEVz44iGs
	 MBuXf8fNahqfy6Dkx+5IMsB04bvJRvWgZOk2l1gTqrL+v64B6QxAkf0tmQ/KasNBQo
	 164VvKtgEkNKK/uUSZK65kJOXGLubGF2QOivdEQApBfyMyOYLAvFurDMrpn7rxhbdi
	 ZT11Jz8+XFRijRTqcx2qa7drNNeEF8vv2MKUVOepfxRH/9/gLtNnENj0AMjoGSdeQQ
	 9M2ofiCZulVleFB2AZP5Fir6r8kk8AuJV2CbTETRkIw5kHm99MkgLqHoTaDFlrRdBO
	 rGlTj6tI0hQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94736C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907499357.16279.8830186771205221892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1eaa2aafb2561ce4dfaaf984d68c52db4763631f4c5db491305081d4872b54
Date: Wed, 04 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749074993
