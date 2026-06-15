Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2800C4A0C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781484394; cv=none; b=TmboXHgILJIzAbHuBSD9fXVUo9H5CdB+cCA0TafLPrarumOKEjood+Z9rh7V0hYOKj3+OloTHyhXT+LAAkpcZym3Uxz3q1R7dRp9Zzfk6x4KyV7r0vkrZkDxxnYMv4tT7z8GdBfoonijBR0jpjFOosll/D8DHDAFw96YB8T3pyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781484394; c=relaxed/simple;
	bh=GJl3pbZOj3Lb+uU2q9SRRpx3K9TPOcK/WQJy/aEs0is=;
	h=To:Subject:From:Message-Id:Date; b=iadWpYLJb371BIBY/ui4FsOqvfR1G11+APAREvJgWrUp1l0fjLYGLtvaaVLHGeXvhUJ7D3Yik7piNDb1J5Z1D1mkvH6/O/8ioe/F0NL4aVtNO8Pe64tVP0j17Jo8fOrpJma5kCvR5HMy/Tng2N4DYuSTTPu34e3F8Hf5eWNgnFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggtcc8L5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggtcc8L5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC64C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781484393;
	bh=GJl3pbZOj3Lb+uU2q9SRRpx3K9TPOcK/WQJy/aEs0is=;
	h=To:Subject:From:Date:From;
	b=ggtcc8L59QcaG2bsq53lz0/z5Au7i3Fb8qDNAB4y1V8J9ALa6dglU2OoKxhUIhnib
	 N+KGodt+QFq+6F/NcrcAjJb4Tbhp8WALgwYeEwMlPWY7wUPVObEeHWud6254iGw2OC
	 nKLbK7XUGVafBXvUW7Rf6EEIT9kP/qs04MycEIc9H2uSveIhZNrzUXCStduOZYtjug
	 +cUnTI1XNL1LQyHrLdMcL6OKp+vTTk7rHaCGE75juRKt6mLX9Hjh9Sp4rjMy/gDfR0
	 SfBAct7E0/UkvXkRBlxN5tRd/8rVMtAVOehRZ45t6o1e20YMgQx9DTmr0JuSel8Ad4
	 OhaGf1o1NqsAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC275CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148439373.8911.4211505134309255367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da2e71d6a1b92d3380e22a91c549bf24241e850ab58c8d4e52f26b5ed0bb239
Date: Mon, 15 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781484393
