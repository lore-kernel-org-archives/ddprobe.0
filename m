Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DE63064A7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760473794; cv=none; b=VkmeqS6g0f1+pttOiAHpy1hzJlAIzevDtf2aSBsx/AisW9G3YoqvqtHZekvXJrAO8AHHWHoaaYDtK//Q87lZwE1b0qjwjs5+PpPxYdWZcl8GhOwe/kd6DZDeue+0ZN8BZDTse03b1VN3CPao95awDp2xo/7qL06XyJ8OJ2lIFRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760473794; c=relaxed/simple;
	bh=AUSunZhpC2owoPnofd8bXDtv49Ea46IZhrg0m1HzJGs=;
	h=To:Subject:From:Message-Id:Date; b=o5h1DuGyBJj5nx/YMTupA8VVCwhgeVKhW0fysZFBNLVrA2zCv7U6nIKcLqdMypz6cDsuvsw5ccTjjfrOyD/O1aY0q50RELypdQIUmU8FZEfWIZ5EcyR0MjBxytSvSZvXyZNuO4E916ZaiEU6i5xM/fcGIdwwfmN1boAUQD5xTvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMn0rLXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMn0rLXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F89BC4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760473793;
	bh=AUSunZhpC2owoPnofd8bXDtv49Ea46IZhrg0m1HzJGs=;
	h=To:Subject:From:Date:From;
	b=EMn0rLXOfT+QiDs3TMW0T4CUs/YVkuxCnln/CXwiSUfxo4ZNLIfDYV8DZ1Z3ILk5k
	 WtF2JvDAQr3QZgXdZ7Fk2cKXTZvtgo7CJHtgOsbGfFpVTRLsrakwFBZKhOYPEtZ6au
	 pmPd7f/y89yCO8LPIl1hZm+znqbyyEzFsdg3WY/0uvsf41kxFyJLjXsPJt+uTekOp2
	 N1w04gSOLWK8/q6IZzgMP7PsJeyTQjyBH6yoT9MMG8JMIOwI1Ww8uwcgYqph38OFWD
	 xQIFJy58M1jB1iBoS6oHrWrI+1rXSRpmal92B/G6LubOhItxv0OMJ2p2+qbPFDvPRm
	 mtWSrfcoFRRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CCCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047379357.13352.14227716359907305723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583b7770917c0f45dd27e2b19e044c9496f498ff2c221dda8100fee95442e43f
Date: Tue, 14 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760473793
