Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151B928641D
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757504394; cv=none; b=JhEcJp7Z07TWlxIl3LLm9KRwKEx04HzM9IOMoELd9U4unJiYhGp3/Z45/fGuECagKIlnkAbeEcg055i6j9xH3cfH9ISfA3T1o9pKg1Y6NqJXMyYM1CRuk7aKurkiOpIzj8bnL9w7+Ith4/IDvfsZINhArYZAtCzNPXunSLXQPt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757504394; c=relaxed/simple;
	bh=ThDT4KrC6aidvWLGFdAr7/sPX6uEGkkHJ98gDdhYwj0=;
	h=To:Subject:From:Message-Id:Date; b=GDF7U1ljV9jkGXZahXs4ypQJv6eTFtpT2XYgbaGkhmE5Jg8oOaVydNN1+G1yHOsYpskf8w77gOcyijomxqS9nDK3w24QwOyHghMDuSC8siFm+lJDBZVU1l3vMr7uXWszgcplAio88eoG3uhUMMXM4d1h0Wf48LUy56/GOYWb6U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tvvp8Vcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tvvp8Vcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E45FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757504393;
	bh=ThDT4KrC6aidvWLGFdAr7/sPX6uEGkkHJ98gDdhYwj0=;
	h=To:Subject:From:Date:From;
	b=Tvvp8Vcr951Q0andN+Wx+l/kxeaQSQ4k21Uy5q+QWLhL9e0a+FPvrhbMtgdDM7W4+
	 125sfqluchrWuLdzm9v0nQFyh4n18qkUltXuPHy8h4R3uN4x3arn0175eCO8FGgb9G
	 pWaAKRbBOG4VhjgCDjJv1OO6YYkeC5jb2uXi0GNLrGpLCaV8Gmf4mNBZr95TYOfP22
	 ETHzJOpnbegAq1ckuayDFH3DI0kdmhGD10pRAF79tRTtA06DwYhIaL/+cOnZijSN+S
	 25cOdLLfaoTUbZjRH3j6BNpV5ATXsKUWl11qKeaOJ/+bI6TUO+7pLY/JV8SKVhIpOM
	 aX0QWJ7YUyKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F331CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750439357.5353.10386398546315125269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c3cf8d7353689fe1d84114e43a988f4ccb8084999183b366dea0be426e926b
Date: Wed, 10 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757504393
