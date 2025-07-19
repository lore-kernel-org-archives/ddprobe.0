Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDBD3D69
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752893394; cv=none; b=m0OjjxcFzQ83v/EnSv5Hube/Cqbh7Roq4oRKNTCn1IE/Uu7r+nP6kzKRpSbmStvmKuHVbLuvHOKSN3loalgtbkXAjVCvnnpfM4EUg6CPTSyvzRR8BzRmutcRNvo2VdvoljEkBJshTvSu9QPupzM1OrMKBI+qcaiPGoma/mKqVrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752893394; c=relaxed/simple;
	bh=u96QnLtyFKHrDe0BwmWmDCXIsxTQGQPT1dzBV9ZlJN0=;
	h=To:Subject:From:Message-Id:Date; b=UtK00BKN3UQrG//KgpHKyu2NoSfs1ycYWG1V+MfFIwIKoyD8t1CbtcCwEfONtbyN4xemCHujwlaWPe6HL6wgGLWLC8RhaW2qRbi43AHhR3OyKXtbozi8kdd1B6lTcBvk/EVpTn6O7vSPGWM8p0Dt7W6pSOrNm6giVrmgsRGPQZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqbxXszM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqbxXszM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBD5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752893393;
	bh=u96QnLtyFKHrDe0BwmWmDCXIsxTQGQPT1dzBV9ZlJN0=;
	h=To:Subject:From:Date:From;
	b=rqbxXszMpGIqYfMvysPMGxjm713qbgHNu0TsfxrprhPfA9pbrZiZ99V+syJotbYeo
	 rvEdh1QomhHu+apxilL4TUacminl/9ALQL7oIyLkIjJ1c/d2P8xJLW5UaNsUE4LimI
	 IFL+X6LLmEVT3/tepz4cQe/wTcUyUAt4AWYnmldOkzkZOluSdBosOkA8ot0SDRQuW3
	 1qn6ZIy7f6X95RhTAzjmMrtFz0dCT2FjhLSgSa8HEiMxEoRhqnksF4UFOJhrRA//1I
	 mc0fDhbXh6v2RiA5FUTAf3Deia3VyvM3QciowvMOUvRGwwTQBs9DtgXxLQMBZppFfk
	 Fn+Qh3S/c3fiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94851C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289339358.21133.166290393348205903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac782222b3d77b22dbd80d230178428d0b81ac1d82ae162e2034bda36b64bfa
Date: Sat, 19 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752893393
