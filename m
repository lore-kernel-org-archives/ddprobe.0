Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318973242BD
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790215834; cv=none; b=j66j+q0eL+j/UfzfdCLhE3wO+SjP4BXCW7tjzgHt+GB1qpKQa/+Fd6qkpMgu+aUms2eRTvS+HXjen2rh8ojhnGggcP3ADbsut5r9WBy5W0ZlpBTkUCjWl3mySbXugiRG5UHPvY+Wd3JzHm8XtHNJlnn3AaRxxte9ELEUdxERllE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790215834; c=relaxed/simple;
	bh=aYsCVMv88HfvFTjOong5P0PS+FVGUzsc78MU6kPPU28=;
	h=To:Subject:From:Message-Id:Date; b=SY9fTs2kBQ/6XDg44HuGHbm/DB/UQFQnUDjkSMDMiXP/sNtcJFwhywCnYzf/tkZyKP+o/KLM4Hs9SKU7mkn1SGP8yTXaPG125eBQ4MIvtsJJ1+/pf/MSrXojovwF6x0pnp7YN35wqW5M17IL5zpjXAUczo7rtfn9jqmnBfkfVlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyWMZifp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyWMZifp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC589C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790215833;
	bh=aYsCVMv88HfvFTjOong5P0PS+FVGUzsc78MU6kPPU28=;
	h=To:Subject:From:Date:From;
	b=pyWMZifpbImG1j/JZWsGAn5rrsv7AqIsx32vTZdKhsrkgmxjrKLvkVbOuUPphVddT
	 NdJevH3gfcGzKj33VLGwwAo/KnvSGgovwyoRazbfFAH+k0PddrUt/8xb40HcoMIpE7
	 iCkchbHQop0KxXYnCV5M+WROeVSd+/leWSYI7KaJ+k0rMxuije+uDDx/iFNR4Z6J/k
	 4Pc7l8rwqBSr1xmA9RjnnD3jDg3LroQPCNSxaj7su7qoHIBVz6j0tL6RzuUKtPGcY8
	 d6bXlhku7rCDpA5N2cdArR6fr1k8NLHXWkzRwvOYLT5UJZ+ua7t7JZGgzmMrpw6f9x
	 dWiLk1b+0dwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF81AC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021583369.30354.14131732614852047912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4831e8ffccd89a141c024d8f9c61437b983d598f9c47442bc9901f3c1d7a22
Date: Thu, 24 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790215833
