Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7CD3FFAB0
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785768034; cv=none; b=RSsUB94/VWZu7vjzH37lH7vtW2D++8oYwKnpnIg7QUkiMTczx1/HYSBJi/ISPO7PhwF0lfp11rbrW1zjvCD6tsN7jr8GJG3HKbfi+vAWjGOifC3N03+WBjzlsE9ZL4IUK1ErEv17Cnlrc0Q7e8g9+CJiBOKlNg7Q6uekADSc8sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785768034; c=relaxed/simple;
	bh=8SPZgBksoClsaIEju60zcmJNfB3rY1jLyv4Y6nIAmWA=;
	h=To:Subject:From:Message-Id:Date; b=pFKLTBRGbQBdXBtr0KaED0WFztM7lJcUQAIZ+NgmGwv4R2h/GPpJAZkLjIEKYygPvpoXcs6xnsKNuG+hO3OVLeEKjEW7RmmrIIB5SROH7NN8xb4l4FXdOfwTVflgAnwwA+U+HOfLw4LivX23BMFx7OEsTZSKvYLOT+ROARyqQOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isA+GOO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isA+GOO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CA7C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785768033;
	bh=8SPZgBksoClsaIEju60zcmJNfB3rY1jLyv4Y6nIAmWA=;
	h=To:Subject:From:Date:From;
	b=isA+GOO7eeobkSrf8IW5UHFNkkuzjPwt4DD2U8gYMK2WbQJat/NikT8PT3PvOBPOX
	 3+W0a3iebwQh0MCUgFmp7+PtKUXdjCJYzPrwDsFLAVjXb35jPq+T3nonlLnS6SjFO0
	 gYCtzeUwuAiPk4/NN2iIn3XYOXyJY3ZKbQdY2nTZSPcckZxnMQFvY/x6HRaiN7nWDW
	 h+DMp/A1Mq95X8QAm2zRfMI+tLpVahtIJrtyc3JQ/oXnpiq7fUqxgdvrUq7mWmT/Ai
	 lDyUw1XEVxZ2HhHH6hOwyWDIQP/9cagw6iAWLQMpzM4zaAZA9boMPpH+fi2x7ACIVF
	 x8APkfBBjZK+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90C0C55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576803374.1894.3023417502663430763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc0b7e02a5f7d16e6db57081a8ad12d1d1a6b39e6701f5ba23273b393dbe59a
Date: Mon, 03 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785768033
