Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF84770F5
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718788163; cv=none; b=EWaAh2CpnP0tCKOhLdz0gg9u2HOgeplbhk1LGFHmP4yNHhhS6M9cZEHL6HQhbRx5cRdpqw5ZlrmtpA9MeJ1D4uUe5mtQTe8wtvXRKg/siRHPbKu057ElXzt153oDMqT0oPWWbtkqT9SLB+hG4wymNqsY51uYQCU+yK2J5tnNOEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718788163; c=relaxed/simple;
	bh=yuMRpGfcbau6CmatS4hL330cNXhRdtkViJFGCdRJKic=;
	h=To:Subject:From:Message-Id:Date; b=eEMNpOKAX24bhTFDU9kl+csn9gu5kgA/d6W+BmIxEOsc7enqi5x8yUa9+LM1/mFaUOUrjanGp2F3x1ZqYkT20eVNj3L+1QyJb9yKSaUlNQFwBB3xI2XiyRYKIjqNOiVTB2LHH1M8+fiVf+WdlhstGfCaWVfp1UGBlPMKvtrmDxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVP7heTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVP7heTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18B4C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718788162;
	bh=yuMRpGfcbau6CmatS4hL330cNXhRdtkViJFGCdRJKic=;
	h=To:Subject:From:Date:From;
	b=iVP7heTr70tZu8JUorKVqG9idxBBq/I2amIUF3yvlCZBcN/6NEk7ctvRQIAgoomQ9
	 KGPC7g9ZwqiWJ0w4H4mpfu2inzzzY5AsvE/5zQQcmilGgnqQ+O8f2Sn7AcaxdqC4z1
	 w+ym/SlKj/yuTNv6uCylX0Ymer0PVR1+2CusFD0vf+GnkbnxV0EgoOlCUQqJZA5pnZ
	 w33k8ehQND8KDVJxvNzMjFJHTxtIBP2an+PCGfCWiGUf6tUTRUr71mW6NIAU5pXXXn
	 jXWu8he198O+P87ZJlAebvnztqWI+fsmUL4/sEgOeq2HRsoS1QqjhLMotmGRDakZTt
	 CwPni7WNoYB2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7664C2BA1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878816280.17870.12433441210618510426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9831c9f000f88b621b9575c35fbee1fe2378e3658c335256e4ce2593eb3dc1
Date: Wed, 19 Jun 2024 09:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718788162
