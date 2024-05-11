Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444AC366
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715452943; cv=none; b=TR89mzlW+uR6jk8pBf+HSB2c5ymx8u7Fbz1X0fT6B7Arop3GwmywCbheSfbFTzg2SHJy3ISB90F96YHh4tOhQ76E4476AOpcYSsCkRhT0ortss0ozp+XOYUtx8Pmc7AJAHsoef7edhVWjNeV1pM+VXbHpE2neWuc077fJX4C9tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715452943; c=relaxed/simple;
	bh=jN67uhS4yeWsDznbjNNxygdJowWH652t7xqH4w0L+Eo=;
	h=To:Subject:From:Message-Id:Date; b=jJOXSCl4+9MYJkfgleEhQe8Ng/yBmTXvNbIOZXNN3K830BIOqOgA4011AE9L/y9rRFRxL0GzXkPd8Mbn4b17Ego9QkH0DV6u2fo8RAFBAnEN2blVxrtZL39t/i0G2JLTxyUteDhQXORrS0Ypm4yGwr+xsPZsvN72hIVWfpj/49E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buopkqjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buopkqjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7ACC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715452942;
	bh=jN67uhS4yeWsDznbjNNxygdJowWH652t7xqH4w0L+Eo=;
	h=To:Subject:From:Date:From;
	b=buopkqjhOG+46hQ5JB50QFF+yuociJY4KNef1i+cfmzwwWfxse0n6oycsTI1jTPFB
	 47Z+rSyBVqHe2sC1c69sZlWFILUn7V2QOv2X/RlduWV5UwTi5+0nFf+bHsks2hWzvq
	 YBpXEmO1BcWuQynS+Q2gwYq4dfKM8Y6tebs45OwLupPUfGlFTMsJ7zsH//2bQz5//t
	 y0Dievqx3tqxpIRmu1/GecXn2px8psIEZb8oBkbdMBl4Rd8MDqUSNa4+hXIUlQlzrs
	 YL36U/gq3UH9XGFE+KKbPwbw9szq/+zoZk8HgIjciqsskAtW2bjMWz9yQ/NRU3q3Jw
	 RB5VYB5yYDgyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11A1C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545294276.10216.8880757530142769454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bf8b604e5da67fb6717b742d86ea8904437f5dd13cf4d13bc30351d63ff403
Date: Sat, 11 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715452942
