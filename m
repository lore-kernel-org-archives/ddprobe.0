Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428D236402A
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791659434; cv=none; b=tldvZOFBhZ36vnCE0MMAiCEDBpgBshGG2n3ycAPS8sfLTcHAvXWNN7UbaUIt96ScUtpiGE/a3VZ23w0Fn0qOgDWHwuqB3x6kXrrnUUC6Gzo7IYRsHJez8cA9Y36lq85se1VH2nIG88FNcHfb5HD6Ky3FZpMkYHQT6Gt6PGNXta8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791659434; c=relaxed/simple;
	bh=wBCk3X2h9fb36lnleuqRepXgrfeQt1bETQGh+HpEFmY=;
	h=To:Subject:From:Message-Id:Date; b=mtWt3g/40hNOtxDubf+WsDZorGm6n6PxqSXmKjye6Vb5rWD7+yN4zfo3EAUrJmQfazH4zw9vv3OVUGAQIRlLOGWPhU7EKi0bhWgUezTgkjkpPppLn8IIkSUfamX9+MLFmyTAadkiJqUmgzMyo9qxxNjU/0vE9z7sRqd1Ef992+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLIX+4rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLIX+4rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAEEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791659433;
	bh=wBCk3X2h9fb36lnleuqRepXgrfeQt1bETQGh+HpEFmY=;
	h=To:Subject:From:Date:From;
	b=BLIX+4rzHKwMUNYfXTWYU5VWBWysRWCkauepUjBjceI3V75+SgUEzas2RJG8GMMet
	 +rtzaS6LUGebJ/yfA9Bpe+8wOvaazQtlBSIsk3aI+E4hCg9SulZNTaSULglCpv/ZMJ
	 iFCj8cmaXluLRgd27IRoa1AOHAiQknF5eCPdep2kK9bx6YEkwsbrJOgVgZ3Ft0A8vK
	 W8ayMXbIRYTh7nz4UoQrmbxc/J1SOKU8Uw1O7FK6pZYHeKiOGBxRzHjMSZcdUEqhQs
	 FqfcZtgy0H3kBGUE9rKPlM50K/T376BFJwjGJM33LMY0ZeRD8rwojYWfcsqp35Imya
	 /BCSqn+x6ZF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD722CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165943369.23366.13340795434365568217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ee5e807aecb73c51d80b7a88c98a10fdb980218a69f19c2384386f90801980
Date: Sat, 10 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791659433
