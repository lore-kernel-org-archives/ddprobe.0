Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB7218BC3B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769646834; cv=none; b=CAQc3fBbXPFHTuocoPggFbrqBgx8rBkVWw/4MrPeZyrxjYz3uw1yOgW/0IfKTbesJCWpijYaIUIyCLJsudujqnwnqqoF5LYDH6/eZyjCcCth+JiDqpNC3OcFUVPtnlTN3bUOlc8G4YLLJlfp2Ym01sbrN8AS4kL6YiD9G+Oo+yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769646834; c=relaxed/simple;
	bh=clzGfkIXacByTI/kuQsYPiuCtfUmdshGJn/IC6VN0uA=;
	h=To:Subject:From:Message-Id:Date; b=CjPKWNkLjDgDvhX7oHEmF6ZmMoFAwWQeIb0Y5XbR7myVNZ5G38xGCjS+cvgedfpP2sDxa7LLpwhgIiDfO4G6UqdrRZeyYLADZHpGmCxDgm2OuVCu3Mhv93FEC8HqmXMvnFzHjSwEXyZ2axlsLrWCzWRVdNBlEfzcwq4iXubno50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyEJT87o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyEJT87o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769646833;
	bh=clzGfkIXacByTI/kuQsYPiuCtfUmdshGJn/IC6VN0uA=;
	h=To:Subject:From:Date:From;
	b=XyEJT87oQ46eBz6oqG4pCmwZvlMliZlx1mPfYQjpReeyoysWAuFI431b9xWOfSJLX
	 Y08rrBRv7WPumoMtAkGPEnmQB5IUci+NNTeGW8klEogx0fYeR8SuHHwi3i3XGJRna4
	 TZ+ESC0l52DWXexJiiybEN7nQ/aT5+UZqrKxPNJJZCyfLKx3ephyCeeNZI8PUAI4pa
	 xQNoWabFz0Qq4xanwenbxoVkUEW4zFUO63A8++NCpAt86McqLsGazjLXKDDYNqTPFl
	 n9La42bT5Rr6Qm9dhFfuK12mW4x/lQRmwNtF4htC6skCV7AuMXUQ6PLPHuFt5fOZR8
	 QjzazJNauX8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95673D46BED
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964683357.18422.10498040701977602741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b605bed69836fdc4b1799db078bfebf6255ec50b433a2a2d8620f230b8560e8
Date: Thu, 29 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769646833
