Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF868C1F
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747271994; cv=none; b=uKu273hc1vUODiK96OdQ8pd7XkMtLM+omADVvL1hTofahYM4XFjpSmF6J//94y3uCDlpTv04cO1heNbeeiZeRACUNWTOvergc7WqzSvEGp0xDMin4Cx2mu1VQCY7fnnSgXieWjvJvqOCEco392Gn0SSyZB9dXYO5j4evNGeGlQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747271994; c=relaxed/simple;
	bh=Wfr1hf6BUwn6E8Vd7vVq+KvQtkzsMCVcujrcdyMSIWs=;
	h=To:Subject:From:Message-Id:Date; b=pl8QJU6S7grdYW/crRY2NO8sEz0g1m3WN+4ffh+uvJfpKsrYHoUCuyZkhdN0wL4wHmOU7wdaRd5XcYTw6+Ga3evSo1owHtpBGQFDf4nDxttvZyC0Sc482puska+7/93zwOWkwypO0g+c/JFcWNU+nWfE+WR44SJGbXDuIHfCOUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgUcX+5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgUcX+5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6992C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747271993;
	bh=Wfr1hf6BUwn6E8Vd7vVq+KvQtkzsMCVcujrcdyMSIWs=;
	h=To:Subject:From:Date:From;
	b=kgUcX+5ZnTAnd+3BZx/+l0lT/e+r2TMo8lt7SiYLnE9khKvcRDOf+lPnF66F+d7lQ
	 muW0Rx26KUZl/lnhTRcAjlRCVvtAM1xIOlFPuma50siUobKfdc73o9oJorF6DbGuPA
	 uNJYr6tnwN7DKEUlsWgdeIfZywWVoOTJtGB1+SHlRWLFGaXc+GOl2NvOo3T/c72ne6
	 hWfajQNdjP1HezSJr2uwFAslEmmPWzKYtRVvEJkOHy1vHOBoVyI0qG6WFMPaJHHFbh
	 Kj9onGgcGzAsSIZj74OXf6o1cRpRNaGzaPKBCISFsunfvLaCt2AU3Lsffq5Hz4d7NH
	 EKLSVcPJVTJyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B7C3ABD8
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727199357.12575.16943827756330401631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7fe622f882ec854b50dbbcc9cc1dcdd2d99081a8ec6c4eb8f97e377c468071
Date: Thu, 15 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747271993
