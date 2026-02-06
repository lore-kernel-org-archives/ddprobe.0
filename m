Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E433B5318
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770398034; cv=none; b=KR7fkvny00niYzCt8Rwp34PqkDzFGyWe8bizktWiQ5+Nd8U9Mtfk0jBog36cfUmNc8kdLOZud6yFyESfGxj+5Sl20tYXcEJ7Z/RihS51gPoybPYpOaJ3M+TcUpopSL0GWp1NTrb9YcsqgwC3H6yFaG/iKnNryDM9izsSEG+rMks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770398034; c=relaxed/simple;
	bh=FkPVYF9eSdNTH3X/Zy0Wo0Vm+/tIQ6JZZq/e0Kgs89Q=;
	h=To:Subject:From:Message-Id:Date; b=E2cyIjUG7OTcVNS38dahiHsapt8th7me8k9vThQysbHx1PLINupBno5hV/fLRGfhjDVBptlqYwqsB9Rm0+ZbRieHnBPbZUfPdQofRoqCYU5cZjepobYofHmEZOueS56l2o+0QVBh/TK0bj1ETO/LyyoUh3UAJmzUNXj/QXI4uiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgekAHDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgekAHDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A49C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770398033;
	bh=FkPVYF9eSdNTH3X/Zy0Wo0Vm+/tIQ6JZZq/e0Kgs89Q=;
	h=To:Subject:From:Date:From;
	b=ZgekAHDNK9fHZEuNJXc6edeXmEtWH2b1ylWPiw+twP3tQLKAjWTwC5UYtL4Wjn4Pc
	 V0yTK6haAeEeJfOg5TfBGt3zHIGnswcXn6hsmEVu6szhKzqFR108NaYpeNJYABJ1vZ
	 NnU8AwWF52KxABjlDRcJ+73kN/pssPpnsCYgRAALUk2u5iY4G9CEXAqL3ROQ+d2e2i
	 n1o2j5go5Q2fgrZE6YYT/ig0Mq0QtXqq4zLLen3xLXoCoZtr4BF7RCKwb5uFnobMat
	 5ZeKuUUUnPfzgyAzJpqsFg7FyZkiDZZVU1SoJ6PluKj1LiLS2eXMwFER/TD8MOsKB7
	 a4TEXGZ+Nmvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966F6EE20B9
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039803360.9615.4035316076527557437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bc86f3fff44b8ed3ca4ceb033d18e6e299602f0a2a7e4ffe47b0ac3b897cd8
Date: Fri, 06 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770398033
