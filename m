Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0829283CBF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763137794; cv=none; b=C0EdGAnV4GHpP3/vAI0XBJdOQfFetjdGbPuapkYBvoIfA1JOy9l0BE96Uu/jPxI/4HhAEK7Af6J8Q4hP0sJzldq0Zoe2KGEynLEEv+nNvO2u8udo1IdNx0X/Jc3+SGsO1IyglTTI4c/bR3jm7olatBVfVu3S+VNe+Nh3E/FyfHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763137794; c=relaxed/simple;
	bh=aHI1r6Zr/VfPa5CU82ATIorIHpJp1KuDmzMTpbm6pKg=;
	h=To:Subject:From:Message-Id:Date; b=u59eiop16Ml2OEmMo08sw4nCl8Wc6Qdw9CCPqC2nu/tDjm8z9lqYTjlpeLM7YOK+HDwKjFb6PUyDI/EDakedms7NwFg761mRflOc2a6tEqgnNhypllSDogG/5Z8caTLlJKsYKXVKduPN3woyMHW6c2MNQynJ3Nr1/sqTjPfzxCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG8JO6G9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG8JO6G9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B512EC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763137793;
	bh=aHI1r6Zr/VfPa5CU82ATIorIHpJp1KuDmzMTpbm6pKg=;
	h=To:Subject:From:Date:From;
	b=SG8JO6G9H7NknbffhWXVAQe9qaJwrWsDcFl3Eh8hSvqZtpsZmivRQ/Xpby3NlqdY4
	 7ZTbyvv7DMUei3YIUc60ZcZcvxPdx473VeMnbzRYOskwOyFFMhVNJu8QgQ/tpTMpY+
	 OhYP4/Wj2fYS9SI5bIsXiCyBF9mq9toJJfqnbX4B132BgZksEOCtFuiyLIDkeicmgt
	 mjs6yZc97RqS1AKLka1PVvz5qLEpBhiOFmhmNO7ipfNl2qvC6V3+RTmtXtmJvC9M/3
	 Or+XwJPoZClXoONK2bBtr/KyG2v2Pb6Z2g1aepgLciEzNOnPocfaaUlgIF3nJj0kC4
	 w5qS+Itdih5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E2CE8D52
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313779358.32220.7408686569929239663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c809d862405dc33f0a62d94b793eab96d291b0b5a03ed2464050cd5cad8923
Date: Fri, 14 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763137793
