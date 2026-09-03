Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DB0388E55
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788411634; cv=none; b=Lb3a93d+FJQ3Jh4xj6ECX5qoY3Tp0+RREbUHyU+botuGXSw2N116h46OOzXyuzf4FxC9ZR/PNNAbr5cw1IdA+yx75VXp61sgmLj2An/iGbIhByshqA+l7+CUoWp7KgVaiE3kuZiDi9jb/WsAyIXYgD9SJfJReije6N7paMFRoHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788411634; c=relaxed/simple;
	bh=dtjGwXAGPzCWNTKokeXoQzR/7SCFd1X1L9QLEFegtwY=;
	h=To:Subject:From:Message-Id:Date; b=ewDPVd/gz9D0lAqk09nVkCvGyfwe1MhcVPWJprwQELlXmJucuv5rEQY8b/ealHINRH5ISvU4rPfccHbWw3Zg294fuPrYvWVp5fu+pZGzj8oNLKPv6AakhX4VPSr5auErG745BOl0ULOvJo32n/T5BNZBQqUXgGdwrm6hEdGaHJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfA3asit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfA3asit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD8FC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788411633;
	bh=dtjGwXAGPzCWNTKokeXoQzR/7SCFd1X1L9QLEFegtwY=;
	h=To:Subject:From:Date:From;
	b=XfA3asitfnYvqrqrUBwWjBOElUjxsXsjkwojCrR/e6zmrosQf6JUo9BNEDv+9fcoq
	 Wa9BwJ7gIShQ2z8I/bb8ArEmwXW+t8xHE0hJRnhlPPKblGohZ3Vl6W9NlFfNq9QWGw
	 T9WFqYEgp/qUOmxHrCXgXFSLM9rr2lFaojXETGLZr85uqL+MTdOuCcwCdeRAY8hYnZ
	 xqRLseES9c0/VZtEsmFbduLTDnylk/8NRYFxmqYhAjh70B1f/I0ODLsffOcAxcgQFe
	 5/pHEiW4Jc72oxMdbJn9UfOxB98wsoRSyoCjksMzD3L/HS6UtX4upT8tMKbU/Fdym9
	 99dDiQnOa70jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBBAC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841163369.15536.9212693997718033862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a0a4e204cff1191a60787ec4681aa960e0554844ebdcc2cd2d66561bc44374
Date: Thu, 03 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788411633
