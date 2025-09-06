Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20462264609
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757179194; cv=none; b=jafrDPSfG+deUM+sPhsOfHfJfUfNCANyckHaXX8C6oB5M5+74jdpDkdfXzHpWBA4dkMQaTQNHRNk6N2WNGzO6YgRSEssVBRT1GpjLCDCU0AKvrxoVQTN9nUSxUzLtxdFzyJX6kYP+AmQZIz6RVVWKC3+RiYvz62BOGYO/D6O9lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757179194; c=relaxed/simple;
	bh=JdPa2e+sN1fl1IjdoLIYNyw3wMVahCpevqvixUlHtpo=;
	h=To:Subject:From:Message-Id:Date; b=JeGIJgi3KNIEE8d7jcgVYgOh8uEhxWOJZSgNM/sxJONMr/wFz9yCto2VsXYR34wU1ejK5WBv1ucXib5VOvIBZSjb0gDRLQUC2m6SYFzISUmtAWpFnvPEuyhtZl3LyVTorFG6yHlpufqqFjlsdVAeb9g8ck6fmGjE/8Z17zN//K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzAQsUP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzAQsUP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757179193;
	bh=JdPa2e+sN1fl1IjdoLIYNyw3wMVahCpevqvixUlHtpo=;
	h=To:Subject:From:Date:From;
	b=CzAQsUP0k9s1/uSCbtx5ZvW54TOoZoQsBRWl4Q5Ju2hbd2UYL0plyqJKsoFUf6+D0
	 4aK84z0oGJE7ihjS6TdkwcIboXvFLzFG2XNFPvdl7Hq3H1MlnshL1ShgdGqqrqZOa2
	 dVH6D+3xK3GXyA0E+FakxgvrsPN1Y/mwuooeQo6d8khD6dZ5Z66aR2M2kCrZPX9upT
	 dl5/lXHePlTNtrCnDoTho68VNXu7p8eXs3RCshisFqRIu3z0eSAnp8JO+R3oTywCyD
	 77QCppdfdhRukn31wdiZKxkMhb1XqThsPCf0MFpPzzX4jJeV2B9SQhHSAQX26p2BNR
	 Pd4DIKCH98t5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2DCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717919358.9651.1928637030725198215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26a999ec3e3e73ef232630e6dcc2cd7114a536ab51831efcaf01d1e14742f0d
Date: Sat, 06 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757179193
