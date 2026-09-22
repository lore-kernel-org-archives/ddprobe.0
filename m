Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA66519DF0
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790089834; cv=none; b=F/QvbztM7ckFCXcgBG2eIQBcPYdOghosQQwdd7AM7LopZZyEedSnQN/uHIdxpGF6hMVY9uZ4UWKpG42r8eV9Hg1SAmf17JbeliLS0xJWcAxeaJ6DozrLvAXrIJoacd2nRNRo390lTfjvvXy4UebCuF8E7A4Lihm6NmBtQOUM7eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790089834; c=relaxed/simple;
	bh=TIUbespW9XXiw2VEH3eu36aWpPCiyx6HOVdV+TZOOkM=;
	h=To:Subject:From:Message-Id:Date; b=uGnJAbynVOYDWIFCaqmJH5SK3vhmqKkkdpUTRalz1WcfxZxjuUhi0/+AUzUx6DmJNp3mDUqHqKSF69ILOp/MN68t7bNcFZZNz8zcJew9ipNGlIu7ZYSq17x26mh0pCfp0Fq6M7bxTWwQFcFKgMlVNLZHKfV3MGbBswwnoxSnzM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlNqdVJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlNqdVJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F074CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790089834;
	bh=TIUbespW9XXiw2VEH3eu36aWpPCiyx6HOVdV+TZOOkM=;
	h=To:Subject:From:Date:From;
	b=JlNqdVJmrUtauzvU4R8odc+wwzCOmepbfs/LMY3EYS57yibxOz6eN8XIzVeo0NRaQ
	 NBG9hB4MhxumvulKVaA+/wORFS3xgleW6LCcEp6nUtyIfh4DQoPUgaDIyTsRF2dqnf
	 yzVqxNYp2/XpJMDO3ykA6YzloUHFzUUfUsAb650v97FbwSkGXsfDwq5RCREKxzBOo6
	 AJ5A3doP2evF82aXxdlNShz9o92ktU4scJpioUHWq/W9b0atdVJmQTkR0SsNT1Nswr
	 A/xpW7l57pO9GPAW9D+b94iZfIdEJOXgcuFAd7L668LpzwMjRl0Dq0jk8WitV8Vq68
	 EEqtg1Fv0fXNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C809DC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008983379.14463.5526117826006026147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7f024e5ac4cf1e042412ad5caa096c99fa3a88c949e5fd64e40c6d35afe388
Date: Tue, 22 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790089833
