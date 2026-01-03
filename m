Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAD413AF2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767423233; cv=none; b=nrwWWHfVeZW7Ob+WfMEPfCIx6IQw3jzEXBmBbsgafowR3k7sDXkxtda+0zdubIXCc8aMmpTtCu3lZBf2NMxfuqlX6M/pq7cMzWb2gFz/atH5JfmLQQWoqpNb998Xj1fDh+EUKc7yfiG5TnzPuXDrCP0I+MRfNRSVBNV8lGmfJUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767423233; c=relaxed/simple;
	bh=uCLiY0D21F5SzBMX8hMEXyzH091jW2EtvSWD/UvD3YI=;
	h=To:Subject:From:Message-Id:Date; b=CnXfj4Q/uDA6zn1Vr4C5iwiBigB8JF/HV2rxBVEnx7xdfUBbXn6QZEZSZx+5mT6Dv6ywvLMaed5l1TPeashYOXWYCP/gnapbzzRY+LMAtRAHD1RxPzxG6GxU/0ostnDy56cvaEgd7Rq5cQOmFhmKZsJnYb6VSolRjETpv1UiWaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMb0gaRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMb0gaRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8C8C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767423233;
	bh=uCLiY0D21F5SzBMX8hMEXyzH091jW2EtvSWD/UvD3YI=;
	h=To:Subject:From:Date:From;
	b=fMb0gaRMdQ9zPQAGKfHMCFXBfE/cHP31jVKW6qbu+ZTO7jB7EzcwjskxpqyvzbPck
	 WKq0Tq5wm2T5XMf+3ecjm1i+3heNA8caONzWsZgNVR8wykEJR2KROeaMOUAtobkgIG
	 demNndX97t1wgsUAlv/sWz0Prb8T5tcrCCZxEH3Kbl5Mgk0qsbrmCo0CYtJWSg5Kjn
	 ScQAlYjtf5eXZVb1PddREF/y6puHTaAHZYzOcCmwCGdpwc6A/wd3he20QyfmIZoqxg
	 RDnRxhPWbJhJE+MH9LuBBJmmLvdaRcRm9tPZlO3bzJM04FHvW5AdBz7Nuc1HtR7F5v
	 s33BpLzZKxK/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FC0FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742323357.15517.6938726970265427057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd978a221d93b5afe0c595d14d7e3ce526dbef87a7ec5945435d3bc72cf55a43
Date: Sat, 03 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767423233
