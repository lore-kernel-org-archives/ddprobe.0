Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E27E1940B1
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729438554; cv=none; b=Pby1iHz0DxvuGsbMsCScp51XvbIn2jnEYIOVf6lxZ0YjwNxWaTOg8Ci3i0zFRkW5/J4tteEvKKerNegMn4AJh1L+IcQ3/UN1Ex6ysW7GhKaxlRQn3HbtXHi/DOSBRXrpjsYizTGwQuGVnI6FWvmDC00yN9+Iy8HgN9BNtDp28/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729438554; c=relaxed/simple;
	bh=go5GjFBg5XwFDcTBbXw6DaN8tkfB+9JK5iD98Upa5PU=;
	h=To:Subject:From:Message-Id:Date; b=a/IJv6sybQ/q2D7Y+WuPR6RKGm5BTjiMcpBwRHHwdbg1NJPSF25PEF9lRfZ5p+HZNsrmJurpWmLF0v7VpUW9i0HiaFV23h8eMcAZ7Eq5IGVSsQ8ZHhLXFFVt79+9v1dIManxT6NpFRyfOvXuofdup1KHwMZNbxCTYtxsQCAruEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LucCPdu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LucCPdu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8928C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729438553;
	bh=go5GjFBg5XwFDcTBbXw6DaN8tkfB+9JK5iD98Upa5PU=;
	h=To:Subject:From:Date:From;
	b=LucCPdu0v6qKkXuflmdP27hCVXXCg2S8zpZBU3I/TWQfmaIxrw/eek36TIkT0PZNr
	 w6oueGAOmbyd6Yknqofszl+I+83FWwHro8s8C5FvJw/PQgYGS98I+RXUFN9/uIImOS
	 +7PDUGrI/gPxlJIt/09FrohqF6BHufi0srHszKxYAeJyPMDb2pWwFX0v4+ldUwwgTa
	 DcnfooZ+TF1lMr1Mgfmx80Mdq8a0GXfejSyeJyywwfIOq4cv7HPezmEI3hVg6CNxwA
	 uRSz6MA7wfNOe/Tmc+OvHrmiP/1PgZ3+absHg2fyGSRpTz4/xeoCxR8LGgr0b6FKf7
	 mRLZydqGofryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99497D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172943855359.14264.14847127196093484707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e2d32d8341f2e5e9d784a15045eb2178970d0273d5562e4d42a6c42f277de2
Date: Sun, 20 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729438553
