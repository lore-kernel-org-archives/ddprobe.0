Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8111B0420
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759314594; cv=none; b=STahs82GPI+n2MpqWjvqqLpHJDPTR/lv8AUt8KCWxKBpzszbUvd2psQ7zzoKFkKLtgUMyZCc0lgiLfY/2tnlRnh3oqgYWqXG3HMvdP1HMP/ig2eNXnEOSe/C46D3dayrFj014EoS/tkObOtGCgDhFf4FNFAtpTgQO8c7W9aJa/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759314594; c=relaxed/simple;
	bh=Xnk2e8s5m4hjkR+dLSmOANpUFoXOzUoIukBh9iSp744=;
	h=To:Subject:From:Message-Id:Date; b=Lfz+kQKHPTQZ8lQM3F8g9s1ns0iXb1kmKcqM1uagKnrCVQApXUqWDYrLyZ4ES/qeeyPC1eeTYnjCVwXJyMzU2fbogF31CSp61z0oNkzF4GX9egr5hvaWvdek7VrIszc0KHPJ+sejJb8Th3CbwVHk7xckFSY9Ei2Jjg6WX2Cj1Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzaFUHYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzaFUHYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8127C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759314593;
	bh=Xnk2e8s5m4hjkR+dLSmOANpUFoXOzUoIukBh9iSp744=;
	h=To:Subject:From:Date:From;
	b=kzaFUHYW2PDDcwczkeMcvF0oKL6vESX0+v2xJKBmhJnUMtk80JmQ2B11aSwR7RYDh
	 OTa/ei09qSAzKyg0Xu2MOfNMowUf6mvsEyuO4tCAF3psfsaK0BXc3w1+2NyQaaiz2/
	 f9hbMffZL+LAafbiW3x00w4PS3r3ZgOiZlCj+gHDjZwkfKDqAXTYdhvCB4FFUKaUHC
	 3qA8ATrR/pjl6uFQqjbF9kwNfQA//RniVd6c3qrId/s44Qxux73bNoFCnP7mZXcbfo
	 Xiq0rV4KBigk10XTcYG260LrBNA1kL+FThGDNK82c7EaRmQ5iAb7hIxsG2nuWgZsYv
	 M9cNpTAP9JHVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0E5CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931459368.28592.6594048437064507250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba2f5dfed7593ae9102e84fdc167115fbfb8a918e1cd6320e6b5b0e3372df7b
Date: Wed, 01 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759314593
