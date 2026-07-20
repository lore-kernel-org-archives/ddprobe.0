Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6481DD525
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784507914; cv=none; b=avHjM9WnqSV2l3pLi6AzUzZFtwybByvOUF538ySTll3itoPBeygmB5xwStqvJ16Kdc8Zc+ZksZDwUyOrCHLHODO/eKMe++abnGZ46Iz7AKteCcw1ws+tQCEba37bVglr4ORcDsKgtS+fGc3mObtCZq1G3NTHoVHYmykC9ef+j2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784507914; c=relaxed/simple;
	bh=na5tpG826DGin4yXzq2h0PE0JBUEnQzXVZfz7xUfP1Q=;
	h=To:Subject:From:Message-Id:Date; b=WTy7yBp8H8jEpQXP9XpABcFsjPFMHw4EMZCRnP7GqaQtUDC6TVL3BqICqrarQ6kJacMcQLivmXM6ORZKCLh9YcwdAD25QGMvteKjCNBnACX+W06BFvyGCAJRfEPR7mptgodBxOI5w8trOn4iAAjE4ZmrKq/wbd1W1FHdGm3+8NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkAKZ0Au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkAKZ0Au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36710C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784507914;
	bh=na5tpG826DGin4yXzq2h0PE0JBUEnQzXVZfz7xUfP1Q=;
	h=To:Subject:From:Date:From;
	b=KkAKZ0AuNCHBRyqnImAuuML7L7Ik76wJf5/a2lrPDnPwEnrkp7EiD2Ow3G0xTSrHe
	 A4bszlqE6V8ZwaNzogFD5Ch4+U7LsYdC+svAKB9aBRysRam4i9WPdjxkCxVtAsu+L1
	 nhSiwfUH/xn7a+iHSS/PogGxVRt1Iv+G/M0fl2sEcfBIcKUhu6+aVQLpJ8zPofMYcp
	 mScpGVhfQ1x6FEZNHPAyTgyFRUgG2ePupJXWeR8DwE4QCWE8xcpDyJAYDKSrmpgxAn
	 9Ed+anCzMxVK69tGLVK19HuMj14AWWOCAKGv8oxXN4OLK4fyZscSROEL9ZpuANgYLB
	 6SJzcGYQ0pBwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E69BC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:38:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450791398.19737.14996756066893378518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048ded84e45f73ed833597fe3c6cc2c979ee5d4af47ca0ea2e198d9fdb6bd654
Date: Mon, 20 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784507913
