Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E1A13D245
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727955955; cv=none; b=gg7HPCZBIo/h5/Yde/DR/kquvr7qvwoaY897pcqXJS+desAHpijepimNfOeeek0GxgXZIj+afJv8038IUlL0e9eSI0LCm/kO3NGg3SlzZF8jpCZSvQL8e9L9tf5iwZrTp8gBiVNuBER89SeG0LP9o0VPJyAbUQmZN2dzswNFxsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727955955; c=relaxed/simple;
	bh=96ozfsVaxZzEIACo7BBZM+jpfKLmwpdGpDrwLrI7pKA=;
	h=To:Subject:From:Message-Id:Date; b=mCQFiMHeiMK4urKIiQue1vRLp5TP0OmgD+uNryliRQVaEKVD7t5KU/eO1w1U9PigWFE5EUzyepKr0s2l110tL/NUOmpoTYfnshBlF/o+BNGHrXHDyfAZoNoj9wdaBDEN5F/B/lndMqdZFbjBQxIFNZnUfOxPmuUVXeill11Zocg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Irl486t2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Irl486t2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA65BC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727955954;
	bh=96ozfsVaxZzEIACo7BBZM+jpfKLmwpdGpDrwLrI7pKA=;
	h=To:Subject:From:Date:From;
	b=Irl486t2NOSmdw7Uzk7MruUZl/vFEmx6PMWLWOVlWb7RcR1GjLnNfAnbDNZS9WE+S
	 WGb3RHWzORk5tAERKnlj63YRVJYSnu5Tozv5z+rVCn7H3vKOLIyEoOBoH1YYgJeGFa
	 1tiGvqfBBFWjS/PY/V+8RPiWO+5f6/hLxqbyh5HTpienhG68RpbuDg94jrn56iRLPl
	 zkCFLCT5nVVuwH7S17cT83hWZ2p5EmCFC8Y6ISkwwbqYjmDTCYnuwOilcLJtYVkSA6
	 ZfhwcqYqYsWUc0EE++h7cG29SSAsQHS0XfdY+xAGg6B/XOko+mtzk0Gm1KzL4jqbL1
	 TojzqnuVJyaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D7ACF34A1
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795595365.8512.6232820283607505647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca5afa4862faca2e06f45e85330da320f6edef88fd2415f63def92b03e5e7d6
Date: Thu, 03 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727955953
