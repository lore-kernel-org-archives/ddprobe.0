Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D23152795
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714488143; cv=none; b=EeERpjp3ime4SQyS+asaar4wluuQO+yLeT2MDLc3BjJTuXICysJnDpNh+pTpIV7fc68UsT08KHwkolbVlAXzkXiZsR6TsdbjqaoAlSJzPjgq8RLmRTWoJPcdJPJkNbx7+xnMgcv8OtXCDtLb4cmh+Wk98PhNXHPbPm7IfE1NDTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714488143; c=relaxed/simple;
	bh=4Bl6m2AMYsq+uzp73qyE7HTaI3YDSzSSj6uUibPtctQ=;
	h=To:Subject:From:Message-Id:Date; b=Z2Qs7A3Az6Uwln9bMUo+5ICIJQw1AxSqh/BtdadYeNwPAYihJeOOWNfrqvcq0XLyTLNxUZwhawbx83i6OaPf0LY3HTHJcSdbmSA/FSjvoB0d6pnsPlETL/7Nirlkg/lxgv3fIaZTqSbOSkEGjn7kWYgtUa6Xl5iq4FtP2woEAh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNsncsT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNsncsT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D219BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714488142;
	bh=4Bl6m2AMYsq+uzp73qyE7HTaI3YDSzSSj6uUibPtctQ=;
	h=To:Subject:From:Date:From;
	b=eNsncsT35b2kdLPvq/OzJbsUlVF4t2azDWO1uekVh5ncUWoyS/FAx9vQBOHjep+9v
	 bWIzAF0SjdwFZFSoN2UYumCc4X4JWSj1T15OA5np7aUNGskeEQIsw+teeFq2Ftbs4M
	 wn3et1Tdn8oIEqOoLjKTJX55TKQ3aF20WcJlNs8d72Rl4/IuC4hEnFo366jG6gX/jh
	 3f9MVppNQzhFzDRMWbAqqaC43KTmhBTku1WBABNPo4ArglUjNuTMHcavLKx6pCv/uG
	 GloADn6wmeszQv4HcrYY6bYZVXUU9gOzpnY/QUFD6dxBaRYK8jL3gKVyTcaxjC9CNO
	 FYeyjc4GsBojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA25C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448814276.10311.15928705935940554617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fca9043db82dc49c204f7054cbc0cd6bcf9e3f7ad3c7d03b8d1db08aee6a09
Date: Tue, 30 Apr 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714488142
