Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A525431E6A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782937114; cv=none; b=ZzCdNnchrD+7HXfF8t3Y+nqYkDaQlfXoNkndovW2VQmoHNJPe6XKmqb72eIHPgut1McNcoQP8yTfHiGR/Y+ZJ9rafVW5shCUILhB/a22R672x4mCu1D0SvVJ1sfq78O3f5qxgljfwPyw/N3Md2wYdus/NvJkpODpW3Er5FtM8gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782937114; c=relaxed/simple;
	bh=1nYayRdNnDvtefGSDV64sLCaQliA5XR8i1pocavct6o=;
	h=To:Subject:From:Message-Id:Date; b=Es//KIKr4KUSciND62SRESKoWQf2SzvqMWu76aCMRp88sXJOfaUMPznnLKg3YVEIBRQDo7UlkuA/1kfvK4En8hYQKeKkkhtbwwh/kpnKau8YQnDPrFkTqqiMg/lvNqtUd4Nj520kMJMMg8Sx+ClIolE2bYI36lqEia3vStkVS9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXQIE/Eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXQIE/Eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC25EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782937113;
	bh=1nYayRdNnDvtefGSDV64sLCaQliA5XR8i1pocavct6o=;
	h=To:Subject:From:Date:From;
	b=aXQIE/Eg8/C32lve/7/8cqEAivIbJbusyGeLepZrZmvrFAdXeTUFvE/Khkup3iMlc
	 l/c53C4nPt59w39putCy5pMiDSMeC30Iyl3uLvsJZ3+bdtm1sAf77PRUuC6YkPZcKP
	 iIcY+yFozayakexOyGh/VdMxI6qKeNboRw4bqsR7m/6e44LrVbsKaHWWr2pWL9RVzZ
	 XIk7VxwpfD1SGGj/MAvLVN0YncM1J5+EXalb04NRXp42VYlYpdD21W1zXBXbLcOR6l
	 OWKfv2YX+vye2euLxFneGH9IWDn5l3vbezTc84va1IELuXjVFT1bidXFl7L9C2ZiCY
	 BgIBeDukawKDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D3C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293711368.20714.10130618178571156611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af919b68979d2f8611b617467dd0fa334c38d8074225eea8a07104d5fea83df
Date: Wed, 01 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782937113
