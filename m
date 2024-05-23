Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D2C111A8
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716476003; cv=none; b=rmnPdgiBrZLVkqKdpvTkrt64CpEzJ4W1nivwQ3JMonRSTN+Ns9VqgHSXGba75PYHKmfYZhfc1Hw3KtdFR55qzWUHIO/3aiAIZH8+4ZpwZt8spE7u5RkqrlMbsY0H7EaV92e/VpBF0QwoqVb064p8YnjKNYRwWP2uAn67Tp/B4CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716476003; c=relaxed/simple;
	bh=HS/PR30xpoCiSnJkwj1fPMR4izOFnVslZ8pWV8ypuOA=;
	h=To:Subject:From:Message-Id:Date; b=AirGAWCDWGrYcIkExYqpTNcqYm7rzMHWAtsTQrIQtcPcvajXvtuMcclBkaJyNNT9xNidj3sLZjTBMMHt9AkF3d4Nnrq/lEKW+dlIgymEdW4qdNEA8oXRHd537a6q/oSPNAXYshPOL65z73i1xCUmBfwyazCF/+mjwgLhVXJgoYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIsnBA1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIsnBA1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40DAC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716476002;
	bh=HS/PR30xpoCiSnJkwj1fPMR4izOFnVslZ8pWV8ypuOA=;
	h=To:Subject:From:Date:From;
	b=DIsnBA1Iafxd/lcWp0mbtwkIRJpGpbMJPCAKX8MUinhLZaf3YiG630nbaRQC+HswO
	 9CYUugzZuGqLKyGy36ShBPFGrCjdHjnvzakI10CNCNFpxRJEOz6254+W3lj0ZYwQ+f
	 +BHxcAlqqeoCXdJ+wgYMwsjyEwMC/SvA6SzIo/8cvhkjtc2Bsa4HLrop1+8gIZwQoA
	 C1ZiAUkHZJoxKVciza2gOUjsz2m9wYaGkek/rogsqAfgbHb8b+4ehEkKzZGTBXNSPe
	 0M7thqRPBERF+KjVmqBmJhyzbHnq24KnyCLc8gvxaxcshMVvkrYxc1FbbbVqKuSl/J
	 MIYMZox6M+JLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15A7C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647600284.18643.13917038424859308136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d815a53595378bc4ec24c0e536ca3bc10c3ab7bbc8fa364ff688cf051bdbf47d
Date: Thu, 23 May 2024 14:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716476002
