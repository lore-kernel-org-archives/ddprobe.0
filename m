Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AF42550BA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761974394; cv=none; b=VRiLSOT1OKIXanjhJLL510/pDHhkYBkmbojb1u2jtZ56bxtYfhuy70DY7hIUmf77fZ/7mG9lomdaCt+FXBjAHAGAy1XpBdZ8P5G0nLlRwGjHYZu7xcWMcbnSw3nw1RP1o9ZjQsd4PfCF62KQ1gON1PzxNntNwzVYAnDdVJkuX1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761974394; c=relaxed/simple;
	bh=wgUFk/E7q9tIOxxEgI3cp7beXdgXvNEg/Wbjp2dI460=;
	h=To:Subject:From:Message-Id:Date; b=b2+udGlk3kA7MlqtvOtHZIoXzNfaFX6C02qGPqeaVhK+sz6u3qui1/UbMHKm3FgVp0LoqN4uDG+iVgwmgeUWEvzmk1Y63hgvBeoGph3eeMSKCkhKFo1izCZhcN0Y6+Hx1NaLeoUwMCoc+XOX6ght7820m8m8qTUKHfLRT7PI1bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnI/+k/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnI/+k/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761974393;
	bh=wgUFk/E7q9tIOxxEgI3cp7beXdgXvNEg/Wbjp2dI460=;
	h=To:Subject:From:Date:From;
	b=VnI/+k/PLLqnUQ5H3rlk5kZVFFYaaRj8AOIReZsL5pg21XsBCkqlrQ4dnCmw55ldN
	 zXqOzgE0+hiubMiaobd15p3ke3tUwEPUTHrRtKbG5QPWMyz8rSdiRX6DMp2AJqkoZW
	 oHSlgcmR1NZuMDRCTvwjv33N4OW1Roxl2yn7AksHmv6Hc6AVbUT2f+gDjBJvERUeYm
	 FAkqe7vJNA6RK+6nOg0G/rsucpOaEGtHRKkgL9+Y6pWDqpxqcsayqfyWpZO0VLdgqB
	 QQkll/pxIP7u3OyT/w6uaegTghMoaK9fA08GewDetZtteAofoIzL3f3SMcVS1xKe+Q
	 wR6VuP4LP+lNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EECCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197439358.19529.380703425189855565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa71f3ada8d9c75ce05e254f3bab857a1054f335ac609b1692c9e5058bffec6f
Date: Sat, 01 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761974393
