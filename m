Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593C71DF738
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748244594; cv=none; b=CNPUznESdc31sT9QFIL6HjPbzAzxNEjz+jDsSZXaphob7Wacxf2208KSsPpBHVzmIFBkuH5EbIJlYKLJHz4C6C5d3znUov2+eiZxjCWa0lPpNHsZCvxa/McygZ/cjqibKo2eyiuO0R+B9tEeM+IcTIjasRR7nXOsFl1J+JTqe60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748244594; c=relaxed/simple;
	bh=Sba0Uh+nrBWIi1gZ5yjccLNq+U9mCvFO/y7zmLY8aNk=;
	h=To:Subject:From:Message-Id:Date; b=gLEKW0zk97yYA0P6ZSLyaa2nNv9JVJ37g964Ld/V2rHnGlVJkXjzlwCsgM9km89+nbFL8Q9mVUx4ZJ+7Pf0MpOnk2ohipWSqYJLlg8PEJQhkcj0hdGvqxnr8v/Ix05QjMn42ZzMEcZhCAcDT9BcUAJIk1yfyTt+oqWWg2qHqEAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CleWRiYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CleWRiYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CE8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748244593;
	bh=Sba0Uh+nrBWIi1gZ5yjccLNq+U9mCvFO/y7zmLY8aNk=;
	h=To:Subject:From:Date:From;
	b=CleWRiYMiCbFiTculkMMCpjS7/dt/36iJC6jU08CSJW+2UEoprrP5bqMlyHX8mAxQ
	 +S1UsxlNjzAGcADQvTagdE4NYmIH4vtjkBJrfmlAzaxksRJxocHR1N77dtqBFVV1Vo
	 orr8Tm59UYCz6j21Lk9gjxcvbaSocQMDeomrKzNsL540wOxZhgVCha34Y+lPWW5rov
	 bNH9wqEYOAXrMPIyQ1d/hkpV6wIgrsRzS3vZT347xdQZEzwHebtsPQiwqaHCrRaLga
	 IjmJzYBQEM3OBxuPHZQUlZ/d1oFXwDHFQdj0aqAnA+KsAYdEZM4tyGLRCwhECvKDae
	 eiIEkNebTFGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC73C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824459357.3664.10654345811484214654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b7b03bc29b93ace8920aab0861624d280973706c1c3dc5eb9f7596881115c6
Date: Mon, 26 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748244593
