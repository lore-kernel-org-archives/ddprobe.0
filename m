Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A981F4703
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755388194; cv=none; b=kUunkJrA+5Z6usKq9s/ZgHofuh7Qbf+Oasv+Fagw+GtcD2oOCCOM2UJjGJ0GAGiyKOgz8EWMFUj88naDbA9h4SEoovSQ4220Ogh7eXJtLaGuxVtXblZPmm92XewmTvSnevAe58a4dMdD+rddGk0Yjx8PfJu/1KNdjzwCmJGYxr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755388194; c=relaxed/simple;
	bh=byKOJTICXpMmqJp0T+sSTDVW9p9tfgSAB9wgq1Tjzqs=;
	h=To:Subject:From:Message-Id:Date; b=BzwVvrrY8D9FbHPAHPUFtXToyAOYowVd+pFXy+x4sCsHq0EjYhWTjaBJ/4Xyy72jM9d32hf+V/oN8PfL+C2xGWoHRpO4KrmurgFGf6ruaM/TIETP9iiPsORx2zNKtkgam+w0arYBFzQnElPmkxMS4joMud1UGGNy2gBKx5/UEcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STigRxfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STigRxfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A209AC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755388193;
	bh=byKOJTICXpMmqJp0T+sSTDVW9p9tfgSAB9wgq1Tjzqs=;
	h=To:Subject:From:Date:From;
	b=STigRxfJ6RCeEfXS0fLkJzoQkhNWjGmcCbIb9e6ZetXD5dQGKreZQOiXTi+NOFpLm
	 xppGgIlwapihkJOeenYTlGY+SLuvo2NVoiTOj7KVSm7bI90mAj6r9xYquJd7PHcc11
	 naY/csPRalNLAD1qm9L7L3AjsomoqBFuSa2zKpdDuaAyERIWGVUaoStEi4FCSa90q8
	 xCsBPLbCrqDOtKWDXejfRW2ydyyMBCVB5pnV0KMQvdXOiyR1/e9oJz7JVUknkwjv+N
	 CjnV7TpvvlHbN+tv1emmEL7Ge3GfNyaKMQSEOy1FPTDdSsuq7MVKXwlcU5bu9oWzBL
	 0vyfmKg40rxcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F83CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538819357.25540.5829925951375085506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68477deeaa3460d66a2af91c914403303f7be6405cc4d393a29394a4e1d35380
Date: Sat, 16 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755388193
