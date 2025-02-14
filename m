Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9D1DC98B
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739513334; cv=none; b=BuOdXYZ0303kWMSFXztgXuI28YsXFScvu4j76uy86twA9cGNthdhGWMEuELIQoNAByo0ZXH7+eiyJpAW0cUp15QCsOGcZlnh8gGdjyapkMJNs+tr29RzO9qhIKfOxZxSYRcFtSfBewayjiwg9/WuExZktTwZGup56Z1clLBV1G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739513334; c=relaxed/simple;
	bh=0JYvOVG7h4UBeN7cUXoBmRA5wtp+MP7oLwiXWiUvv+k=;
	h=To:Subject:From:Message-Id:Date; b=FwHQkOHijBeb6kRbCimBs0PqG+gDUyC2OSWt/pLcO7pj6MV1mrUOIPTwE6ZYdjGJflggJIPOzhJie7HC3Hzj5Tzd061QAnKfxMtbe82BDyXXA+4PWXpT6suUD2yXPqNj56RQOS5VshbQb5qj2H56Y6qkeJkUaq1X5tkkDkFLcAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBKImob+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBKImob+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB99C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739513333;
	bh=0JYvOVG7h4UBeN7cUXoBmRA5wtp+MP7oLwiXWiUvv+k=;
	h=To:Subject:From:Date:From;
	b=IBKImob+6bvFHfgNqmjgE+vtdD9+xq1qd1ZatqZ1zLu8B4mG9aIIpEHZP5lXZYgWc
	 Vjdgn1sbIbsTOIkrUFYTV/48qnFEbRz51sqSqywafzzskym2Z9Y/4ankiE2BeLrbxv
	 i9HLfi21fxBBlJopLaXQF7CGkAocu0/lwrwYBx4PWcNVSb3QTm+FkUu1r8kK5xc/Zt
	 X0Yw2CQmejWHYbfrdrubf5yFC0bjZz0fjRiAVMgC9hZIjiqe9lrxaN+lVoBphwTjRQ
	 Ci9RMpMxp9S+oManSCS86D/W4fZH+zoTbQYt6pdSyh7Kn7A/i97BMVKINbV6jGePPc
	 LjqQ9gN6nKCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9795AC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951333358.11957.16817936560949548234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8275ad3b663d745fc5e540c6452bdd6f06509a808fe22b2534408a4ec483d0
Date: Fri, 14 Feb 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739513333
