Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0618FDAE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735802154; cv=none; b=OpSJBNNIJcVbJalEXCdCbHLRvMv3htwZdJURsmlydmMQWBWIQAEZZp/gcwnyYEhwgiCWP9wjnS9Ww2nGyHx9iAbNxMTaMb1IWKLk5zw73ktl4pfFwI/VKWvZHztyugBfwIdBxkqnh3sGMgC4sSqMuMr1V5P4Itybb68MnnGKXuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735802154; c=relaxed/simple;
	bh=sYI4uDNF1+Wi4oD+Kqsh60FgBj3sHpvo4JwH4SFJaBE=;
	h=To:Subject:From:Message-Id:Date; b=GdXR6j/diYMYKuJdn6Brm3IEysmHE7mn04gx/d8Hk7qWis3KEH4kh6pKmGglWkOV1j3BSyKKEV4845D0QircchVEdvxKepltbgDCgf/cX1cm8xpSuW0MNb8Q6J4SwHNAgYIXWDa5bVohEexHWAUV6zxR0CqRTJxUVnp1tCv3SR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeerUexI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeerUexI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA715C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735802153;
	bh=sYI4uDNF1+Wi4oD+Kqsh60FgBj3sHpvo4JwH4SFJaBE=;
	h=To:Subject:From:Date:From;
	b=WeerUexIaSsL7M68Vxtfb6yqoNCG//RIreiWdaXU0p95uaJG/BNhJtwDhKGbAEUw/
	 rF4lPIWtdWSZnQAhHZKrfuQt3TfmYFoulyFrArFFyIN1XjRiKlRBQat6wTNeDNFCC0
	 ahMY5tm4lqrfGRW2B9VNFq+vLEedUIGyusOeQVRGW0NHF61zrwb+2txRvnGB+ek1cv
	 x8CmWSghVTrD3D1fxX8YZWaPP42w8V5lpPMRywSzcMI+qkfKzYxHkPkSkuH+OCZTiF
	 bQ9wpf+ZU1VqZBn7lhLI4TPKYMdFhhYU/ZOWVkiPtV71BjQGN2dw1ZKAqqD62Y5taw
	 XGUmmNXBPD51Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968FBE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580215360.30791.8615578065081782735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18267974c6381f6c4b4f1842304acbf6fa28285ed2cf1f8b2780e4c1e8427ef
Date: Thu, 02 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735802153
