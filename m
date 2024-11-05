Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA24187347
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730778954; cv=none; b=eeSSNSbSm8KPD8kb6z96GK8tvixMcqQ98BQZpQ2ExiGhLor6qAPwON6lkY2BXgh3Bu66+Ah85DBeeoqhSYuc+vIQfcusGtjMnN1ke6yJ7FZuubEtk4oEhFT50tB+yMN+5T7pSSg7Tla0ZBoUeHnwQw6T81e+hLtVo7D4LqIiYrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730778954; c=relaxed/simple;
	bh=NsZ2ssrK4AIiJaiiFLvgZyUPDaTSq+msFf8hL1MAsk0=;
	h=To:Subject:From:Message-Id:Date; b=bmYtOWFwHFb8MFEh7ZR3lN5XjvK88cr6MhX6IzthQXzIAg9Tw+fT742x7Y+YXVyFLYGH8HDajz6U/F4d1m99v581/F5LDbxraz2p6gKCR+W91lL2RjDf2HbAobfaZrFWNkWArWg0u1acd8OFdP05WjYHP/Rkolmf6xh3tVRJGqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVSgFK+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVSgFK+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E6CC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730778953;
	bh=NsZ2ssrK4AIiJaiiFLvgZyUPDaTSq+msFf8hL1MAsk0=;
	h=To:Subject:From:Date:From;
	b=IVSgFK+BY3cTxeH/bxJIr4vKmvInnxGxyNg2qhxOnzrBhNVzKOmjHFBAa1BToFaEz
	 d0SquW5mpWsvDE4As1BWC1aajjlBCRrCu7WcUzKHMbbTF0J4X/E3Zj4+2pF+KSDxwk
	 maGDC1b16uf7J/oYCzZrQFajVaGlDOJaSn3tbHHEQsFiyEfyvNh7Ve3zf9avWmQPZ9
	 x9Eiedxmo++6AAPw9lJQKlnCSYNhSEbJC6s7NvA5278+vkoneL25foCntIJnsvd1JD
	 883QLtOUhspl8BqArZCwJf2WBF78FiiVpyLQqp6nTlkBiq4L+t9WZktoBvgz1O4lrV
	 5aS0HmYankzhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D94D1CA19
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173077895362.9291.3519082575368482028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19478f4f4a7073bdfdb8856be75e4ac1b6270439892739e3da8579081ea663bb
Date: Tue, 05 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730778953
