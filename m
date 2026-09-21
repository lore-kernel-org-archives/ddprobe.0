Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316F136351
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789971034; cv=none; b=on235YSj2PbP+kFKOh+P/Zibyy4Iz5HittKHA8mRkK/C/W0YAi0bvCGQIKpWQpwL6JNJsvQNIgwm58eAd6IkFcOZ+fBk1GBN99+mwNHiDMBSCFWtyjK27t+/8sLslHJTMsUJ6SOQRCqXIV5p3F0r+Evg4i6nXgTbT2TK2aGbtas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789971034; c=relaxed/simple;
	bh=uhLlCPoSuCWsbXSGIyXeP9hqsOo85uUedY/I3jI+wX0=;
	h=To:Subject:From:Message-Id:Date; b=DOW/eFwq17e44qLI6Hzl3icZjmBaSfE+nttrTWzwGFcPXXvOZ7hCeIQphgYbJCfsSMdAJnX7aqwy3yhkXZu93xUFFgaieWNATpKroAd1I+aOZo7AH+nVCYFXhi+BaZO9BoUJcY3vytczzNhoU0bA64BCiRKpb8MDNXj2XcXVnxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQwoC6wA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQwoC6wA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BB3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789971033;
	bh=uhLlCPoSuCWsbXSGIyXeP9hqsOo85uUedY/I3jI+wX0=;
	h=To:Subject:From:Date:From;
	b=fQwoC6wAULKo45wIgrxIAclT9DbKdbcE2CO75t5fGLfWfDtJscgOoDYR+m8euq6wb
	 QMIxswLs8THcplzJPTqzCOu4wxXZb26Aj4OHyXA00YMiIA3S+m9Y+ixKR3z8XHLBGJ
	 q5xbINV0N4azd/XBd1P3L+/WXkSnI82GB5SeYsDeg6vcBJGKnTTu2ndo0fqwyy6aU6
	 iophD2QdhYy2rShrLvqHa98Nfz7IRcKAOyIDQJ2b3hckV+nTPCiDVxa2nZElanIOvb
	 p5Z9sFtWqStqeTI4eweqZCFk6wNBraCdRzL4egBAEYO1uiLjiwZNJwDEQUm/2qtreq
	 bKWsWUIiORuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC798C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997103369.18416.6797242860127822195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558e1beaf684bdf86587b1295139d85e712564923d4fbcc9b0e70e912b4c2101
Date: Mon, 21 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789971033
