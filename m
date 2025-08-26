Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF3723D7CB
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756226395; cv=none; b=Gir6mvGVetYul1+ZCDCkUDV36xSwAbiEgZV0u7Ws4UH8rTqtHAjzj/YApPy4ZTs1cV33o/zOBjfp6iBUlYPqYt5sKq2/DlXeAfLoiq9LHB8+xxeP/9HlaGeTks03IcgvtMz5so1FRGuQ/6I8ZbJtE7xVKGuyB3KnAyuFIA9PRVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756226395; c=relaxed/simple;
	bh=I+tCdW8j4CcfGJZsU7Od6Y6wiF8kCfZlKvIAejzqrI8=;
	h=To:Subject:From:Message-Id:Date; b=IolyJYdGZ61+yc2VQqam+jnTabiXn2TClbUgwRVwoEb8pzay54+58hmAZGfSbbrQmDQNy3hKf7U+W7ri1mrPJbSQhz954/dxLFL7+BYjOYtvWMwQxjvdU77Hycb8pAegdluQsOcOndDGUQyhev2M9wONoj0hnbhmaMAYZzf/T8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIH/bq+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIH/bq+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4879C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756226393;
	bh=I+tCdW8j4CcfGJZsU7Od6Y6wiF8kCfZlKvIAejzqrI8=;
	h=To:Subject:From:Date:From;
	b=mIH/bq+p/QDmFMQ/ktsMgIGAw+cmOmwYBGAMN0RCrZJPfR+X6k/ZXYxIYFls6yFcM
	 xshaMNhOel1a5Zjuz9E8PZUN+OfFPVloYz/OaYdNuxI5PYngf+XM3cDx0Ukf/SAEqh
	 A59Frg7PvxEZInLuZMHiLzmYCmHTPNfhrcBYO3f6mabMHUXqV7jT8BRQNLqt26idgf
	 PBJSPVOJi6tF1tWE7VCDplRNOqw314ngF7xcHimwkWfUOYItXrdKqZW1RN2Alo71Mh
	 ZqL2D7vWcBJqr4s9X3UMp598qWDaJ3Ay1CTyzD6tOJPypI51BwPVHsVZsGMsSgk7Jt
	 w68DwrJ+TqXVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9ACA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622639358.11572.8520246776737991391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8305fee04dc13cb7c7f50b2744f23c04901665825480fe5b572a72e9dea8d566
Date: Tue, 26 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756226393
