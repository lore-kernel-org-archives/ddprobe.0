Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C07E1DED6B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738051554; cv=none; b=SVsUQkpy/cfLzwG3tIc6UJxMDmzdw9d7J83tdajw2uYmQckEwLtkbkkojAT2zgvoxj5van+lT9l3jhaCYpbBvxW5PFolo23YJS4jQkosiI/R2i+w73HDCeBnb26X1QLQz82XFE9eVI7WVImqG3tLCljbUFyhJPz+lbTdqDSHg6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738051554; c=relaxed/simple;
	bh=przevldQpU/FPHYpohB7DZOrq505Binh3EYCtCkJT3s=;
	h=To:Subject:From:Message-Id:Date; b=E9F5kTDxVjESaghT/UYhX6gaKDrLul1JlTvzPu9VGzPPItoSRrzXt/nRAVUYQI2k+g2TGufRkubrxxFblY2fX/CCHJTbK5ZoY+P/OqSQzmxgAQXDyt7aOEprhAu+CXhqjhfNFdxv3PeKCP6CE5aK6/N+JYfTfBVfC8O/R5EL3Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvGOTLde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvGOTLde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF42CC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738051553;
	bh=przevldQpU/FPHYpohB7DZOrq505Binh3EYCtCkJT3s=;
	h=To:Subject:From:Date:From;
	b=VvGOTLdeVNQ6LY/h15973EQztFEnFPHudN08QkWbKDf+jPSIB+UwDguvcPGFDt7fM
	 nLmR21tc1SGNc0cF6DvxUlCclXmIVf7mYynghvn4bsHEyNYnZK6EbcVLcIiQebSV4j
	 vYoj65HJQ4MwJOzRpPMUy1rpNJQRgQqeL87E/ngjv2z1l/viBGbzYgT9OyBvRC4/T+
	 Hb0bD7OKqz/uIXBJL1rSTLBTBwMBpq7aXjCIOgp2HrrJroB1aUPs/lU8XkWjf0xPHh
	 AdNG8k1EvX6h647ewtjtA9QtONhm1SB2TEXC8tthS7wG9ZG3utLLWat1axU5AKI1Eb
	 XN/kluW0WYD+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE1DC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805155364.31019.96936592833749301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b115751ebe19545ed7ff52665dff72dfa5d15b5a74670590af8460c40f4bd27b
Date: Tue, 28 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738051553
