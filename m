Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E2825A2A4
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751368794; cv=none; b=rCMRm595V1b2vSvDD7+98FPIzlO5Kb/7/LUCc4tWDrQzFUkJ77qDMsMEZ60FB97yiLVj7VPtctHyqxKhXU+LDXzCABrAPuc4NDWRO9tsQ1WHigvCwpAjG2sMBHVSS+aggHwHoAcnkJYMyYzZcVo21yiMB7tBDnM3hfo57ZuhYSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751368794; c=relaxed/simple;
	bh=LH/HxHCT4gjFRlNK3F6KEadFhf3cgldG/ysKJKRRDsU=;
	h=To:Subject:From:Message-Id:Date; b=aW8NgTcvWe14Cm/8ocZ38wG6u8fQbgMDVd+19erHp1i3jf2hmWeri21TfwNUg5TGMk0u3SuzYhwLSaQi8FjzJwoLB785I/NkHfNc0aru9EiIGPQEyXSeyfLLBl4bEddFnzJ1vX39vKt41r1x1rnio9vEHLHfkDf5LtZK5PWVNuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwZ/ACiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwZ/ACiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F89C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751368793;
	bh=LH/HxHCT4gjFRlNK3F6KEadFhf3cgldG/ysKJKRRDsU=;
	h=To:Subject:From:Date:From;
	b=HwZ/ACiNiPWWFk/HzwNUDBb0Rdunw6xtNyVsOySUMJOtq7Ie8MKHtuC0bwMHPekv8
	 nSv8Cr+FsYOI/65bg0++1rdncooPLYGDC4MeAlCFwfMe4CpmurszE5tuF+62eN7kmf
	 W/FE3VfCPd0cOmGXbrlvuwdY3TBpeZdWPpaxpbNsLCQWbdg7oKPai+HKT0/4Yk5pbR
	 2TVdjPUEQfRxhmC+R8TzpzB5dkew1+zc5+NxH1ipFYel9v7VxrkL6rn04pNLVNmMBM
	 l7Xqx3j/H+BE8ErzMoaSIJw7c4S8IcoHPdOMjcbvZp06GyyPPdWDx0W3uk6oTUz6+U
	 c0jtB/RI37Kpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEDC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136879357.22333.14911641903893834338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793ccab2a0ae62fe24a8091e42a5d51778aff62fd5212ee20223a97ca0d7cdcf
Date: Tue, 01 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751368793
