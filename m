Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9853B29B0
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717817243; cv=none; b=u93linuiGAY56oDkQ3FndzB48ftMoRqaGpAs9mzc3TH3SzuQ3uRzB8nibriG/q5D8m7y0lRJcUYWw6j74R8wTkC/8CiUPSdwedb+jbVs8WKFWAbUxVbjAL3OqTmJQ8Q/cWURkxuAStVybgQXA7Zo1TWBDL/LEOee8uAD3Qgsu6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717817243; c=relaxed/simple;
	bh=C5Grq9R8tJFl3fCB6If2AfxKVlYIZGu4d82woFfimM8=;
	h=To:Subject:From:Message-Id:Date; b=TQ85ANXQTgWP37EXxTdeDQiEVfCYiiOC5v5gQvqEeJLfOckvIqpUcR7cTpjnuQXCWIPawmhU9pAuJojKDVKnCzz0dDCWhZAASj3CJhbkSPJ1YDUM7DIZkjl2LNJ8C9PZJOMJoHypTosK2CF5m86psYg30bJu/R8QL9Dv9ccbL9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWQ8LH8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWQ8LH8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DB7DC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717817243;
	bh=C5Grq9R8tJFl3fCB6If2AfxKVlYIZGu4d82woFfimM8=;
	h=To:Subject:From:Date:From;
	b=WWQ8LH8T9ZfwbbR3YEXJzVp6VidPVQY8iNiM5f6wqC6eYGOJSMFSQ9AOe+dKc3nQS
	 c5HIxQRgGvsni8apfI1822J8c7TX1+XilsZQ64XHWg3MYOMhpYcOIxotNjwD3OVlRJ
	 beP3N0XKEHUwwQxanxHaIJDWH+BLirY0PamCLK/aTZflxs76nt2ci7BV7bo8LiMfhR
	 shJoJbyHN4MAE/RnXBCDNAu8jOQeF/tWxdvTDVbu4560iWwyCIKUTL17HArhzY2AaV
	 sdhJMwagjfmbZ5Mna+tpfvEngzvriOz9JpqCx8C5bHnGBmM7vUiaAvbk7DmNIdtd/v
	 uCcjXVIxcczoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE571C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781724286.18962.1829051785844948501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729264a7c949e3ff58d0c4f22e3144cf51b028187f662c207ec7d7a370348b78
Date: Sat, 08 Jun 2024 03:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717817242
