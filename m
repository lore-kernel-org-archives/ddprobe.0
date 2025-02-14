Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5099239FD9
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739497134; cv=none; b=SgY0R+B2ddYoNmaQFPPJG2rZZXn86aFhwZnxxf/FnZTQb8t2hrtgSMnPYJsYqjvvZpaP3XMdR/Nyc/VJNZa9QesJ7lW8nTQ7Y/jPZjVZw1IdiTMMVFF5QQusqyXW5F9kz0orsoP292Qk0VAqfyNwN+6tG5lUgQoa9Zfmy86WcxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739497134; c=relaxed/simple;
	bh=KTwuIcgbsMjxAfRtT90DDgqm1m4xgY+Q38bXCDpJvto=;
	h=To:Subject:From:Message-Id:Date; b=Zn7XLeVuzRo8FwhackolSvWWPR0fe5UniobGVfU3Uii/McxYBH/n0apzDyMTNLRFU1I/Pf7WFFAODLMJ8SNv9sCv3wOqz49pk6Ia8reK62IVxA7L7eoz8waodi1xpqr3NIPp3lE/T3V3n+gsaD9GaEBRpkwCpyKUT+vRgIOGrnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrsZEnqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrsZEnqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DA6C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739497133;
	bh=KTwuIcgbsMjxAfRtT90DDgqm1m4xgY+Q38bXCDpJvto=;
	h=To:Subject:From:Date:From;
	b=jrsZEnqBRJexesFYArSpLqeK8whQwHfnmdXqa9GbcHGlYWgORZHSe8hxJPDMAtCiJ
	 lIYkzy4OFEKRuAUZs7c8bzHIp1f0GRB/sLN11jgHdTMiL8b6/KdOba2BNitdloyoX+
	 nAoe8/eac6MjSL4muUYHSsFNY0PyPqPODlbXidH5j2VlhFyQiQHUjJfAkdbHVPHGWc
	 wClJlulN/pr3vypLsHbdSR5MBO7yNTkVKcewLZcoEnPy/OGpl7Njkjp0ma71t+RDCz
	 24VHDp9is3Nbbh1q95VtixwRVKr0Gga3fJ5ugMgdMqDg/d906iYHJZW+7N694nxZdj
	 YEgBgXWywf+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C666C021A0
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173949713362.17064.5017877723811610756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ae152108d1cb535a1b924437b37f2985031244bf1d6c9b128c39be8a4550ee
Date: Fri, 14 Feb 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739497133
