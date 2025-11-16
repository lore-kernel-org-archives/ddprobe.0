Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D63861FFE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763332914; cv=none; b=ceb34KLnAMGYEMno6dQdrE9+X4v1yMgUtwP2em/rAZQZCEizxY6NXPDIWfSaJSLaXlNOnDLoeIIQi12Jjy1X4XjPtZV/kmGcz8DUdyTlfG2SDrHYA0oFFCpiOaMO4chcIMWu0YQw1uZwHLpta/V8xvRbFlgk8Ftp9+Az614//7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763332914; c=relaxed/simple;
	bh=tHieoUeJ+MuANTaPErQfCeC8dMrpMmfsqZqKv7hQLU8=;
	h=To:Subject:From:Message-Id:Date; b=s98q6sODbhIwkLNv56W0xq/LJ+boExDp1W8I/taPLCVnPravTF9KRyHcIaX5UtaGE/o7zhh3oc9fPLOD28CmuFXYhLgNu0tsBkvo2hscdMBbcRfG3hdFkdLmO+ATV2pXH6tv9g66QTd8t/qlqqcFEJeWSBdhMYBz5+YjCcAeedQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHstpgtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHstpgtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4452C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763332913;
	bh=tHieoUeJ+MuANTaPErQfCeC8dMrpMmfsqZqKv7hQLU8=;
	h=To:Subject:From:Date:From;
	b=pHstpgtmpSqafLByVW8j+upAQk5vax2WISqV7M2/Fu9A2/xfLVsGF01jFkfDJig0H
	 bDzgkdrZCtgMhel8UloHourndFQb/v8x9ZsDZosux7OaUIyq0EPtHfzVyCcv4zLIpR
	 ktlOoALiioNvjDXdp+IXYOm24S8RRqGNJq79Lz6NY3YKoYAA8iDQfbROgXTwlPSllm
	 XenC4r7ly65kiRvR/sfcJQ8aTxL6qLeYVu4l0HFAUoHAVHJyJXHZ3CAHIozMlGlO86
	 ik0Ufp12dsuHRunLQsxWG1libeNZKOr/lkDmolMAxeqPdy1Ug4OSGUacQk/Mn7iOHl
	 Bna0pPy6AV1Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E9CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333291358.19386.14857641223587301922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4900ce42dc39c38f9ccfeea0e3a131041475f307b34452dc513b03b210806333
Date: Sun, 16 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763332913
