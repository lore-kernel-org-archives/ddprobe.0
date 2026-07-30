Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A3143C7AB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785421834; cv=none; b=aIrAEIbprfixpzOJzfsQfn7KUHEqtGfyblQLY+vHhbmGvED46MRTc9ccLKL7vvalVxUsg8yGE6QPEI7XE6Jhc72xVVDVSID3u85H3w8naIo1B4R8B8pE+mlP0hyM65cX/vLdQsmD6chQApFgXDQj588V8UGtAovk24CDjwmns/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785421834; c=relaxed/simple;
	bh=fsGKmWReGPiYhST0M8JsSkgFtDRX6tZzYJqNTvoav5w=;
	h=To:Subject:From:Message-Id:Date; b=KOFKa27cvsJH449mv7E5w6pHv36vxsnq998ds6/N8p8Kq42anjRmVm17bCXXp4tgdwnJYoiWWvT4o7MyGL+6fBRclzBrqO4zNJAaK8DTvcMd2j/oLiSx1SedecfScQq3aHMeHRluiSbNS4m1Bldn7VJ2CYCIwLWjPO7x/lCmrWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNHoaDZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNHoaDZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EC8C2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785421833;
	bh=fsGKmWReGPiYhST0M8JsSkgFtDRX6tZzYJqNTvoav5w=;
	h=To:Subject:From:Date:From;
	b=GNHoaDZDsvupUYj4csgJYVqFX3d9LvLaYe0KQLdamVQanZCibx/xHtt1gU4gxTmrR
	 gq1JOJpWDOLT/VoqQWPpSKQ4s2I/KnSROhvXJqUr1qF1Tvu6qCtnlwmgBocUJMx2xW
	 dUbBmIn1OdyvmDsbWEf525hXmPSqTZeRql/pfR6i3COTHZdKHAIOEGpE+bWcqKb1x8
	 TrK96lAnCZ0smyjRgL6zUggyQYG5LafMqUulPiobi3mGaWSW+vGwXNHobq4zlaZrlq
	 3a6YxS1DliasJNsLToRxhTyqN//ilrMgPd9s/xofFS9FJ50ZtI6HXSxOF63wWNxdQ6
	 /s8AJQ1e1dXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B382FC55164
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542183372.9451.10014062339996803305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42cd6781f66a90ba895a95c4a424f83a8ffac1285ecaf588f1a85a5ba627574
Date: Thu, 30 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785421833
