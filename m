Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E111A316E
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751906394; cv=none; b=hP2JCqUgO19WPzZUF2VRn+6Rws3rYL/n9KXVkhZdQU0qijhKR6K1vt/SE+MtowHt9lJI0fyRrcq8HycLDzNGcyZJiv++gDQJlhNrnr87uKGvOpKu1EDNnWLEpJi0wCICRYB66j0E0m8VOylEU8V0oJRuZyy9mrRejJOEYyjU7Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751906394; c=relaxed/simple;
	bh=CBzHz1d3mXJkLwxlmVlFhnNn07Hawzqc07z70rA/oMk=;
	h=To:Subject:From:Message-Id:Date; b=kdk4Y9KC1KRACzFIoSpkj9+zbFPFsKUd7OCoWVuaApBGVV1Av0YIsRp/DtpyH3e77D2ZSdVz+e9BbzLWqU+BEX98aeMus/rjKpJBwaH3Ac8T8mMsKvZLLrP6XGaJRZKBfm9nYdbZDn377UrM+Cqq2ah8J5lWq7L43BHQTMjTejs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zeb1W4VB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zeb1W4VB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751906393;
	bh=CBzHz1d3mXJkLwxlmVlFhnNn07Hawzqc07z70rA/oMk=;
	h=To:Subject:From:Date:From;
	b=Zeb1W4VBsirvo7iHpnU/PiKmkj9IHziopfloMD0VDsfAaABbC7NRkoDiABWzS7BMv
	 ITqUpFT/BzNsc7fEpVx5mWaKKWRAYcemN0+ybBVXNIVrdhIlGXgpgYRz8rB/Kf8D5l
	 UO1ZhJfvM8TR93znl0jOJFcrnAvf5BLlONl9/L8we9Z/CmHNzqmZRp9okOdr3kFFHy
	 FZzuKxf94qmZgXO4rd7M9j7poAnaizZZ9j4Mr+BeFPU1jiDPILfnrNNYW3T49i7fyf
	 LD7/LMEIpWcCtvLeLDb49vtBSwuoFQ5LLbbBhwYMx7OwHQibysh+Ew7tGzl0Hs5P9B
	 e0DavkXlrfisA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB1C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190639358.27952.10683226723290260957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64754a83ccc107703d4371ca0a3fe7ca81a9a3d6eed8d640ede223c58967381b
Date: Mon, 07 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751906393
