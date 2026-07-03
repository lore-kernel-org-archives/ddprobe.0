Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B5D2DC798
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783094914; cv=none; b=Ry+pJs00GR1aGydYT6Odxa+xuq7PEVqY1Hh91Rs55PLtA8zboaX4lKy2XFCfHr5Oq6worqXSzY5XHeGAVPy9KHqhilPS9ap8S803kVtcGDqVs1wCb/ZqbEwXLn0eKwiFlGDFBqyA9a1cMTdZsr+hX32Mj8E9Z1tjIh8QMLLLz7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783094914; c=relaxed/simple;
	bh=ojZtboRRriujhAmUU8+/d6S7V82Wjt9W2WvFWKJbe8s=;
	h=To:Subject:From:Message-Id:Date; b=DZXuaTTVJ1hh499qCB4Q7DQj+yilphOb0YeEb10nZWmHb7jW63R2k2nXP7qnaQiOk5rhOwAl/RIVV0D5UBmlG6Fu9Rn5PBpmEVQx+dF1ji09vuRe5rmqB3AWFCHWXAA8Vi4cFnpTbTjTwuubkUWiPsLl3wMiiB9QEgyARoxtnBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq/lKhQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq/lKhQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCC9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783094913;
	bh=ojZtboRRriujhAmUU8+/d6S7V82Wjt9W2WvFWKJbe8s=;
	h=To:Subject:From:Date:From;
	b=Gq/lKhQYg9Ol1pulHd678b8b887Fwf1MmQv3gZJXLBc+LNmGfPWkXlM0xsh+Jik6F
	 RCu9wcnEQsfIJnc/xKjkoALlIiXK1mzLqOUQkG5gusRTVq4oNrVTzz3SJUpJafXk0O
	 An+XJaJCAiNG7uiqJ2A8PiFZFhN30CUlVeMeB3d/Cf5HzgIjOsVH9OTZbtaC2TZ7QH
	 80O4YL4+KZ8RqLWLm2eYpMgL5UcmNeqNuzWPBm2bvcXgSxrkzjH5C+bnhUlhkzXp2Y
	 zmtAQ4341yD+D4DkvZuSSkeN/bQ24zZwiHCGtoag5LR7pi9yoWOwOo50QlP5bcrPu8
	 ALuDmUqdqGwOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A954BC43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309491368.4731.14689066331070014171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10df07e43d4b44bfc5f1bf9624c2defcab508cc34efd1a6aa021ee2f8316346b
Date: Fri, 03 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783094913
