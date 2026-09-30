Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD92C36F42B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790736034; cv=none; b=mOb+GXhjW7yB9ZuZlMenSBEC3ZSBlQc9VemqUvm/b1DEeOTzKOzj7HgjyaVPE1/xgao491w7znEPxFsBo0m7NE0vYmsxgIiR6QChik4Qpp/8kBhzz7KdAOPr/6qcekm7gz0q6bi+QYvU2bLmkoI5Rx1YR7UjE73fG8V+ZXRImFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790736034; c=relaxed/simple;
	bh=lvy6QEvALwOO3fbuZ8adyUNWRJV0TBUrRzbAdFGiR9Q=;
	h=To:Subject:From:Message-Id:Date; b=swQIEGCGvtSdFULJQiqdZQwb+4+j77+lYCO46I+qyWUHeCcxeLJqYNaKr14T7G/H9eR+XU6TjNCmXq9DGRLfFMNq6TkR1BwxbswBKnz2VGXxy+XPZ7h8HfIN4al/oA6ARHF2BQqrBeYnKxA2TGUIUtSBXt6zq7UU0AY5Rhwp9cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdpWTq12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdpWTq12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D532DC4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790736033;
	bh=lvy6QEvALwOO3fbuZ8adyUNWRJV0TBUrRzbAdFGiR9Q=;
	h=To:Subject:From:Date:From;
	b=RdpWTq12DC7obQI8Tkbf9YP1l+UpYC2CnFAjdnTRDFsL88ITcZ0cA8jOHGvn2+c6N
	 52/mwJsjqiPH/wvSbP9/PU7XE7iboJANVZxBlBxx+3c4CPUPGIU0IOb8Iyws5O05rW
	 V1VIvXRvYQngd+gSxyk9PepD1RDusdSNud1DvDTH97bu6eI0lGVLoKr0uMz3tvbSil
	 FLyBoPJPl8VcP+3mFbwA8u8H+37vYyjPGMbey/VcoIBxu0C54Kx4O2o0cMoKWKFfAc
	 MxGsdbpidOs/xK605QtHhnvPyyXC+X3gVWVnsI4EEcTefEWG9rBfyjD1529GVxGe0h
	 dy57w6SsGiixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21E9CA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073603372.19800.9578161127352799654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436501ffce2e1913b9d7aa38575887d84f31964a5da7ecf12e0d2e91ede04b34
Date: Wed, 30 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790736033
