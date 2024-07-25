Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD744687
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721867754; cv=none; b=oUxAzBiEQBGwjH4Mxpt4lc7hgK1hfZlKFObDvFhjZIH87NCFbIWPNjmtJOx7Htkv406uhvwOWIvndo9MuBILixx2H6VA1N65YMXmWaS7U/WXYO3h9k9Oz8cRtZgIQhRChWvJRR5mcXqlC6IwzUKUKB0myg9hUoy21TUbNznbx2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721867754; c=relaxed/simple;
	bh=569ASd1Jf1YqUpWQ3BqJ8PSaBn5afU933fBAOh8inh8=;
	h=To:Subject:From:Message-Id:Date; b=SBUEjBJxrThHCcRy5qkx8s53n5+Ndkc9bLl0wAE8soL+NxjJk+ezbWgUPvCNxSPPM4FYanjIlXNAgco67vTDYzSjoHkQqSXJtDQHHYTiWNyuI5ISz64rSX36v1VBe9XxG5j1m6kfmUl6wWSR7x8mYhZZQtsny9WrfivNCxEAKYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp/rjH4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp/rjH4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF428C32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721867753;
	bh=569ASd1Jf1YqUpWQ3BqJ8PSaBn5afU933fBAOh8inh8=;
	h=To:Subject:From:Date:From;
	b=mp/rjH4O4qhbdDhpEAwtGdZbOFkoBIoB64pwCte1XWp00t9xexlXE0Fk6csa1Qkq3
	 ADFBj21LdP35/XrCOeIjawW/9j5FCRHC/AtXzX/9yrkBV8O1+uA2LZF3KBVAC/lnnS
	 xusJAsuyGwn9S2QppnyhNrjlFhDqFBXv1g/NqomOjWdUf7YxckG/72C3SHv6YQDREU
	 nCNbzTV+wdCoWsJHLZo4TJIxSX2xtDVyRYSwYwLToqdVJNE5zNeCktTyuh90OOLhh5
	 LuZGTXCCHvPolqQa9J95yn5F+Rl0YwJZgumRxc+Mj5MvjgTPUAoBsC5IinGcmgP+8j
	 7yPfLAAEyzOjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F5DC3DA61
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186775358.8350.2377941243882698072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a11a4c31ddfc04f64366186a240f43a23c82131119ec385c907ad97e68bd97e
Date: Thu, 25 Jul 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721867753
