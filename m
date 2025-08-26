Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19CC33A023
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756207794; cv=none; b=nXKmo3VReOTpaYJdrftY5TrG7f/J2A2FYLninoeUABnqfZ3Uc1SXTfIQFlu8BBqJWjMvGC5JRNq47gEPDFvSeHA/m1+oQ5wJ/J0fVpqwsOOzpvVGJ9B06pNMZtrAmVUKuq5H8DhdF9C8riQDUn/Ab9AZgfn0TOycbPuCKM9Wblw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756207794; c=relaxed/simple;
	bh=jX5bosZlvSeqUqf4zh7myCF8Sk7S70jjLUdzL+1jhBw=;
	h=To:Subject:From:Message-Id:Date; b=bSWFc1Wk1nB5oarchAXNB9RHz0pbNCkVDOEU0k5XngEMjr8rKnTNTXinyEzD93wV4QE2rgoOAfB76Ph8nrfzDe0w5Z9ZK5IHJmyTLUI94VleT4+0147Jl7uQzs0t1Mj3+oumvWer7a164+h4X0unJVSAaEWOcdcCvVSPSpEu3Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgxDO1+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgxDO1+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0767C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756207793;
	bh=jX5bosZlvSeqUqf4zh7myCF8Sk7S70jjLUdzL+1jhBw=;
	h=To:Subject:From:Date:From;
	b=OgxDO1+299HWtym4vnQZqpees7Ex0jj7NB72HsuAoM1n55EGAXgzvi6PNd93xoM7h
	 l5ljATCNWitS0aurPV1C18QgYw6/II4STRrJBiEIVMGDGwh7put+QZIZnX7RsiQ1X7
	 urxCIw9l5ZQ/C+U+0B7jNHdWDY74IBTNfNsNujG9+gEgH5qVu7KkJeZcG1c0G837AB
	 g7J1BBhw6FU9cEbyazDBhJQCVOmM/SlFR3kc6ZxB65PNyyHtAKowopt11zn/YCc+UR
	 ZWaqD+ChfNuTzDVNoHhVtEPCkANQCS1kYY7ri60d1BT2DUhaiHaBbNNKNPgSe9K54A
	 zPS51mQXVJLWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3947CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620779372.841.14591044300856793097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb2c29a436d7c7b1e9d08e50f7f3a14220a2d266e48db46b7daa41e4e65e4b8
Date: Tue, 26 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756207793
