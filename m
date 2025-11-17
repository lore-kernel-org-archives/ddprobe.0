Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F1D26F46F
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763401314; cv=none; b=gmYD2Weh+F/a4KhvEdTGLmagxO5dy7QDp8dEC1OTsQ9M1AIltVtBc1bKy1YhMdcFCRHcjcumWoEZK/7scoLZcYofLRN73g77BHCivFGZ/sa77NcQ141jaFJXkIsf9e7LgobB/kZueh8GxZI7JGMaUGK9rE3bPE66McIvEIjIlvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763401314; c=relaxed/simple;
	bh=p0uPWFUnukaWm/K/6Gncs1UOq9eIYEAhjyFmsGuIVpw=;
	h=To:Subject:From:Message-Id:Date; b=Kb+ZNiUFemjBz/gz/lpaFQnP4fDu8JRFqcW/LvLNqRAFdIm+IZWPRUSwRAK831jJBKhwEPm8NgTBI1tpAOKB9yWs2l9EOicjvgFsz+1zjZc800j3AY44v/AzbPXWp8cXAU9oEETZ+Wj/b8GRgGKKfaYxQ7MF2NE2tfrqECDX3XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1FYvnkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1FYvnkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D687CC19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763401313;
	bh=p0uPWFUnukaWm/K/6Gncs1UOq9eIYEAhjyFmsGuIVpw=;
	h=To:Subject:From:Date:From;
	b=c1FYvnktu71Jnh9oLyUVdUfeLfifmbGuOuW/zInAiYANNxTOE+UH1UKILVzzptZrR
	 soDlP/qG6KnzMLq18VoK1kLkMGWLBZfQIb5T7kpXGnIKiTp9XATpdky1NmINGkPnSh
	 mK6v7Th6px/jgkmAjRJEjtfPF4DmjTfCfKEAk6NmwPfP2DBIACv7q5sRBuQqLDPRlF
	 iPA0KAoHZW3r7dNIBfhUPgN/OTVu5wvCBD1bmMmlObu5h9/gsZKrtry4UI/DzGPolK
	 X3rnPQ3e4cmM1t2QUaV0OdbjlEnr0pf15Fu2mVosHNFYeICfOP+57BNejFeQIWwr22
	 us8bDrRieEUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95695CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340131360.29965.10624802648994239374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119fb266e145f3ba5b75b420d24abd85ce5ad0d3eedd7008ae285e3c1e38f365
Date: Mon, 17 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763401313
