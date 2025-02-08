Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D9C194C8B
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739042754; cv=none; b=gmb7zmiEe5LEX2g/V/wgQbywyMb4RDF7EuKS4paHPFjBjFMuKxjTXB/iOxsN2SGdzd7wnX8LTTsTtXLM4DdIgtnUn/dA1F6nGrqJycVqktfKPO2oCcVF1w7/ebFjn0Km5wDCrfKiV8ziV8IPSuaaJlgif9xnHnCzneK3F+NjGnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739042754; c=relaxed/simple;
	bh=SlI+rnuVFIZkGFRF77mlmz+8i3yrDrw4bt4hbwT0m3w=;
	h=To:Subject:From:Message-Id:Date; b=tqz0LPLCCXerZr2TrJblNMiksGF5bW8A7atLjWnaHbbdDpJbgybbDVNow7pb1ItQ3q97LCiqZIuvSoTkI9016dTLR8j9ymi0WwMeKV+/DR32Qp2WrQJGpBq2DpRAfzBIq0a0VqZXgLekASoY2BaYDd1S10jVKl7o9Uhnmi9dxYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIcEK5LH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIcEK5LH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B602FC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739042753;
	bh=SlI+rnuVFIZkGFRF77mlmz+8i3yrDrw4bt4hbwT0m3w=;
	h=To:Subject:From:Date:From;
	b=MIcEK5LHgzjusMplgq7b03pgrZaElJkkqEaA19k4DPncd8JPcd1vyTkLeQ907o+MH
	 LzqoU3JRRaRYNm4t8NRQdIRnM82lEbI9uOUFICqY2LVwpXG3kNzuZ1l0tBZ/jUzeVV
	 G/VxDuqvEjtcYHQOqSZSTrwOKjV+lUfDqJEzoxy2wRa/wN0gCobkTyeQq3Vn8ewwhD
	 1VHk4W6jKaIzdfT9YG4oOWsQxsV0jcE5PfuiQmK/jQzWxhf0D9DqfNg0bAVWBMCXuX
	 Vh1lzF4/zMFDPd/b9f1u3z4NWbvrZy10yRQkl0a9PnBewtB9a3EBh5kvRl4YXMGfl0
	 sql9KW/3cuO5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B8C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904275359.7201.16889396273382806074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4962fef20e02472f05e271a22f5f00517d0121b0180ad48a4f14b40fe5f9ae30
Date: Sat, 08 Feb 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739042753
