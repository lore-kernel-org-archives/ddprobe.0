Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDAF326927
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767591234; cv=none; b=eqfW5L3viHMzP8Ty1m+r1MTq7wZgoUXBjbTyFmxLVxxgw9idDO2jwT1EQjx4oS2/FKtZrI96MoUq2N/rjuBzkF1+XHKYkt+PK53teXcxusZm3BJHNIWpcQFSkrUuTJTBqQ7T4h58VoyeKLnJyzc7hdwFNRbG77xUhEqxpgSgAXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767591234; c=relaxed/simple;
	bh=QTiF/aOYYrUVbKQ4nr/rxsMTUpmgst+PaOrKK+7vxMk=;
	h=To:Subject:From:Message-Id:Date; b=duRwsx1+DFn4iz6S1kJtU6m/nBf/8eyQpsQFVI5bkw5updq+9tx/mTrh4HbcmjZ3wT5wu1WNTPYu2TIFgQSASQFn8IHT/o5B0EGl3Pj7RHMTIMYh4gfTmeDQXY3ANpBiciXwiKQBKWYb6YaR3ImDci7v/DclIhda0Omc3eaFwRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+IhlcdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+IhlcdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09B0C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767591233;
	bh=QTiF/aOYYrUVbKQ4nr/rxsMTUpmgst+PaOrKK+7vxMk=;
	h=To:Subject:From:Date:From;
	b=t+IhlcdFhpw7EZp1akVZUgMHdEpuHwN2oRcCuEyxpmYWYq+LRg9E2/NqMNWTb6esu
	 ecJRDPUE8K4a+CtXn1wbySnOS1ovOe/uOm63glX17kljcZ9/PXyT6a+3tnbq9/eEHH
	 XyVGtWn5nj6+frY9T0zN6GFM54bM0E3RaLGwdUn3gurd39fMdvgHB6HXYGK8TKaY/B
	 R/UvgkqYpALrfZEjBsouNH2vJgbs/79pevAgT3AD33udqwt2ib3drCkT1e3otyv+o+
	 F95S+SWnSWRjHsif7eYVmZ4PhpX3DNHQJQCJaFKj3aZqxoOev5rghhZfoSSznX9F1L
	 VxTa38Y/ASg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B6C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759123357.15173.4298904368345537659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636433ffc8ed0b9000ce23ff64231cc5327aadd8feeacb336f91772395611ca5
Date: Mon, 05 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767591233
