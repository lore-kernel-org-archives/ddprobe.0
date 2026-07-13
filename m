Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3795543C05E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783961314; cv=none; b=KLoi5VY//aSIDglI+2ClvR0nxOIGiYfb/GHoqr9U6kyWZK38hReUNjgYrUlwH3SCVm0bsLVz+Tc16ItrlnXZal9rj0ivRSqPSxsMG6RhA3qSxHeMq2WrlngEsf3YE4NJ6vby3QPHC3Z/0w8dafsfwfmcQfh5L75YilBtOS9VWpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783961314; c=relaxed/simple;
	bh=saM4GAuvdOli8QcZOMkKi6FJnB4W/CYqI0wwYsQUamY=;
	h=To:Subject:From:Message-Id:Date; b=F1dyE7AUXlh6dGcBY/5dr+L2mHc9ig9uUqmHv1VjBZVoJZYO61ZCf62YAmMhRkmdEEMGgMYpxjx1Aof8/zMYRbmCHHV49N1LMN53UDcQ3aaVZ5mgZCYHLgNcpKVY32+t1p6f6I2CLtSqBgPKGDiFIoJ74WeFuq661VvWpa90f1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1DuUfcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1DuUfcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABFAC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783961313;
	bh=saM4GAuvdOli8QcZOMkKi6FJnB4W/CYqI0wwYsQUamY=;
	h=To:Subject:From:Date:From;
	b=J1DuUfcOhcU5penhBBsT1OeqrmPpO0lI47sHRYjp2/Swn4Ej4JOQ+Mequ++2ePmgg
	 zL7EzvHEJpvEonSnPVdyWGNW64inWcmHmN/yUk+KzOTiXXQ8bpiSw/iQ8IrasEeFg4
	 rIx/AIdSMzB8wEmnwpV2GVzqBRT7LxhTZ/Kko2sPgjLkdR17BeupTCsnSBbEpuYvXO
	 15Vg5ejg2z/HRs90BL4sjRyOfKJTfh9G/akbt5XV4axrw9rAP9fZ62pNQWTolRjcIx
	 NCV8RpcgX5rRkbiY/iIwat35fgi5x5BTxzyvvBbnqPo6wZ7rTZLouUSlo/7xMRpkbV
	 DLMtIJvYGpvNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A946DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396131368.3589.804628436851423188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a6b5d81299d872ca4e03161c286cc74b087d0559994f22dc0a67b506a26a33
Date: Mon, 13 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783961313
