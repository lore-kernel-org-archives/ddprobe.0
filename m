Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3931E19AD70
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747664994; cv=none; b=P2Wlr+zJTbkjRP4LMCx6g0I5tX9XKQNgjv/P/PXt0RFZ88Q6ix+/xiIVHAyzGh4ccBJpzqE0Ia4AfLa9tlAGkQpN3QJryNyZf4W91HVXGRvrdlonPhS7Gq0kshXMp4cfYsDkT2YFyQOlf0QIfZryGQF67UzLg64uqjawImWCtgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747664994; c=relaxed/simple;
	bh=jEMz6XWVPRWD4inQW1YnTwHYDOypsi3z+1VZRFLKD+8=;
	h=To:Subject:From:Message-Id:Date; b=hmBRxS64zLFV6bD13dtWKSHCICNEaTNyYd13niDbV9qPf/vIQ4qAVRZ7NMavoLOFyvZWlfwtljl+OzXAaPLB/72Rfii1dXAN+r0rYr5whaDNYJ09tfxbtPZ/P1nsPqYIQvtVVR4Bub8ljJcJ5sF9GbUTDqyJQ9OwThK9MQ1lOno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vACBg7iT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vACBg7iT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747664993;
	bh=jEMz6XWVPRWD4inQW1YnTwHYDOypsi3z+1VZRFLKD+8=;
	h=To:Subject:From:Date:From;
	b=vACBg7iT5qgjZEL9JsZv7KCNZgfzE0MRrm/llNB2Y0b5c+yLvHxIikvfbRMXq9Md5
	 TCS+Q0112lZFamj4RItNSijDi9JDwEu1lB3QvE1Ifeoh+DwvOd5FaZApoAq1SsxLGe
	 P9WyP+swPd/QOAh/haLO9EP7BawYghww7lu4ptqk6KdqckN/Tms7WQPUXHqj0Y30pA
	 3Hy1TAsW1AmUZO9LO5H1EZi0WQnX3WTo/1bkQ7HuvvrRmxxl/B6YZfb2bkFcZjrw8C
	 mx0aC3MH2eDvIftDbZBGuXpoQRFwgua2a7drO0bz2tV6N6h/qyLiS63MVT6asvN9Na
	 OcGueTOr1DfeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95582C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766499358.423.16479362720646443094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678686398dfc6a17cb98c63b129544214b5cdbacb00401a3ef281575af385308
Date: Mon, 19 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747664993
