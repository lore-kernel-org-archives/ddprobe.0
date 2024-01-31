Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24466657AB
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706689697; cv=none; b=Zg3Wj7kQcFCYmjbETgP60wA4vk15oPtMg9FAwWevDTNzyOTkyYezTKXNRcLg50k6yX49p+kQ/n3dwQqn9g1ZqSN6bpb8IK4+wd+ZXn5KftxL+h3Y0PEGOzPIasxsQfqQCuT3l9RZeQFzOG2mQpYfV0znB+FTTwO1JNTFW7tu2qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706689697; c=relaxed/simple;
	bh=RyoDAdAsZ6EIUZfy+2op/2w8Fl/Qex3/Ou7k3iSrudg=;
	h=To:Subject:From:Message-Id:Date; b=NTbF2moODHcu+PBmWh0VBK+dwhcvoXC6EFlfCPrqqlwkfvIBDXL5WJAmTcRAwLzWcjZ3lQolQVv7/eJknCMLIHMsFw8c1Hg8/k/dew8vcmJdaZF75uj2e0PUIvNhz4GyVsJ0u/37hfPtKg5qftlsVHTE+PdS6MgbRI+dPP3QmL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAcB3f+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAcB3f+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8308EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706689696;
	bh=RyoDAdAsZ6EIUZfy+2op/2w8Fl/Qex3/Ou7k3iSrudg=;
	h=To:Subject:From:Date:From;
	b=cAcB3f+g5oGi2wAL2nltCucUiQAVqpu5KynnBI9SFZCoqn6tSC1uPXJG6R9S/lYOK
	 ZL7TEGU/F9og0qlx6v+KDmWbodtShgZGMt/oKA4FNgG9fZ/iMSmWznat+eJBXRuT6J
	 gnP2fMMFA1dvf/8R7lp877RNpdiPFsl6VHWStA24klzpOpILHbm78+9nhV47uJtkDy
	 yHKzU52GleC+G8By8l6Cid+frDYNJMNYFUovlgwr5ALCpjI4m4pvF00HDwNUNIw5dQ
	 UyykwkkUKqwenhFmzsYDr2rYpk8AxTZvEQvs0c7jAKK5Xr+yz+McLUG8/tIkn/gMz5
	 qnqQegmTJgsqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659D9C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170668969640.30040.10625079965831326415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40aeed2df5fa0ea833da3a682bb4c896ec16c3c12666266108aa1b5f52e1820c
Date: Wed, 31 Jan 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706689696
