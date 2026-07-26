Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1781AA8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785031234; cv=none; b=AogSBbC7pV8++HXA2IV4hLI0ZOlZQGNRUssBtxqJTLO1yyiyTOl2MJku+DU6DPES9uvicDSNmLy4TiGvfcLSvWZ62FD/fH+GREF2VO2Y4bYHdAs9i/RmGx3NJOkGaTlNFvHRnxpc9o+XeL9ugWlSTyTuaTy+h+2ZHCb6VOWL8W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785031234; c=relaxed/simple;
	bh=CtlAhXEFHkUquJRYP3uJZVDV/DjZCePuvAAPUr2nXWw=;
	h=To:Subject:From:Message-Id:Date; b=mIlZl5wvkKh5ZylrmyyD/kh6O+yUwelbXAR/cEGkpYqKeXOFC32NOUG9aKv3tfprbjtjRwB+qlj9a9RcAZSlq5oMx9Q9o5JLK7OcwYgXJ4YeDiOWoB7B8wGwriNNpbk7JyEL75/oosraIbwmAjL8BANjTKftR4Ik3LHRgqW64bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS3dDWw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS3dDWw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D472BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785031233;
	bh=CtlAhXEFHkUquJRYP3uJZVDV/DjZCePuvAAPUr2nXWw=;
	h=To:Subject:From:Date:From;
	b=SS3dDWw/Xxyn0vkHzkGFA5NeOLplvyRYLXy5BRbzBq1n1sqok6ZrmyHqMSlh+DuUh
	 Sh+eMPWap+6OKLD+suAi3y4vQchOj68nnDL2gtO/SYK0loNKE+Fd+xXc96N+8HkTVl
	 rTyA9hgLjU3MyM+lzGtgll4t+JOaaBCMJrhbzo8SaCyU3m4/sts35r4jASJaRK/o9c
	 Hxi7iwre/dGj7ancFuvXD4niMtRVUo2Cg34yVCrXCBInh0FehHc+NK/JtF8tZS7QNM
	 h4bJbnuU/iesdIPAQ104IGNvn8/FqGb14sCMLOu6OV0LIYv+oM3LIlu4KhTtpk6Seu
	 x7JS/S/j/1Mqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDC0C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503123368.12441.7605804791945148097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a71c8e822cb420ff12a5acb405fd757b28834167b9e9cb6ca05ee11b5db1c48
Date: Sun, 26 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785031233
