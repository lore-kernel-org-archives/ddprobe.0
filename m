Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5887A23A564
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789805434; cv=none; b=D4ZV2vE/XM937+8bqmLWreVlv6qlUQCUlnLGPJdkKYWCkPOo8kVp8xObvBIQM2/w/9K53cMKvvoWomlr/WLWt0m1pJs9jb8hn3lPVkI6xydr2zvWhqp2uIsZiWW853/bt6ddLgSWEepEUIHx0hdh1OzksAZOrms3IUnFOU2eRPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789805434; c=relaxed/simple;
	bh=4P5CEk6k1UkWhpTUL2xUc2MrAJ75I3WOIGim9KbN9N8=;
	h=To:Subject:From:Message-Id:Date; b=mo5LUDH6kiluqF9/z+Wy4GGGdbt7V1NEZZYLPp3KDdAFlOBchaJ/rb22BVHFIQxUJb0/gFzTrTfgkCjznZjD9zRnZ9Wn+O4rHIXbBKGUb7aqZwi9mqInoYT9thDXTWoXAY8fYmk9RO6Lor5Q5eQV46pKUg+7eUotA5hxlM/O1Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsPvcqYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsPvcqYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D326AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789805433;
	bh=4P5CEk6k1UkWhpTUL2xUc2MrAJ75I3WOIGim9KbN9N8=;
	h=To:Subject:From:Date:From;
	b=jsPvcqYK9CNwQ5DSOE64QWiopP5aXWJeJzHtQJerE9zpTMRLbgYQKrHIS5HsvE8oq
	 nN98KwN4r+b+rzS+6N7QyTjofqQn/DgayVC8P3AZqQIDTYHtLb04uYyf83GoF4EgFY
	 SUFtnwU6lzkaZHBFylGDZfAyllL3PeecChpNlQEL4eAttjwFRslMMad5d09eFZMUm/
	 uLowl8VncGbXAnPjnxakopyb17qwZ/Vl00lngB7LQ/6ax4NjeQrqJU6ovrw0ZovPkK
	 SZd/WjT0iXWD3Eou26DdclSD628eFKRmSDwHP7YILTAH2GJm3yET5k9ZRmF5h0CPJG
	 l+2FkDCv//csQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFABFC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980543368.10581.7896496871113408489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0392b22c74c5dd33d5b850094be778b8419fc85ba84a828ba168990de471a60c
Date: Sat, 19 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789805433
