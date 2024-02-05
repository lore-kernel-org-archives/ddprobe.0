Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154798F44
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707104897; cv=none; b=ih166lU1XpKDmy2hf2Uv/HaX9IYW7HuuEJre89VbrJA2Hkw5znoB4DY0o9Yj339/EONzaNAmoFV8DwV172Cvz8Y3dr7IFCN5Mfb8flZx7wXKe3cHQrbVMbMO5fUbtKZUf1YwHMnJ2XIpS2jxqQ052YJGoIxYoEUCz/eGKn9WCVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707104897; c=relaxed/simple;
	bh=oQv4ir+XTqHHMDjrOZa5bzjMrQrV/nU+jbaz4NvswaQ=;
	h=To:Subject:From:Message-Id:Date; b=dpzpa5yN+UDigkolevH4YPFYDCTwAhJJHafoWzD9Gd77WKQXyfw3NbG9m+rLeejKBM9ScapXets9KrW5tc+MC424YUl+HEdcAC+XvUQXoqzv24Ij8+cG+Ls5Fmaj8Xlf/B61heJmgWeFUI0lMyevW77Qsx2LoTI4Iz/ea24CH1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prBAOgDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prBAOgDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE82C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707104896;
	bh=oQv4ir+XTqHHMDjrOZa5bzjMrQrV/nU+jbaz4NvswaQ=;
	h=To:Subject:From:Date:From;
	b=prBAOgDj6+cuK4A9IqpkuZV1gNTUjV/QGWSFAyOB4onQc6VHIQfCZNX3YdYPEi1uT
	 IlEGhFerVjTTRQ005YGD1L7czlPKhBZCEWrk2QXRwSPQ8qSJVTkwuLHW0ATkd7QS2o
	 hYMyZ6t/6TMtCgqR/HiatqK5mFV9bQw7WPPqlVU4mC9jVKcnARz9X9XQnFMjforeD4
	 auVB0RXbapPR/o+ihsioZj89PDz3e010b9l49Di/XujZjmFUY4OJl5Yyl79f0bJ7Hu
	 DAgMSwXfRhxGB3fRAYWu5iP2I1ztbmGWqOlYgCrdBY7ZuTBaRv9OoCG2q7v9lRs4dp
	 +pG/DSYD3cSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CD1C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170710489639.4108.9620399140027181288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c95ef4c6a6cb489f2cf58c99e985b747d9276cfb49d04744a21b324a2b34a0
Date: Mon, 05 Feb 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707104896
