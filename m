Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258EA14F70
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755973794; cv=none; b=k2MgNxmCxE+lK2TlLVilOmkmktE9I3p12k0zFsoS1BJqar87TwJ2E0u1HlW2A+GqMwdxcVSOLowOwQeBc5s7d1lvzF4yRMOBKk+0/Yw78qPV6Xb0BqcFphherg3qGedycV39q+pH6BNLU2Zl4J358bOvwS3S8UEPlYBXde4LaVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755973794; c=relaxed/simple;
	bh=sXdnDZUZYbH6eTEKfGDHILV6VIYtKB1reKS1SUrTyfw=;
	h=To:Subject:From:Message-Id:Date; b=WXQJ7aqznYooSQbe0t9mSIqtFETsH6fs60+rbiZN0j/N2wYz5v1Ohn+WJ/EzybMys/vyWMIEOCvpMbSx4u7ken2PJxuPbI20lygmlcvnFqYW95GzEYb+B3Ojb8XwWknCtdmuOR9bpS7DUWpfPoUqUpE4AVOyJLvEquZvAOG9sBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYFgqbG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYFgqbG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755973793;
	bh=sXdnDZUZYbH6eTEKfGDHILV6VIYtKB1reKS1SUrTyfw=;
	h=To:Subject:From:Date:From;
	b=EYFgqbG30PzR/6Y7RE8Mqj4VKkeUusZSFMM0TKsd4Yak668ZR3WoylQbQzUs82Nt3
	 GtvIz4Ib6EA4zcDX9tbN9jmBjgTz3xLS3n3wAKUvts+CK5GHgTmAqy7zElf3nWXIKP
	 KCbMEz3HVFvGKyWTra6sKip7idfkIUGi+I8LdqTK4sF5TAiHH/eV+yNFNOCCpd2dDR
	 kEg/1PPGeXzxEB/OS+7Pln9UOrrY9uoYoMVvA/S01whMxsNeRv0yIqvpHyBQmDJzox
	 4S9OFQW3/Ie2EtdQEpbr0MTiNbYeg/0uvJmqnMN9oPWZjPsiUzY6qfowDXCHc73FFx
	 sbmCTcm8c/sbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F670CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597379357.2468.7441500770551111825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2e062d6b1067dfdee3b576b729fbb6107242d285a6d855e9fec49c12d50e88
Date: Sat, 23 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755973793
