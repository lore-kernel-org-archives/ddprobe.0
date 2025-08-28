Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191B01E8329
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756388995; cv=none; b=ln/3YeE0PyF8iwWGPZu7hZ3vx8ixUhVyhoURoge/J/j/t657Oe+avlwXplvl+2WUK2/J7w1n45f5m1qjnW2bNIwwnMCE+DkgAt2G/doMDukKVsQcIsYhU4C2If4fC6G/48HA1AT9EWfP/A+HogkR1KlrjFOYG/b3xAn4tdfdUvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756388995; c=relaxed/simple;
	bh=zj7LVQU1F0GhMsxw1kkc0+VGC2VRrsLGlvejhEqfq0E=;
	h=To:Subject:From:Message-Id:Date; b=ujpy8vmLceyrtS92+vKUD/7nzrA9196dvGLi5vZn0QlgsAKfZzo7B7aowlMzvtk9yUTvyQxovjZnsv1jaUJT6h4DfGedbc8AENMKYdxOJkTU7JchLeRkFp2SkSwy58qdiN1EVdzCj6g8ZyOS6c5tAIwTxnrcB7gxTaO/lgbgJZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/2Hp3Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/2Hp3Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A68C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756388993;
	bh=zj7LVQU1F0GhMsxw1kkc0+VGC2VRrsLGlvejhEqfq0E=;
	h=To:Subject:From:Date:From;
	b=k/2Hp3YfO19JJfvz0Wu+7VewQhyLRaw0objw/nFZ6sY5rgPlLjdY1t+iYEtpToUhH
	 sY2oEcDEtbAJxkdv1AClggcxuhb5+5RkQEKhOQ5U2zmaNnpTrvwWrrPb7voj2JrMw3
	 vvTvEQReArw6azR7ii8s+yWARHHmsRG4fjkSEaOUbQI5WAUypzdK/RcnSd/yGIdx9g
	 WiDEcQCWRUQFfOt32kXX6h91nhCIWI4cCpaxX4Zu+crv12wd7V91XW8aXt1Cgp3Xqc
	 rZ+Cfz70Gkrp5BCDxzYtEFUlUUJAeCWk3dB4dB5RNoURXojhUQcXRRzK+7+KCoB2Wk
	 wkbm4KxZQyLnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BFC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638899358.5082.8258401326117322481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225389dae6589ee548667cd556671266b453666478e4510b5e2c016580446bb7
Date: Thu, 28 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756388993
