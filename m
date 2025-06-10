Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0134A32
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749590994; cv=none; b=aTGxJQ/DSLReI8iQH6NlP7vSKEay+CQ7NzbkoUYID0bXykg6KIXu7xJStiVsYP4J59u7lPC1uOlmkHhoMBWLLlBo79rpvVJoH8mrlQwCNlSAZW3YID+mlvlVA1qzqlKS09rPze2N+MVi576jjvjsBfNj2xQpoyqEL2+eIoQTKng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749590994; c=relaxed/simple;
	bh=9ZB7eN9kPdTJyGcHWTqkCm2tfFzvhUspNGJkFqXIelc=;
	h=To:Subject:From:Message-Id:Date; b=XvWNEnGP0C1kC4o5wXYws+p4l4hes4MZQFmRlSp9skdgwA6iAJee4Wv6ycYdXFUQnCVsvRfjXJjkoe8TTzandXXX5AOVLgrQAtG1hIXpW2rllwvtZOBr8O5RYGlKgw1eCEM3nw/cgQFpTXGeVFKS8Jo5x1r6LmlxUVt8qCq7Uqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxlDqHIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxlDqHIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F785C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749590993;
	bh=9ZB7eN9kPdTJyGcHWTqkCm2tfFzvhUspNGJkFqXIelc=;
	h=To:Subject:From:Date:From;
	b=VxlDqHIZaEWSg0reCGNLHFLHr8CZMiHlwxzj0ZuQvgIvFnP4MukYMOE/VlUTvFfiQ
	 bciGxQhNiFdCXNo4tkQDRVkL4zkcxNTDqyq5qBOHpefG+CZ99zPYjwGA7WI6aXRvji
	 TV1YBhyysJqnbjC2Yr1iIfT/16NoJ7mHwPtS4eyEJuonpIE+lJNQxJbR0+1ZVEgqtS
	 bkGm018FmZsuwekWnVGkRcLpvdTk/GGk7B4n6Mlie6CaI7WLJRMmFFe3ClqEHr8pYK
	 ormUQp4ywgLijuGtiupv2Cp0L4aODfjOb/YGW5siyEL7N8YZfMk2wwOzzmxd/BQxpq
	 HQUrecG2WVO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD5C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959099358.10034.18191272457902930066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0eb6f6e38fc042a322186e1baf3f8fdd09effb343d0382a63bf1f985987666
Date: Tue, 10 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749590993
