Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2056585626
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723046754; cv=none; b=bb9+UK6mhmk5CqV0V0Ne3OQBJ3DbZ6/3QWvTK/5e7bpo4CJhY8xYikRe+cBmt3KfT5AfPcEkwZY2O6dpeQt0ZUttA7PofhprpUamAKa38IKritdUvjVKxlT0daeeFViOI8nNuStYPp31IME+WA1eSkB+cVfMvOjpTzaa63DGiY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723046754; c=relaxed/simple;
	bh=rEQxnjQ+bhSMtUyoJeX6BbziIhVEWqVzLaEhLeNVExg=;
	h=To:Subject:From:Message-Id:Date; b=IyXqKPnqYGhoO/gNjBfv1tU/fN8u9S9y/V+rLNH/H84hJgTu0OCbOPj4u1QyhWS1dIUs5bJnw0fjjySMGSE4zSIonABh/6nqohNOkM60qj5BisIHkd6f6n7nlfzj4GKwNNQjy7CuSIkEJiTmEedpp0a2VvmmwlbZ7aigyf+gr+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsUYuIKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsUYuIKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0C2C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723046753;
	bh=rEQxnjQ+bhSMtUyoJeX6BbziIhVEWqVzLaEhLeNVExg=;
	h=To:Subject:From:Date:From;
	b=AsUYuIKBbUqeltlW0Z7mSdng/sOeckpJq6RXd4Cgelt38U8+kWvdljqvWqYCmDMZh
	 zgHXxVXh7W5DSUkaoXKvae7zFRBMQVFbQnuc3cB3BgImJQENQWFvdduPb5FFoRbf6Z
	 66lsvtIDuKC0eGLoo4hb3ebPID9LgRJnmaRmLRi8MV2lMOOgV23vaKex++qMr4YlIz
	 SoyoJSp8qzwKGV/GgbbzNrQJCtJNaodk6dSePzOVdI431pGJ9qEwdWOQGWUbveffDc
	 xD1xnqz5zDkg91vmbknvW291HFd1oi2TwY488KscpnctUsjei4QdxyZq0V3w4X7w4g
	 L4sUUEvTDDtxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938E2C52D73
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304675359.32520.15212040034174545232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0685e36b21285d32284cdfb188c05c54ff056fb59d16223f3a7a7070c53f04
Date: Wed, 07 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723046753
