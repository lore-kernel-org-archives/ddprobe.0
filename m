Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DCB273D6D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777815454; cv=none; b=dfnm6fEQeaZbXZlhb8cN1wgOWxyMaKJggl3TXG/TvKKumBM6AlQ66Bto8Wz7OUNA6WetW2xthzBu6KgT3AEhVUwHJhVIujEEHf9C3JVLEEHJ1urC2F//cAqYsBRnvht3EDk+TAmTj517EVL6+XpJhv16u6EHF4jhgQkF2rMrQ4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777815454; c=relaxed/simple;
	bh=w77cQoxw3xo8slE2WuB2bpqb93pSxOplUALy1lFrFoo=;
	h=To:Subject:From:Message-Id:Date; b=Sd9D7qrwWfue4tSfbN0ieKXGegLqWrGyz+Ouk2fd+j2RQhF3XJ4UIjhvFjCiuBYgPS4tVGFxtAoi5cmfWShS3lI9Ns9qyB+L4jYQetRx0OIDd5ca4/NqCP+qSv5gosTMHeO20ezPO5AvjaIcpQivGPCMb6xGwIUk94O5fmvVnYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul3Z7XAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul3Z7XAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C39C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777815453;
	bh=w77cQoxw3xo8slE2WuB2bpqb93pSxOplUALy1lFrFoo=;
	h=To:Subject:From:Date:From;
	b=ul3Z7XAIvLfZZVqzkXymrGMnRBiVuXqCvX8nWw1rdZQaNyIrSZT2aArzIK5L8igah
	 s1HpoxCWdwmTOllPgC9tfZt+Mu72gLg9asc/jRKhhmE3CtV+qKqzCEIBxzRhNuEUFu
	 Mzr5ot5d6e+Kmq0lEEMtyhAjUzz+joOm2TE/+lJHnMMbasqJnRK0+ic9rC+OFUiJB7
	 tEMr4F6pQP/EEu6bdNGDaC9eoaRmiHKd8L0TECBGrD00pEjuEOdDjeyUSBH2tYk/9s
	 yeMKDfMI97OMz+4sZjjLgx5pCcXell6BaPiIkdTbj8WaMsunHYvU8yjaBUwm886K2I
	 fFNqCLlXxk9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0094CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781545368.1073.14686433239476364439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f604ebf66ce0ed676c9430acac986e350fe9d41eee9bef9cef9cc5b10c9d8d
Date: Sun, 03 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777815453
