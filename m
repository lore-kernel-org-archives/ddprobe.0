Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A25428476
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778165254; cv=none; b=ogl2RpEYQUbcS9qIjTMsIyI8stpJe5GR7vo3GTmJTasqxdEghhABqljYYftkuTiDU0vsXwQFufYVEitc/Im76b+ocjb4c+RCHPrKRk0GkFR82NFVwuWktTSmYpFGdTmOb/a7qyKyvwJkjQc31vJyIOJCqfawqcqZzQKHNOZ62nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778165254; c=relaxed/simple;
	bh=EIseOi28DKoYXj0fd60zfxIdMmdnpBbaH/MMYGaPnm8=;
	h=To:Subject:From:Message-Id:Date; b=cfL6fxo84MhROrAUodNox2WUVzIyuuEoGbmj3GJmiU8HgoqnxpT5xnhHaisXAQ2daVm5KfaoaCoj0DYMigVjIcc9yHJrc0R+mphS+0+b+2GM07kmO86foAUVTMO4TLWvv+DqxX4U2Vwof38l7AnvAho6iDm9IGBi7/99OR1baEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPubJwxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPubJwxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC016C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778165253;
	bh=EIseOi28DKoYXj0fd60zfxIdMmdnpBbaH/MMYGaPnm8=;
	h=To:Subject:From:Date:From;
	b=FPubJwxd8Ju1fCPYXHspDqnN6gbLzubfiYFLhjEBgagv9q4CIxdMagTw5bLveyD1l
	 LnV/3tx8fgDVludlqGyImd6bvMXwpJ7A+XzLdr+4LxJpMJaS9ooS1uoSzf8RKiPXY0
	 1KIvVGqfe4BS6C6aRZvSePARREBXttUrbGJ+jzs7AfavgtEDbVWO8iznaCSBCbIZlz
	 taZeegmJImrg+nQhAU0NRLhnfOizSqFJBfCYTZPY8Bl64mdy9BawelWsO2W9f7mNJR
	 xTntmCqIadT9bd/jYpUTMrbia/cpAJUltbYL956zyeY/L3wnO4a2dnx87UEovY28mr
	 AeVhWFKUeJScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E6FCD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816525373.17052.358517047240608889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45504ca09f969f4ff63c93d19ad2de70d403a57f899c20c1848548da6c4722be
Date: Thu, 07 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778165253
