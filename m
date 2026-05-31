Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE512727E2
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780220674; cv=none; b=p8NlgpSnAkjM/o3N4QBiB+j9XMqRB/kM6J13vawex8sC0oDlggoLRLD6lA6tEZQtCNLnsqvndxF6kG/QG4d/U/qEhCG0k+UiyJKvr3YCF5xxCYG4TyYDzeQi0LAuKpBuIpdNK9kPw8V+RIs87WW36DJW4UPvTVwjGXeHx7yHaF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780220674; c=relaxed/simple;
	bh=z2a/kVgLVSEeuOECH0BNBMw/R/Xv5ATUsE+gWcxq150=;
	h=To:Subject:From:Message-Id:Date; b=C75zYR0IvxKb7VFNJ/MaiG+VnkwdG1h+pzkGJrOT9GW2Y11LCAIaKu++QhiCDrbb3z1zE75KwTz7wUjG55p4ry+CM/jdSIpC9UxQQAhcpB9MZ4yAIxmBi7DCswHDHIipqgMRbXlwz2MaVJqEkTMz3AoVEqgvykFnA7pStQv8cJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPYhaqN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPYhaqN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B9FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780220673;
	bh=z2a/kVgLVSEeuOECH0BNBMw/R/Xv5ATUsE+gWcxq150=;
	h=To:Subject:From:Date:From;
	b=nPYhaqN7PyTEYcUyh9kvexRn56IqWSHDQHO8e915lxQCayLb32+LTFHmqFkN17LPE
	 0TWdpRiEsRf/El4wKmf4aNEP0HUvb03IweCsOw6DekQFt6OOFLWDz4KcKh5M+P4K9b
	 tjzUxd7DFE6UOmWIVfbNN9OAJTasN2flEFjVgxtu55QIp+XCyys7PlHrxyemjtgRMj
	 tVa+/nWVYfjVZHvHCXLnIkqz5POcBFEUNzAd80/ZyNftE7OmtlcHKR8REWw4RAiP5V
	 4ehC88twzIFiHB26ZbFR/EyIjHP4ws6HNDuF0OcJ71RlIHGkUArNXJcSnQWu4/ddrZ
	 bSF+usrcfx0Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFCBCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022067368.15554.6304492660300157051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69d13da4288dda719ac09872874fa4587bedbb94a28b689e19be62f20238d18
Date: Sun, 31 May 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780220673
