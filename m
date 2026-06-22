Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E6D3AF64D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782134794; cv=none; b=IFMkbDA5eJd7izppf5U1G4UWe0PtbZFTfnlwLD8pMkzlHLmAvyXXa2OfoKQh8wodgoelmaNNtg42uVRQPrX5EuGjtcHT7+QYZri73wnNlymYgvFeJxfZw4RHJtvNCkDtw9Q3rBzKNje5zx3141Uu0o4VJeRvVl13L/dcj3WAb9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782134794; c=relaxed/simple;
	bh=GZF6LqvchcxLWnp8wObdEKHXGuA8Jw05YA764T/lTjc=;
	h=To:Subject:From:Message-Id:Date; b=ch6V91yjhacI2Nue8RTvAucltgccggIFTNaFPH2PwZA/aIGU+QIt3NAff3wLUNTE4fi5RgpJZqPolkF5DsvsrNoePBaxRs7HOFXYQmGgcZMfDdglezh/2Vl3Svfa2G2W77Bjz9XjH+U+X1cwDoBgFoelVNwa9CWJUwGO9qtmBZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ganxYWtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ganxYWtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA99CC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782134794;
	bh=GZF6LqvchcxLWnp8wObdEKHXGuA8Jw05YA764T/lTjc=;
	h=To:Subject:From:Date:From;
	b=ganxYWtDyvvwq/nPBSWC/1WSLBzMwHgcmRUalhdUQPIkG8qlzQwb7VFczgfXiltoD
	 4No2xE+U6DodsjYQghyx+bM4BE2sjj9GHNjit2K8cowg+PysIjKEDwf6WsK+K2wYpk
	 121i6ObDe/jUrUkaxBzfojEqIgw2hr2SDR026kwcQm1e5fYR2xKgg5fP7/muks4UdU
	 inLBqOGN0PrF1QwPJ75EmQB6WhRfxIH0OH+USRHNvlgA9HzULOuVRtVisz8TwOnNec
	 DlfNQdMCLNJ5XxBvZcNcm1uBRuDbTLJ9s15EO2uyBNJPd7A7TPlSrV/9PHzZjUttEN
	 7aZaTo0LCaqxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E87CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213479374.4173.9762802999934484234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2343943ee1e470dfb78a055d8a7feb9908e9392a9d7d64f1405cdc389f1ab58
Date: Mon, 22 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782134793
