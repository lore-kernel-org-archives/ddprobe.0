Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDF92F9998
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766473434; cv=none; b=sJTwYT38YHfdsawBYTqfeAMSJrn3UMD0KSK6tlXA8qg6jeUYgFPDe+Vl+OMQRlMdcdoPKNJtpU6o6m9hzBfozQ/j3/B1165RJXj0iJb1WsgrEvE6wPZuG/veNs6v3qlbsKb5uzuEglLPesNdzDeKTb4GRdO1GSnjzZoM6b57cGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766473434; c=relaxed/simple;
	bh=ewG2pCdNrZarOXb5/HpjWIYEU03ZM/LgxWIv2yZxnFo=;
	h=To:Subject:From:Message-Id:Date; b=qCj59pfdkJNsIugcZVM7xFXQY6a2gWy+WQ4eEPuYl6Lh4WdRFgWxqhDGLf95jT+m6M+OBWxdMrzirWX4Tc87jQZkDpT5dlSC44g/D1DaT+wvBAZXQiWV2/n1ePGoT0SLlL69Ocl6iHBH+8UkqYZLLRq7ZZIhcQXrHHrOxka/8Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8ZT2EjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8ZT2EjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB23C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766473433;
	bh=ewG2pCdNrZarOXb5/HpjWIYEU03ZM/LgxWIv2yZxnFo=;
	h=To:Subject:From:Date:From;
	b=F8ZT2EjTgULDoAesv7EBRoK3+eGKqMB5siOjXmyglokYC7CmRYau83Blfbi6SXLfq
	 SesLwdyEPAN5ATVP59e9l/QEGoqDn4nR70XCqVd2/5J6GoxpOQOe4OBOhuUuhw5CLQ
	 8LYaY6BclNniSgQclq2+Y36xSBBtv+cu7GO7v/Gf+Z7e6gCGsC/F12ROYjqxXkrAqp
	 /Abt1VowGI6D3NkV6BwCAUnp+D1v8E+TzExOyCP9FzUZRdLWuH2Eb0hejeJRsW0qEL
	 3pQMCQ0zAhRVX+eFj/sNAQkIqxtowmY6Ge8Ut/tkYCgmnGe4S2BytOyVSU7htW97E8
	 hSuKB5bYtDZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3BE6C610
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647343357.11454.10949956862623630744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874c1b9e497e65465ca6b5107a8c3abd98e9faa2a1745a6299250421c36f824c
Date: Tue, 23 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766473433
