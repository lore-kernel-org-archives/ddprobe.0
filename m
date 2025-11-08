Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288D11A23AC
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762626594; cv=none; b=Fzmrx7yBfkwcCU/4oFcfj7REhHHQquz1KFq2KnDrBLIRQlEAB4aaAK3pTfMoVKFb4nfXMP8q5QBq9XyZcMw49W1QilO1Tlrn/UCkg6qf1/hIhi31Gdc9ekwPNydTS7xq5Q26JcL6nnClpnUdkwPQDfy/JHP/5GiO6jFDnwTf06E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762626594; c=relaxed/simple;
	bh=Ot2AxFYcO/pw5TpagATVpjLRQ2okLyoArInWRImKm1c=;
	h=To:Subject:From:Message-Id:Date; b=VCN6YIdN0+c6cMX3cP6r/MVuZG5rrP0ZwvlELBUUZOWZJMJo0KZoC77p1XBj+72r87E2E2hPsoyDl6WVsfEVOr2JYlU8lHo6XWxPlA3okHOSK6e5C8z9IrgsQgYO8McLIYPXxOttbMju2QWUwMqkyoozOADo1ITcRNvU+IdAYqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9oezfPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9oezfPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C61C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762626593;
	bh=Ot2AxFYcO/pw5TpagATVpjLRQ2okLyoArInWRImKm1c=;
	h=To:Subject:From:Date:From;
	b=P9oezfPNwT6Z1n8qkpwyUNYsDb9aTXpY6XK6JxYPAcH2KTi0i4ZT4vSZtFKYQ+7WA
	 CI5eP1BSoEaCCByu4JJVKc7D9wXR+N+psgs2QWU6RfFSvmD0nGRw3Kea+vOhDr0dhU
	 wiCTUqa1EH22ygtut4MkKaTNhSvkLsf9tle2R/bW99hZWkd/eTrood+4NxTvUuYY2S
	 aihqF/bOzqosjisWKl/9HYgDzqsQsw6UkHp0f1mBABVizIPGsFFIwtUgoal24NJo1O
	 FtI6OBz+ccnuNTj1WHDbWI+T/SI/HHjQ3z0yy9KLcymJf53cQ0gEkF161yVQcDVTqF
	 v5WvxF5FDAkLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977AFCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262659358.13103.3348133823636858296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e125a393e45ed7313c6df5bca0701794ebe2e937e25aed57ddc58c5ff2f057d5
Date: Sat, 08 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762626593
