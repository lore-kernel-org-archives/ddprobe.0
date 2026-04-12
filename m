Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD5042AA9
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775987854; cv=none; b=kXcGV3Xd5VyT5mKNds8+eHdDUsOs+C7uhTAPaw0odbltGMgpqjCsBUKnnsOEvPYmiGfMJoLoa2T+lsq6jIWCXwxcnVC5x5nHyfnmu8i4PlrZ1aa4mi3wRG/HP4VWTGoLjkwSN1/t+QtDnRuoAVBkjahuwu/fYErKuFETHl/TDQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775987854; c=relaxed/simple;
	bh=ClHhpV1qaCfygJ15+WfnksQ1NJMcNvqtwK8ZNkGRsbs=;
	h=To:Subject:From:Message-Id:Date; b=dxoFZ/gAMMPEHe9evkHn4PN7+KyR/6b2IHUHzQ0ToaMjYhm+Q9GQQdV3OiavECn1n9zQWqx9bA3oMayEAEFPPSyGQSwGxZbtyLwIBI8GMtwJWVi6+5Un8yPXAtwd7uZ12E9XwpFA8kqLWbDwgOixVsAPmLxOr6CE6IA+I79Vg7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXGiWIH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXGiWIH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8956C19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775987853;
	bh=ClHhpV1qaCfygJ15+WfnksQ1NJMcNvqtwK8ZNkGRsbs=;
	h=To:Subject:From:Date:From;
	b=UXGiWIH31Oifz7YNJ9FqC1OYAgzAlXJSbYUN/7I3Y2BO1gAifY1gX2fFTQ6owzAf8
	 7haof99z9lR+B6ccv0wQK08WUsqqMZI3alWFk0ljU9pXw+fCXHmZh1wjahOgllSpQm
	 lU05Fa1zVgPeVSx6fu4WLjra7nL4vZpa5/8P4wgpqts/xUyT3SveB66R+EVdzgdipl
	 AgzB+ppBxtvgS9iziXLaRuneKW0uK6Qh3DQ0zmpW8BwmEIL0qDEg0TstV/vlQe4KxS
	 ifyMNl5u1xEwfmKK0IHnpfXXlSH8OUFfR1m8vi7vVphT8MIcuRNV7hCGDUCqqtCHwy
	 yG3aLNl1wFsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16FE64009
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598785368.17077.17129678529447239897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28642eea5a7bdca75353e08347edf3315f2cfe825165d0993e54e347fe842fae
Date: Sun, 12 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775987853
