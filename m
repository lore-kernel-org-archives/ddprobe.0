Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191002B9B9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769289234; cv=none; b=aXARWGfzZVXPFTv+kSMJLfPIteiS+K58ECsrjeHdnA0p0Pm3c7DqMvvtu1At0YB872WVZXIyi6GTqxib0f59FxsquFzV046y1bwllqIA1V+stHn5m8iJHs2PcYOfB+1p/m4wWGVojheRfwBtqGE351DH4eCqitrGjVVG/Jm4AUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769289234; c=relaxed/simple;
	bh=lx8gSm+SR5fYB0+ygjNxKTuGiCBJ3KhMjG/gCJQERDs=;
	h=To:Subject:From:Message-Id:Date; b=TYSRCtYfNBYDvA4i832VUQzZqFu2WN5mgO3WwQr5L7teNs+ZZsYLlW0XxjuKh70nBoimtPlV09ooPrDjhP8owQprtgjo4xETwZb4yeY5ohgV9bpie/nFRsllshCL4tmuOnZ/fRL8351r6JTFSqjCKwUAevxXp9+eGzEfpz8qvDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLtx5Dl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLtx5Dl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64BEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769289233;
	bh=lx8gSm+SR5fYB0+ygjNxKTuGiCBJ3KhMjG/gCJQERDs=;
	h=To:Subject:From:Date:From;
	b=vLtx5Dl3DvPKvnUK056AJfErnzWvfvrZC6uD3cZgBdLej54lEJrJGfu47PdkPYyGS
	 trHQAJKbvtEUS+lzx2SunkSKtC1AwPVJywUnR/slt3H5E0x/BQm3FUWkiKNu8mJ5+S
	 8A1KU5rB+446sI08F8D7i4W160doz9Y1gy4D6ljK78liRcjErr68qXxWdCPs0R9Fgo
	 0ff8t15cq31vP068KP7QAuccn0TnuN7chUN1HnQ0KHE2AvMuacSgZlqxG95bp6QCSs
	 RGJO5iTfBqsbvJ4Vp3hHs6VoPvZqukBtjnRSFrYevZMpXK6ofiVOfMF11cb5rOksga
	 OXs3pyo3fWIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952DCD715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928923357.8323.2283812976164211937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db4594ff1d3eb6c6e6617e90dbc066eef95dde096d41e8be0f3eb551bac5bd2
Date: Sat, 24 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769289233
