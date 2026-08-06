Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F92C25A2DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785992434; cv=none; b=ITx3qmccAbvlpwO1D29NyFWDtQD95Y6bu1Ua80jUEuGLEWhKJoakBzCkbvOFTrHHeRG6Mr9j40Qql+YM2qfWvYkPs3WNMftc4gUgNybsRUTNgrc9wOKAnyMZtNrrsOTF6imxtSKVflNvI/YhJTCUJIRdSV2xQtzGktJKJt+MC1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785992434; c=relaxed/simple;
	bh=Fe9+jgKNiw28IeOTccN3wH8+zKefgt2VC3CzUVbfQtg=;
	h=To:Subject:From:Message-Id:Date; b=nknHTf2BhjcqjotmSBPJsCbLYiYeDVYErUcJNNzcZGu8M37mtroJTwv1DrG9fRmD+noriTXzlJwLnhNWNXHNMkbQBQnIdOy3hkL9BVfyZc8T+yujBFtTnA91eNCb4vQH4b42p6e0mXAMlTRbmsqYGnsM3TkivXkc79vrC+XjVWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9qmJA5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9qmJA5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01D9C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785992433;
	bh=Fe9+jgKNiw28IeOTccN3wH8+zKefgt2VC3CzUVbfQtg=;
	h=To:Subject:From:Date:From;
	b=K9qmJA5/C4urV5YG8vQ7n1WK70QoSDRshqP9lqi3Nl7rp3JNLUdhLo0fTwaf/ago0
	 O3vTtECfpbs+QvSmoMgUzk8oTY/2JNkHuy4P5vSAxQ2bU/xcEEdYVFpp0bkt1Sl8dp
	 43FKEo/79RdzTtR+idFD4T2GoEy1BH2i1uub/BSxkr4RXXiQ7uBA4UZxBpq+gAtbUH
	 D110iXt2w6RkRAGkRXSayttIbYY1O3LuQawiw/2clUYwi5KLaw83Hl3WQIKm8OI8/+
	 LirPARfugEasHrN5tBDW0OEa55w+lYzXbKObOg2wPu6QM/ajacKGzSaAYOWTwkgdw+
	 yCLO6T3E0Ka9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16A3C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599243371.2223.14406040012861873326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5936009e165f666206370d0b8248877c889186ce2ae2632d9c84ca918c355d5
Date: Thu, 06 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785992433
