Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534EF13790B
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792315234; cv=none; b=Ypt0tcdpyqIvFgyZtj/vWEZZUT2fePvVL5x1saqqfnyuPdrNykB7vKuvX5hfE6zQJ6+/zm2TAo1ymjg+3Nu9+w3kv8BzIpOy0sp+mc0DBqpBwF/nK656nCxCUnmWD1UqZ5cPFMCRGTDZVIbW5lz9pqtiOXUNaAon8vJJyQOijX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792315234; c=relaxed/simple;
	bh=Rili4TtlIfelrrUAGHSTZnOwPPFWtoktT1Q0ANQREPo=;
	h=To:Subject:From:Message-Id:Date; b=NAChUCCRbl6IgM/JY4BQFZAS8VDNOfHGs9R8i3UCrV8XhniNqBSbI3hiL+MZHCwAff0PVVQCK1vmTOF+6mJjTPPVbfALUZfNISXbkwTDuzudFOtMu586bJ/1rJsVweXgvc5L/ro09Jr9OYJ7Waxm9gFjjbQNL/eTLO954wicS00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLb+PKmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLb+PKmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F5FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792315233;
	bh=Rili4TtlIfelrrUAGHSTZnOwPPFWtoktT1Q0ANQREPo=;
	h=To:Subject:From:Date:From;
	b=TLb+PKmNLntBz76xmo/c1hiQscSeOw+eJGVY+FYXdzr9JvrH1VJ5D52hHDWxhEloq
	 ZOomYDGO5aADz6hfPnQ5wqbPzwsdydgqseyqRT3kT5d3K7k1Ayh0N6+30SHx6fcwo7
	 n1afkzm+nYPO3yvDObufHN+X9lmihnuygtRI9ah7XTTeb+jGjgAmuvQyK0jS95xpFN
	 H3mh5g0Qav1A9HcAgwrewkManv/U8RMFG8NPEZX8KeX4rAC085EE9SbV+uD3pCAZlS
	 0xhU5IX9/Pue9NaEQIBd7AKtqcFaCO5KcPgLdCwACSvtMU/+CFZJW8L5Jy8WX325qx
	 Q1XTQbEGtPIfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC30ECCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231523368.22263.9421349225683926520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3166afb1a08f38690b0bd87b4c69ee0f05c510aa520bf6cbde5db562418e90e5
Date: Sun, 18 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792315233
