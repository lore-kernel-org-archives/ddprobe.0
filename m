Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8F71A238F
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758927594; cv=none; b=ScdyMTU+zq52wjhI+s4eFyH3f4VpXgvOz7Df2GvDmUrpsfW6fLQAU8igQj4o8wastrQmNGDnn0AlZ8nkPJSPveE0n0zeTNIGR8kuCI95Xv3S7BSVxpvAc/dGCRIHwii3K1z1Hp/Oirq1XbA46AaGJpnr+l5DnJ2PCL9O5sfpMmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758927594; c=relaxed/simple;
	bh=w3100zZfZREhDn+ja69ZuhX7IZ/dCHIRdJOnSJhAGdw=;
	h=To:Subject:From:Message-Id:Date; b=FvOPFycaRikM4DEkczGlsxQKBpJxUTOxVNi4O1ejuy8aa8yGPMXgiA3kbQCsyjugDAALJKlvMMiCbD7LQYX5CisJ9a80rnTY+E/3Eg83QSL5Z5o+t4hWhtVvCgVxhLHNoey92EGveo3T5oo4dylWzVl++OoPVi/7IQ6pDBbdLq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mcg6yqj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mcg6yqj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBF5C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758927593;
	bh=w3100zZfZREhDn+ja69ZuhX7IZ/dCHIRdJOnSJhAGdw=;
	h=To:Subject:From:Date:From;
	b=Mcg6yqj0MNgzQJO1GUrZBsCSDuIZ7KZD86T5VPNhABU0EBTYewPqlb9H3TmRQBjzI
	 JtS5VRBBo4hTGY2VRnzol2YcHbAE2uVzanrCAZdkP1JUiIIBhYkxz4Sz1I6s2rJPtV
	 4k+YfzyyKW2lyh4ayyO8+TPJRrwsF4+GBd6TLPJTy3/djz5oLLBUYi5ccqlas88Fzl
	 jpgdh5mYVoVeKVqawfRGyfjyHg4XiyP6ioFieXWzFh6B7wiGxUJe2XGDBxz3rr4+0a
	 44TXf9KgA7Ote/MRZ6kMeJfj1exxPOhw6IoB5zEffpHrzEiSBYZwBa6sRdGHPnxUdi
	 hDeBlhKDk4/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90440CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892759358.29481.8346985281223773978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a017c5d4902a61673aa4bc5c4906503a27414520233588f46acc1df357ef1e58
Date: Fri, 26 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758927593
