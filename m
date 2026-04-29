Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168143559C9
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777435054; cv=none; b=hTgo65iPUQ+VqVr91MB55ItBX39IYYrJAA90lGrZNENhzG4P16ZTAK5h1Q4aRJiFJfLkGGDZbIwdPINEoZH3c1kvqZqP9C7oEbSFwLku0vaKnFhE8kQ0kkb/K87Aw04ci08hXIVgvbpGk8Xq+tJYADeQgy1oMurRX1s0FoYjp58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777435054; c=relaxed/simple;
	bh=oGHkVRLzYIY6DT+OKVg0ibOqLKL7ZIByN8KECxsYTUg=;
	h=To:Subject:From:Message-Id:Date; b=Kmai/XQAB47bLJ6Puu2hkfCcZwKWIXVchqWmihJdMltV+2Dd1UflUTaC/Q0ix7TjjxubKiv/2PcpNepmFz5emHz8YDXck2QosbUOGsgkv5oyhRmuiGr7xpYk9YqORzxFtp9VHywmaz2wYDCXdqS2lgnGcTLrMz9ma2KdATmEbZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTGpdBCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTGpdBCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D16C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777435053;
	bh=oGHkVRLzYIY6DT+OKVg0ibOqLKL7ZIByN8KECxsYTUg=;
	h=To:Subject:From:Date:From;
	b=aTGpdBCbINY9zVXh26Zyd9nFspuYQ4NZpBgxMb1S/Tzp6dffdEhIlAEJViQP2UI6w
	 CbWmmfiBWeGYzMFMjd6OqnG1ghpTlpWFSkIHevffhqvBhPzhgGhTaNlQ0KK43230ib
	 76FJpfPrG5+PC/Bajd07aRVGvjz/4Y6TJwLXsLmpS0Os/Ud9n2m2Dc7urUW2WASmkh
	 +x0XQl7dLoj7/nndfB4A78LB0bE2ri0fROVy7LNBllPsWAy+n4iGP0Jrqy7OExPT9r
	 8v2mfT0pSDVOh0F0Xb4BIUpE8rGlIe+Dwzojq2S9JdA8rLO9QYpCzcz9TdVetJttIM
	 HS9xB0pCF+zRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F9FFF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743505368.14649.12623412045140373376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a337531fce0965d82e35d54d5227dc24cd68127111665d286ceaff899f0f65e
Date: Wed, 29 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777435053
