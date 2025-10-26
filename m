Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2214B1A2C25
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761465594; cv=none; b=mQ38a5XRhIGBphalxOZZzf/XMlYAQ68g4JbP4eddX4nDPgykAoPIeUZm1swsq4X2bVGitUbKoDkP2ahcP19svGvPpq5Ye7HZku8oVFEpv1EXhJOqj9VgpDFRPPiwjIE8uNJZXiAkVb7G8h2GKVdg9lskHO+SyolS3gJjJiIm8s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761465594; c=relaxed/simple;
	bh=Uk22FwBqncewx1tRIAd/D1vtsu6Sp02jRip9EKmQ9Y8=;
	h=To:Subject:From:Message-Id:Date; b=O6mxp8Wvs5ewdq+tQ2BmUvap6GitVjrFREY1zWlayOlYSEZXR3Dv8Ou1/yzeGiEv/OgT8lGV8kNuS2WKgWQW/+MuAiLJuxyre77ZV47xKcCQ2mm0tZhJ9yApD+yroEGcDllScg+QTWt64NDO65jXjfIfWuGcEzesKsRn368sbNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obUW8whT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obUW8whT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69EBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761465593;
	bh=Uk22FwBqncewx1tRIAd/D1vtsu6Sp02jRip9EKmQ9Y8=;
	h=To:Subject:From:Date:From;
	b=obUW8whTl1YQtOu8pRjp/LwX37exz5XrUAJOYtWUHuDSnRjwAH2X4JmtvUl+U/Gbi
	 YRxDdlVR+Ol1bUSZrWwoDNyG8OppI+1mAevCNYO3LhaK5VyVIFPZOVl4z/IW99hfoM
	 KyjMqMH7McsWwhzbx23sC7xk2NYR9xnURriuC+3l/YM/3fDOJ8MC/5IVxrcUm3hfjI
	 Ju6FopSYwBrhRA4brsTXrCeKihEu+nvvnqMc52eQrvtRt8jHLlekSn9L2O6gdYLmvQ
	 8x+1I2obiKEjU3P6sLqSiP+CwaymnHcFkv6/Axz5lVASG2hG417Fa5ln9URnjymZkf
	 n02ulZTdBj73A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C1CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146559358.22315.13878985368693346593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7cdc9094b48c2d5c2f13288a7f047d2ec244402e893e25c30332df9ba8f8ba
Date: Sun, 26 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761465593
