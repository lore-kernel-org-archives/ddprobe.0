Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E6711713
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750907394; cv=none; b=GbqJalCT/ZAA4ZZKRosKKAJMzGH21yKN432Qir3c+6+7P8kXc9qwQ5baFXI3kQ5wC0if6iPBmD7vP9Sg3Yz/UjvgDi9fxTYDOCLxLMITuIyJi6wVWIGk7mucw3A1RTki6NCL16QXhCXwhzuqcrxmnwQPxxJOV4lkPgYEXdtR2ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750907394; c=relaxed/simple;
	bh=O/AAp4X5VFow3Q4XCqvIPylGI986TR23ksRW0ztNES4=;
	h=To:Subject:From:Message-Id:Date; b=mEvnTnvoByCtqrEehGodI804lNjvez4USXYENQGGtChf8Q9tmAcYrqb9G4aFcGdVWAOdYdGcF9eN+bEN8e8Zmj/dxRDpDFpWt/Zt8K+bJPmOiApDWpcIjkc4ksgzWWIqpBA/qxN8lVsCl2Vx18yrcII0aW2rbhQ0y2dWVBt7fRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgdBY0wI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgdBY0wI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DFCC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750907393;
	bh=O/AAp4X5VFow3Q4XCqvIPylGI986TR23ksRW0ztNES4=;
	h=To:Subject:From:Date:From;
	b=DgdBY0wIqTCnf74pCnUQ7UmYLlAwtdwV4y7hT1UkZSg1IgPE2M0SL5YcYxutkAV7D
	 T331/xPtJjLmbJyJIHMk28x0RdX5sIBno+gXHXb3eru3M/TOLjbAFYYKFoUA1dwrMt
	 BMjkE5r3o8cFYzr/3ycVfv+fGi3QKb76zWk3Ke3T74k60Fd9+kWMmBMH6JoGsVbh70
	 hy9P12ut+c0U6+0Bes9S35CiJM6vjSX+DvtAKfyF4BrURvGtS6IqO9oTuQdxHwDs7i
	 aRP7gWIhc1gZcReI6iSZw23ZXULy9C1nwSqzUabN0AeOR2qeABiVFe4Se7lMhI4SeC
	 GZUmHJFAjaQsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090739357.32675.4757666299764371115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb896488b581b24a932aba4f4c9ba9e9979f8b37732d44863834da84a8948c2
Date: Thu, 26 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750907393
