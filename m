Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1148B2E63C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771749294; cv=none; b=s9w1oopT93XoAkOiQ+jNazBoOdnLHBPEBfKEf60OHwZrwivIgNoZQX1A5pamiTmrwM+6DFJTh5dkXdLnap2PuyqEOb+jau1Z+3ajQCRwxqvZZ3sGiAvqRFPtJZG3GP3KsuH8FRNSLU6s/47ZtOpsbpZ5YRaL57WcNJB3MDvzAsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771749294; c=relaxed/simple;
	bh=e3/M7hR/lUqFAvbOMC+yDKsmjF96Nj8WcCx5/yeS07s=;
	h=To:Subject:From:Message-Id:Date; b=fqbzBr7qs87jvp2I1O2jQIdXGspUJSnx5YlVFpUdiFMrQTuWxARwB0t6SfdZCWd5aK3FmbrP+oNLnd/CElFAod9Ze5XHVSEdMDHs3c8pMhc0x3cOrkWXTdDvHsBgCr4IDEOJplS9KCsBX1tIdD0NDe7Fp3ovq9tNmFT5sj8x+Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acR5BU3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acR5BU3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D43C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771749293;
	bh=e3/M7hR/lUqFAvbOMC+yDKsmjF96Nj8WcCx5/yeS07s=;
	h=To:Subject:From:Date:From;
	b=acR5BU3+lbt0FaNiALqlQg7iLH4UTVub1u5j5GAnnIfvX71vzwejok/p9a1sJR/3c
	 V43yQxCkP/bOm9MjtACPOwVuJQHK/DpEZDQMem8NP9wBTC38rbbMmUxs9ZjQ7eQARI
	 Y5D3NfyTu2s7QKBJwX5bJbh5WEGBsC2oDAxUt8k04MJKDqbZss89JyxXAAZq3mjwX+
	 /R9UhvR5lgngmilCLKZz3PnK5MEbGewhMY4Lmy9nsxXhy48NA1K2d4GsVeQA3OQD++
	 3uKBxZLxH2itiTA9v3zjPupBnj5gMxPA8Br4Ga81QbacbI/QkxKJUFTq1hKpMy0DtA
	 N3sKz++aJ6ygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C9C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174929359.14367.8700303222526633667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4848e145d23c9d2b943b58d328e72b8a3d3650bc01d35097e9f8e4ecf009d03d
Date: Sun, 22 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771749293
