Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6516B4F5E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789864834; cv=none; b=bzCK2DEf2Q0TAL53ZErfxNFAse69lldCU/NZjxdmQhCxI/fcsKOYZbDA1t1SsuFhnvlgkcIHgAIL/38AuQvQShxai7C4O44wFJBN1Rr/6LqfeXXMClq/szSJf67NpbS1uuyQ7MCsX5Sv9Iqb2MHKSPjNW9fJVg5lWeyzFWDMIZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789864834; c=relaxed/simple;
	bh=q0oPB3b7o9IF6pYGoXXt+Y3hNSIKzCGKGke+v3a+260=;
	h=To:Subject:From:Message-Id:Date; b=PWP45AcTCl1omiuw8A6ZzCh/0rSeHPVQCphj/5kC/dT+dqC2YXzyFqhSUS6kvfmcTXC6mU3nx2uon8QzuYLmAO986sxDaDGS6Mt4KXaCoExtgTqCpDbjFDuyq6Z5Au7uf8mJCKAxRfuskcixPlNPTL65G2ehIhvSsIET8IFFJ78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fed3aU2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fed3aU2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1EDC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789864833;
	bh=q0oPB3b7o9IF6pYGoXXt+Y3hNSIKzCGKGke+v3a+260=;
	h=To:Subject:From:Date:From;
	b=Fed3aU2hXGaCAe7DUpI1hucoaoXnLi/yzzL19sjcPEg008iQoeitrjiO5s/jPbUz/
	 YQRsqPVL3Do/LcER6C4q1+1BhhbDgslmkm+4VI0b5eE84dzmVy3TNQQmFaTNZ1HaSH
	 CfpB4P8J9oWU6UTE0e5o80EEMu93hl13sWmEynypAyKxblZM4mtlwKwFqBaaU9bhrH
	 EEZevrqHIfmEw0gpr2hwYJV+CCR84VoB/kVU2ewrD/L5eqI9rqTGA8X9rRloOgodTi
	 hzxkWPvi+Txy1gXeycWwUhfgasgKoT4rjpeU6rdSpJey6AGF+pjn0gGpFrnpfHIdHo
	 Uoh/XVD8ll6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE802C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986483369.14163.16681812208999094441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf043c6697da6a581d11ae7c6ce5bccf8e37ae90bd5f50e8bca1cab6b0f0ef3
Date: Sun, 20 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789864833
