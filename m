Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387FF37E2E7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782773314; cv=none; b=WLM+DE9D4BPKP0uF+OgpJNFA5tlzv3HTh8KbcTCoMkyA/sclu3o1jWZsyboizT7u0cxeiy2e89cz5dBy6ychcUwFSFfI7flFH5/l7xqlVjQg222UGJuHp3XdPHsJ+dGaJZGS+AD9g3U8VCYtvNPopYNYKXe4D+MU0sTYjEL/KKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782773314; c=relaxed/simple;
	bh=Bogq74Uwpam32hHvit+NvDe/zsu2uDrXkfARmTSKXiY=;
	h=To:Subject:From:Message-Id:Date; b=NQowscWjglWsyBnzeGBmWAAccd8l4vp2xxO5phWLdFFzlXAW5vgtOlfyLbVBNRouzcMwCXM1qx4jupw0WMGUP3Rnemf78bH7o2kSyniR6NJNVJadbRDgULbdLFgdZZX0TiPVmhZBAdTg7KD9X2FY7pnW0TTIUPqdgJX9BUn8h4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+0LHbbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+0LHbbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C182EC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782773313;
	bh=Bogq74Uwpam32hHvit+NvDe/zsu2uDrXkfARmTSKXiY=;
	h=To:Subject:From:Date:From;
	b=U+0LHbbMX/iwwT+MyFz5eQ1CH8LyX2t1wTefr5eFDqyqgbf0JrSP9YuQnF0p2e8lS
	 zAY+TTfkSZc3HnPl+Sfl/0Ma6L+JWiqANMuQuytPgMSelibeSFaHqB/q+3fTb1l84Q
	 +aygkcjSno6JG25/5F36GYzdTk6e4cXxRfK/1Macz28QULZdrafT3geqL5zp5mw7zt
	 LAfvqy6NOvnq9WP+XzbycOMqCxwpgrVZExaV+uqAqIqt/VR64ylANymtzG/zk39hdM
	 Nsf4uXXYlQ0cyvJPG3DNCRdUbMHA0tbmfGQynHE2h+IGa38xCYvEAkVzhfccH14rW2
	 MIiiye40y74rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED1C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277331368.6066.5871725675708408543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb5440706f53164431204d953699db2d7e3f94f118e6877518d66102776823c
Date: Mon, 29 Jun 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782773313
