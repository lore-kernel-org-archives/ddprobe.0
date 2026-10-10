Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615B7231829
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791610234; cv=none; b=ujQPXz7t0npBwQDlvTUErLUT9E7zDEnu32YXanYijcJZDVtgtJfR5gEw36vGRyk/vtCTZgPKkbAia1vGMjDNiB/RBlf+rwPG7FYX3F70W0Gc1bBH9Fu36apHb6cLbE6SFInGrTokPXQ2maxed0ihoA8hyK8W4v+jMcwttIgzuDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791610234; c=relaxed/simple;
	bh=zAqyzUkuIVxDspQheyZEqf2nRDSF0/9Mp8X0WlSC1qs=;
	h=To:Subject:From:Message-Id:Date; b=N/31SP1o1Uffvo7lZZJUMbwdBnLyEzpfPsrih33GTUDCAygg/X8uWAgaC0wmtYTp2EYumNa6AOpzeZ51xuUnYRg0+VNYPwFuEqVwuNSVwniwjKW0mydAveJ/le9GYfCR93aYRiZTQOFG7YVO+qXQ1MvAhB7xfP09lGZ7yoV6NUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaldUoE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaldUoE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A87C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791610233;
	bh=zAqyzUkuIVxDspQheyZEqf2nRDSF0/9Mp8X0WlSC1qs=;
	h=To:Subject:From:Date:From;
	b=UaldUoE4eS4zMisO/80uS3Dp6OPBA0t6f9TL/y/P6bqTUV8r/bMy5rB8bgkoLaUtl
	 M4um0RINbAD6WYYYiQpqE6ShKhq7fetatT3xyNkmkYyHwUgXWPoGK4uVYwyb04t5UX
	 f2gsGUE1cwI8vkxbCNSg12UM3wk1tlci0Nk+olpXeT531nGLkWpC66YXn2kgdPfZBH
	 XJBugepideU77glCAPlG14Lv70xMzkazagD0QhsM8pczAyRNpUu/DaLS2yVSrzM569
	 I/EDdFuFffnDC8QZ00DbQ3ZkZHdwlYRF496zQ4zUNAk+Q2k7QlFd9tcqxXqT+Bl5vy
	 jFsIe9ZT3vg1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6EDCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161023369.9370.2490758952406607744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ee3b437c4621f74b1cbb5e2a3c659d669a61e40862f6f646ee8c5bfb1c1dee
Date: Sat, 10 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791610233
