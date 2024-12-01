Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143BC5789D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733087154; cv=none; b=IJvUXVc+RR2do+9nYJl50HQamPRo9UlUJchk3huDX6u6KbPJ3j9YJ/sD0HcSMeon5md73LFnLC+ln/pxMmxcRe7SZp4YIivqjZ34R2OkjUGT628Qg9jV3ipt/IxaS/BTXhd9GVXyATVdr2NIAczBRVjfQDXv+InQ1o/WGKlDM/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733087154; c=relaxed/simple;
	bh=rdWyTTHUWXXWpdphFSBoc2aJuUUr4z11+YQEu0koOA0=;
	h=To:Subject:From:Message-Id:Date; b=Yf+sFuS6i1OV0QfG/oSs3EVh2idG/6KZIKrbPgxv3KtRpuqIy822frFbbGo/w6b4DhdMfB+ZaIvHRbBzjgrJbCzJGMQxbN2m+KsIfCLQLApPebJAvTethzQURMgw61rq7bEdOgiM+a2gTVI/ExNVkwod5sxOoc7E++FJAsQZ2co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+3uQe25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+3uQe25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDB1C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733087153;
	bh=rdWyTTHUWXXWpdphFSBoc2aJuUUr4z11+YQEu0koOA0=;
	h=To:Subject:From:Date:From;
	b=W+3uQe250TGBx9XK3IIFAUtcIakxnJcP+hiUwOMLmQxsIcNhDkcIV9m5iuYt7KxSq
	 4FLKOrDSFvcWaOhsXUliXkVUkKwzNbuAjr01pGPIZ+B80AH7LtK7PIJ4GNg3/PHBOR
	 Thzbo6JZF9InZVNux8jIv9nf2b7E1Kf8OdyNOtk+rlxTTxBMDH+Rm8FG654hFThbl0
	 rUinnNVBzU07d14VXFbRYJxvzoMshWGy3yP6HVxbX2b50HLpWPmU/10uELzy4uEM6S
	 dpV6PWJVF6bqIovDe/ifcELWsDrV4eQdUoDcmFpvp/JYqzr1NpZ1XtfLzO+Kfaxoxu
	 qeHZsWCSqStjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB2D4978C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308715360.18568.17510352030722249260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0443c37843bcd7fa2559f8755de241b003cd5189a1b797b7092f721188c41b4f
Date: Sun, 01 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733087153
