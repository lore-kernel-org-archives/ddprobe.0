Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0863517BB6
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711295897; cv=none; b=B/9stgr0dGuFXmIqwfSaS6/HjlvqaQ3ZtkHl1kJXvO/VflufJq4428CzwFfWK23MFZTYqs69TUvhQoROkN9lKumpXrXbK6AWTZQ//wByUfsF4vJnNWFxnKaTvubAh+U70I1DXZgahNBbjqYtX2NCZxV4khh1EyVp1z9GAq1x5v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711295897; c=relaxed/simple;
	bh=EfQrkZmdlUZxpQOV2uOdqHrvsDAN2bRHJ3jK1oFPIGM=;
	h=To:Subject:From:Message-Id:Date; b=NSYJYbO3ajIUcnvxCQrTakntOfmvS/TFFdalg1jBk5qEtlfNFxqhKRl1HOWX15/jaMelhAOsrm+B8wbZGLloQbkHaf8EqZSjyTX15EhWA+eIsg6OQp35fx2B5w8PrbehkALTYYbm4AyIuHuy850vBJOHOurrAojzKGqI+nuqReQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX8S1fXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX8S1fXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F3A5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711295896;
	bh=EfQrkZmdlUZxpQOV2uOdqHrvsDAN2bRHJ3jK1oFPIGM=;
	h=To:Subject:From:Date:From;
	b=GX8S1fXGsper39AfZB5gX1Z/8ZCeDyR1i+0ZXMmBqPH9uUKsETzvEoqpojf/1sU5u
	 Jnrsf/bgXqKPkYWOk3zh0ke6cu7emvI+AzB5uYjafegoVqauyL2Y02SF+2yX4Lbnbd
	 uHgmN4FPb9NOHktelQYvClAeiCN92IzXYDycEspCa+xpYuQUSrAtvzTIoRYxEm5Xzp
	 5gwsbbzmspq4mQP8aPE6RBarvvcbYK8AcujbNC6WDdku5qgqSNLYnEBb6gQnBBF9a6
	 /DMWywljUhrGM97DJ1XCg9uWXPVqkJvo0m3RdrL85PzVTZk26SiGo46+q0Y85bXqae
	 6OOeiWUhkrr9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 745FBC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171129589643.16903.15780898854370950770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16813e62ff9913a3175341d983632b24984bf59185f98607453c3f13d69d5df0
Date: Sun, 24 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711295896
