Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CD01D88B4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755571194; cv=none; b=S9binuYva+WAp/piFPsSwjV2W+upK+LYyHhtn3ObXGo+dGhsyWvZkI/IToI2a/v0wSQ6sTB7nD11y/q1hQw/FoIRqEXZBV3bbvXEargnmFsxeLpBJuZumgMFF+TPgssxVLaUGd5dpChmqt+dWBoY3nIYQTsJK8X0/XQ0ZF1Oq2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755571194; c=relaxed/simple;
	bh=p/Kohv7B1shJBKEHcT3xt3mIXebBQBn5m16z+v7M64M=;
	h=To:Subject:From:Message-Id:Date; b=o3XMnWL0T/hbVbWCHn7RDa5L/lOvbu979bcuS2gR9bS64cAsRlTAX6t+BUfc/mJBpNcVse/R6WIYzHPvyncG8cht5DWHDOPieWZXdJUjvrQ8ORZj8a1BSGFGsHiYEa5WZL/c5we0ogHmZdy7KPMpYB7HzfkYNIbJyW7ObrIykKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzihsUu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzihsUu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4991C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755571193;
	bh=p/Kohv7B1shJBKEHcT3xt3mIXebBQBn5m16z+v7M64M=;
	h=To:Subject:From:Date:From;
	b=DzihsUu5Z/9e7GSEkUhLFxvFwbSaLs0riF5Ow+ug5YUFCFBdJnrstC6YnVD/c3pgT
	 +k4jhUfJCCvSH7wNdonUJDzar4WHg+fJg5qewiuf9eYdAdqEnchfJj0+3LHpir9Q6I
	 K24OzjW976pCEmoOQ5L1+0bmARYLa+h85rVm4TmbCniGReZygPr7eS82Po/0mrn14a
	 CgMz1b9yZ4muevKYpPzmhLrnt5ZRPJ+rS1TSrr2KTaNf41eWMiTtMM9ZU+5ZRLjz2o
	 Zd8uXaxNIBAgrMW6PlZkD/uXU5eIQlqBU0b94qF5nvzwa2LCgl/hi3OkbL1ztq95io
	 sk4dMXD4R64ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9336DCA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557119359.24230.11535985551724563673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c910bc6a639587fbb7b2fad8930e3a200528f1b75c51e329840dcb3925ac0e5
Date: Tue, 19 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755571193
