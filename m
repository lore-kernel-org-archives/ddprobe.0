Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022F12264D6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774833294; cv=none; b=gIUQkRoPAt48d7iD1ss0Plehrs5oD1725LTSx+K23lcvygCJ8Zez8OpdVBURmaGXxM5vSsU78ska/aDeIKNL60miZwudFTXVCf5vhUxjEZ628FIUahvELODJVHRwsEJ/5EKS+ONjwAsGcFsphoYLixKP+cGR52kHTVXvsvPzHFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774833294; c=relaxed/simple;
	bh=Uznhnoc8neZ9aNGFtADcyZzweVpFs8jz5BV7gWOLKC4=;
	h=To:Subject:From:Message-Id:Date; b=qtKeHu2nHwN4tAZ9zEZ4r1U4cL9DmReVZAfJQnbaxntc8GFRLQ5mErLiHjTwnJwBHqZJfJPzSINPHDHl1pU8x1lzj87PI5O3QG7sPgPgdPosqnZEgy8tBuO9tEYfHcgfQJzxbRTc/KD7tBZnsmUAw93ctO/9aPtF5OzoOwuTt5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRzh9Csu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRzh9Csu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D3BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774833293;
	bh=Uznhnoc8neZ9aNGFtADcyZzweVpFs8jz5BV7gWOLKC4=;
	h=To:Subject:From:Date:From;
	b=IRzh9Csutwt0UHV18xrfbNT66h25wUteeku45+dQP/oQi3XF5qQHbOQqHYIjoEgFV
	 oJQzIRDxpe4gaUYFtXZ4n40pNvun7hBiAAzIo7owgMlNp3DCojOQunEXn+0VpFtv7E
	 MnKNwF9DooFCClziPNyaDL/9AxxSWkomjPpKx98R3yJ6VjpT7E+TmkJMXkcCedA8QE
	 8w/74vc7MQ3L3rOj7ARREJMPEQ6nwXNhIxScWIvuK78Opu5IFOjKCc1c9Fe2/dyoc+
	 37spG9l7F0EuuMJiMWa/FMt+59oe3qq/+L5ZVvbE4ql0VITdaVI5FaO+gAtKySmFl0
	 YR1e7fE5KJrOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABCFF492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483329358.6379.1540636189317824139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976033c7b55607bfe42fa251b5102907e8b9ff3b53cdd5e437899e5126b0d587
Date: Mon, 30 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774833293
