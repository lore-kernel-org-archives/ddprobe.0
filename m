Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216D11BC3F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759558794; cv=none; b=koQGA2lWcTsdXl+jy4jfEOdQUTg5DW7sLdxrY3X5URBArhO7TOOH5AXKf94Vqr89nAuFPPVWr3YJQLUB8TypjvKInoAcNv+FwJ5WsKDTEWkGhJo8pRSIA5VaGYgaCxJD35BMtmbwV+ilUjccOTKIqcT0nimGXv74iEbX6n6hf10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759558794; c=relaxed/simple;
	bh=oW345KpLGa5LTJUPL5HU2lHADN9jWYUHAUndSeDJu8Q=;
	h=To:Subject:From:Message-Id:Date; b=omuNtSFdLEqKxTOkSprjCU8IylS1V9HfRZjMotU1yj5oUQaXAJ2viGdDocPaS93rG15Z7+HAbW+M0Wh9s52MzNXry3EoGICXpEGoqtWNCMBXnIZrW3/kKzoAltiDUvop8dZ5aeRS15JJ6LgjdX8y5SLEfOTrpsuIGqchdbOd7z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr2rwE/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr2rwE/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759558793;
	bh=oW345KpLGa5LTJUPL5HU2lHADN9jWYUHAUndSeDJu8Q=;
	h=To:Subject:From:Date:From;
	b=mr2rwE/LDLiQ7/1vgQpxaJBcsveE4Uh0/wOom6aNRxeYLVZe4wzM29Eg55samrrw5
	 TPLcbQGSYU89rVJJYmyTT63tTOQsuL8BUwI8B56ZaT/Lm+vbU4Jw9y5bQlb8OhnnB2
	 Y1WnhlvDoDP1tfz+SUSEaLfQEE0Lc+z3CcvgkxY+Ta8ePI3jyImCb84+fEEcyFLMY/
	 8oqiQZN8gXYU6cdmJIk2BRb1COdicsh92EwZwxoLF443iT7ni/mLteudvCWpp9ioYv
	 5sa6AxDcnPWnK74v0hRln8GozreHR7/9h7v3AfMzA2LmyROFo4E97+eeCvaJkYANbS
	 2xcNKcshgAbjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD0CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955879357.30660.17764344730653032494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5263bd38dfab9ce581ea3a7de4239419ec54fd27fe34d36c2e24fbce87c73837
Date: Sat, 04 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759558793
