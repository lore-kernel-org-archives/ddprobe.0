Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F12027FD49
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762973394; cv=none; b=Mg8e0reQKyP5HBGlIMc+UsFkoaE+N5Iq56FbrfPlfOrz10+806YfG1vkDyQRSm1doEsIjqUD95CGP3LoSJlqF2jC7aQBhKyNRbCbllekkeYJt9LHQG3YP8nTAHC4+EuXR64IwMMrXVVygkhqA7Bvzj77/YehsP9LCjXBiKuIt7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762973394; c=relaxed/simple;
	bh=wQeYJgI4ADUwButUbdD8AcRYNCLLu62CWSp3wjwKCCA=;
	h=To:Subject:From:Message-Id:Date; b=mJw5fYlHRgmy5TP4sctx7qe2e4mZWk0Ebk3nQh1OqoXElUZqsltBmMJ4mfrGh+1E9n3LSrylrUKBcYKJ/uyovfRvHdzlSas4DBUWkBjPRX95TsSaIsd1JuJtbGBEAq50P+wSQ0nV/X/e6P63MkQscUTaDduaN3ImBH7YhWknK4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb5x0Jas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb5x0Jas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2912C113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762973393;
	bh=wQeYJgI4ADUwButUbdD8AcRYNCLLu62CWSp3wjwKCCA=;
	h=To:Subject:From:Date:From;
	b=fb5x0Jasey40dx5B89LLsyIDrySmnpKwOuWjLA5xe/44AUNkOIU9rJIPFboub0xF5
	 5TzlXfIM4f4ZudOuLEerxXtoRV62N8WI4eZAXQ5Fr4uxcEXgri92TmWOTkp3S01Y1A
	 2s1HUjWxoo5+2pqZ6exyLLCqGlEQn2jmA9zot/dsSGSO3VZKhMGEd4AXI2VvKSvjD6
	 tfAH1eGiz9CbOu5RxUwDQgjP+8XhRplkKCJYv4ymT6NV60cUKVTFwqeC93cfVNVUSd
	 e+WtGI0t3LpSWAezABCvXIpN2h0e/EbEASRo4t0bVzOdAS+6ofkOi+po1hqgUoIHRm
	 fGLFsljwB78wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95116CD3438
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297339360.16713.4727271516637030923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8418dd2f95e7242e2f9fbeb3c065b7e5075e226777db9cc1c1203f01228a1a37
Date: Wed, 12 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762973393
