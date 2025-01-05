Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E889153BF8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736088354; cv=none; b=SHlzYnjUiMDXAK25VlEHWkLN2K5QbUv0ritLjYsdBljm+yEv1bTu9aHBPGASbko/P8aSePAdhZn5HeUvqFc3uzt+jTBHhSh+Fi6F9rmkGNhXev+C3QsNTf8NlqYz8cqYFPZXQClXxDy41P0rbEClMWkZIQSPUO1aF1OwkVZF5DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736088354; c=relaxed/simple;
	bh=YlxaAEK8wZdAHmS/ZgaAQ2hLmLdFix14Yke6wsU3SXc=;
	h=To:Subject:From:Message-Id:Date; b=ENSVEE7hVPYk5+38iHbC3Dca+YqL8zvpmrHc+nsjlmNxJEv/yuDdK5aE6Sl4oSvzaizvLq++S0lgoDxmPEEnaqR/b4onVBNJOO85LywkYF9hVIWsU2/PX4xRpbpjF/W2j9Jd5Qo0vlxVeyixQHpW3FhSKwEyTGS5sJ8X4lzutew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d48QeqJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d48QeqJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54C1C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736088353;
	bh=YlxaAEK8wZdAHmS/ZgaAQ2hLmLdFix14Yke6wsU3SXc=;
	h=To:Subject:From:Date:From;
	b=d48QeqJL4JskqWAHtXSUS/FQnK8uFYOekAR5zGq1KKeRD/XE38LG3Kxk+CP29q3dB
	 ks30tPJrXqNYNldtZ+PJRJ46oqBUZfjEwMsS9Shpb0CjDcGBj3Pr0RjtExPjNd1PGK
	 Czlb9y7v5zxCovXyYkLDruRJt/RDHVFbPexfCqlSzQ5AijyrLTy15tKG9kxnx+Cr5l
	 Y3l8EhFRN76IjyXHq+7DxDkkaFFt7XziZ/0YHgdB4xShOM1+KWbg+mBtVoWfngbjWY
	 d/7NQujiDN//LPAsbx/ZHr2zg/DXSqWQ/y5Lw3VKNNnvTtABfOYALSqSuRBDBZZmFD
	 tp4w4hZy5dUvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD8BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608835366.25235.14856157492845729719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32e94405b745544815c1470f6f68c672f56f6986fa5326e375ae2bbbdeaf9bc
Date: Sun, 05 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736088353
