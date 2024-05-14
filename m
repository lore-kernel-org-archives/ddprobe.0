Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478EC42A98
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715690543; cv=none; b=ZwLiT3X/nUA/OT/poj7rRMBFrt62+Ow2wawyW6zsa31lY34k1Ah3aUwMPqKZlO0CDGWzCfMkMjeL8GIsrBjrgnJZERpBy4cik3L0HFLUgSfwQ4gBD8t60ff41JDeb/bs819ea6qGGPIEomG/m80MQG577Q1spmb8WiXCU2EQct8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715690543; c=relaxed/simple;
	bh=bwq3j2y2Dax554T9uKcZHyWiadf3dwaMDhlm3N/kTNQ=;
	h=To:Subject:From:Message-Id:Date; b=K1+IjUlupvMmpydlnSap1Cu6RVl7lFS0FseWKKAefnapySnTtYhJZ59FmzElyaAoQCsi0LnyWZabexmR9NQxOjCV0SRm1MrWsEZFFB5+GDtKu1oCGFrnZ8lcwyG9UrxGqH44CgGtAN/cHaYitPuTTdzOKp6HyDpqCd9iQ7p1yrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAVxa1io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAVxa1io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BEBC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715690542;
	bh=bwq3j2y2Dax554T9uKcZHyWiadf3dwaMDhlm3N/kTNQ=;
	h=To:Subject:From:Date:From;
	b=nAVxa1ioWgpzGYFGlSygqP9yVsUgvt7UtHjxzfhxy6rlVVJfOh4h80q7kc6u5AenI
	 EULCB9YsKsfGYyQzw2oZIPHTqMprpIDiDn00PJBNGwL08WzxiMd0b1x6ex6wcBWIkH
	 rFIFlKJ7De6v2zSs/kea4Kf2zPHtINxsIjL3BucyWFuMbkre27XBUix7G66QVdyDFl
	 YGKHypTSSdWPjsrojlGEFW2EY+FsrN+8KUJCR6vJyovRcFFBnA9bvm1VQZUg7HL+X7
	 PXAoesqW5S2R2aANBz1l1H1eXqfGVywhBioPowpQ1/Wx9FZlOk3eL1lJFlroTXv4Qi
	 ShqxfJjLINhhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BF3C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569054276.26757.10537625151611500820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e4e2ad18f938e8b9b2126f3dba92477387283af0db9aaa6e901d43bfe1be5f
Date: Tue, 14 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715690542
