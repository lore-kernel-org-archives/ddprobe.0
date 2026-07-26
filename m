Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5499D37B02A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785050434; cv=none; b=Cpb4uxWCwHOfhcP+W/5n9Eg6Jp4dioqBq+CkaOkUAu+9Eijy3cOJ01PsjKxT670/1uyaKmKxKV1AsZMi58CYY9k/yGfKyzkXFqvDL23tlqkEufHRPHqJmYBCCTBF922mz6AU7tKOh0UrQ+hwo1F7GDjYp2bpnY+RHG6h2s8GXM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785050434; c=relaxed/simple;
	bh=nYEjZxHx60USqQ38w25h3LXgIkQXqGQ/dCZAjBg978Y=;
	h=To:Subject:From:Message-Id:Date; b=ThkkPrDpK39Ae0gNE9CaidU4+mqABXAyg0/pB5UbS/WEcWbBbCJSr+Br6c2DxHRZtVCn0TQwkZhjEb6tzvk45nuNFZEXtWybMPhoCQeDrQpw0DDCSLbNK9BJN/HlItWIlDwezioMdtwmeYu/6egUMOqoq/4Fovcjiv5yWTUiUB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExjxRlWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExjxRlWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD62C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785050433;
	bh=nYEjZxHx60USqQ38w25h3LXgIkQXqGQ/dCZAjBg978Y=;
	h=To:Subject:From:Date:From;
	b=ExjxRlWA2yWKnpu0U9qcuZKs0g1l0fefLw4+uPWl7nqGVJhXI19td2Ndg4eaOkMNJ
	 J5l7VrmmrPWje36tuZli7iRvy1LclQyKOofGoVMkomkpoUbmj5bMrxmr0NN2VNfhn6
	 ksmq7yDVIqlEckpUraHIQJPeFmdJ061ShjUbyi6W1vzePJqkccD9PArzKVYzdSd8nX
	 rK/e4Ak0+t2T1k7/eKam3UN6I8ipVZlsKhahGyCCb8rcViHhhy/9JG4LsT/MGRGjyo
	 KQ/5MC2YZ/ToFEafLhCk1Iq0uCL2Teyq5LA8mJXXG2qgVYD0MoSd+a85vpT1ahcA6o
	 46UqzUyV9+8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD482C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505043367.13933.8392825654684698300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffdb57400991ede9add67b766acaa184c6b3e8e8f3370069859084459e18343
Date: Sun, 26 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785050433
