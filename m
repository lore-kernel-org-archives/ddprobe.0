Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404DE37E5CC
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786213234; cv=none; b=mcHGeJnfilgDc7hBDYFcwqAN30A3hmfVHPn//+VuSoHNqg9sIQKVk9pXvT+06z9cB986D3+8CdAI3LXQ6nqhc2XlQC337iBHsAH3uACiH5nRj52L7JcKh0gEeRyDERF5TU+X2G5Xua7g4zwDTr4DBvI2IYz5AblK8ztkRXQaDFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786213234; c=relaxed/simple;
	bh=MlWJ19d7v60zLBDl7srfxq3lM85Y779pS2TVtt+GkqA=;
	h=To:Subject:From:Message-Id:Date; b=fkttUJbaFqJ86OT5k/kg0GUYvn9rq3jof386BkurkTK/8ceKFNV8dohRkEalG4nux0WA000TbPQzo/0gVt0moAoBEszevO1nwW5MekT7kQnlGSAxjGVVnXTAQsWbHtZIkoGm9ITuhmbe9Utmf3y6U6+a2zWemS9sd1UnxqYQB8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZZSdIqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZZSdIqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4160C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786213233;
	bh=MlWJ19d7v60zLBDl7srfxq3lM85Y779pS2TVtt+GkqA=;
	h=To:Subject:From:Date:From;
	b=AZZSdIqDUDvNXcioezGLpuKqxNFr/xj43T2JGi/oWtx8b4RlVDq/eqc/qKkXZnVoa
	 yVJHLeQ1cJOpZiDqEIhy5kyVQNR0xK7WScIfvBgwOdu55IuGTUntPyeE7uwfmWHBcB
	 xchwPpQ5gBOXqiiFHHcTrAigX24Iw4PK+zNG3J0V4jTCegwLTaUzBxjlVBaOUC0hQ+
	 lwQ8Ofkc1kgIT8/oVBFoALMDqlG7rP6CC4CfXdx3k6eKOLRp7x/Ta4nymd8rdAQyG4
	 unRAjs0s4CdJ50pnLBjYX13XVjcTiI6meFNuKdoIzz24HqwbaW1HvH2c97nrA1BRO3
	 RszT3o3mg+6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B205AC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621323370.9043.11503561379693310283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fb074ed2f0b733cc45185f47cdfe6a2086932744224cf59340dbdbc6dcfd40
Date: Sat, 08 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786213233
