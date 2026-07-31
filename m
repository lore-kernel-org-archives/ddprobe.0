Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5068A47F2CC
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785524434; cv=none; b=S0tStDHpfioBWYOlwmrd+5Q+jpTTaFKelqoH1PFHMFqqWEBSjKX4/C7kt9ITxtj8dmhwha337M1D7qVglGnAK/CT4K/8boN8gUMJ0Pt0YR3VJA1mmOR7Vw4AUDsG29yu6kmE8V7nSLap3kDOPl/voYKAaCb0JP3Rc3miuC0UMpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785524434; c=relaxed/simple;
	bh=6jxELqafI5uVsfGVvZoz+jHtTRz6J3aQFP/Y+BNwYjs=;
	h=To:Subject:From:Message-Id:Date; b=graFtKgzw/pIo6fuibVnuO/Mhvn7Ge+ItXLmdxuP5JyM8Oae7BapwoSycHJNXMh7+0vdK5QU6QvxbOE0xdf//5Njs3EpBdF+Jd85YOftCKQQ9Pecmsc4Cfc8HjyzZGGgp9jmgBzdvf5wQSJY9L5kMEEPzPcZU7S2gh/a0AVUlxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOP67ZUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOP67ZUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE17EC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785524433;
	bh=6jxELqafI5uVsfGVvZoz+jHtTRz6J3aQFP/Y+BNwYjs=;
	h=To:Subject:From:Date:From;
	b=QOP67ZUD94eIqW6BN9J02DcmtdZb/cIZJcPAWCcoX5rzwmkpr/q99tZGLwPbbpc93
	 KAvpW/U4PCoZ0zL/m7fJVFbIA2YviGD5FPHScXFjv/drSHS6Z2elv4TKMKXlUzxlyQ
	 NMZU7rsGMLCB594btLtWc3kyP9Qd+GoTLY9SSQBHycUNNsSvCTiACOtxiasQMw9Q8n
	 rAfDX6nDOfETDyfR+qxAWPKrO+SNM6m3euO0T1w4MF5fnnKeYgfl62yXmQYZUCb+l/
	 Dp9SE7/ipAMB+Vh+gOYRveyQMw2bHiEdVTf9bOBTC9aQGIPkCg2zzlk5qq7EFbZZ4c
	 lP+4+dt4apAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63DC5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552443369.24624.17089041843156178004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435652ded28031e5f2274b739bcaf77f48d5fd2c13fd6bc134e6700d930d6a8e
Date: Fri, 31 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785524433
