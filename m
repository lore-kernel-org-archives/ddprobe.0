Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E01D408602
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789509034; cv=none; b=sEmUMXmhwdEZUbGAICNEnrUn8T0PT4uJ4u1QCItMZ5uE/PybrMLXTrcjrFPoS9ExEAD7miI+Y76q3XOcyKAL6xTv+9b+XrzYON+cuW1g6dWTb6z+C6nsW2YSbvaDh95xOMvLVQCzY1b6vOxNSDp1YbE6y8XtRkdQqztOSOsDkcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789509034; c=relaxed/simple;
	bh=Wy6+fBFM3RgL2rQaYy6DkL07Ff4ucYfR4LPRGY7cpwo=;
	h=To:Subject:From:Message-Id:Date; b=Aus6crMIZCB4bWpQSU5AMlvuD62QnHAQGSm0lo3DRVjMnwbFmr6gSrFySaj0NFCiIygQti+OBnLdjUAEKIQhEJAPlPtR788FgS8DHctLCAYc9T+vP3AsmrBbiDhfnZIPz8yfNBjuMiZneBbibpumJWTJ5fbSQSdIWDT5SdnNKYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANOnoXh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANOnoXh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49A3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789509033;
	bh=Wy6+fBFM3RgL2rQaYy6DkL07Ff4ucYfR4LPRGY7cpwo=;
	h=To:Subject:From:Date:From;
	b=ANOnoXh3+6K/VJ6aLLTVDZgtzZqkvMH9uaKGIcopQMei9Jm2qDxY/aheo9yJZzF+G
	 4IB6uKAXjAVcdByfke2NFLwmwXo7nrij4QUtpxY3+viRRht6xwuOueGFyiYU+uLWQa
	 iiz+sTe+X92wHMJ0lC4WBDga+Ff4dmQYKUDhMlQGr+WwG0bBpeZM1uryQyrj0vRy7m
	 fL8d5RFJCIa77FLLyD4WskHfQEHzagJ0irE6tsvyhTo1rZtMzHkjajWR8D4OSj1vMW
	 w58hJb1SsZlkStVo0j7Z0Y7M7CCGJWKZt6gak0sb+i1XwtLcak6Qn+UlL7Qr6QowvG
	 yeCAxZYFgF9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE483C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950903370.17193.13699161520160571921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87df6c7f3244977db4df550aa89216437dc49e3a22529ddae4677d92d82192ad
Date: Tue, 15 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789509033
