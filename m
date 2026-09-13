Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3C313D53C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789339834; cv=none; b=ICvoiLOwrCb8GaiRo3xFzS5HzBL3baAPnrhbOmAGjQk6mdwnhNVgc2MpwY8RDZ0BiyWRw87mzru9xyeDM9S6ccR7bt54IoAn6+GzGbVfgprq6rB4A5ptC3hS1gvxbPvAQrWHcA3AZ3eUZbkwGm+Iy8gQKJyrPYTO6iUG+vpyE3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789339834; c=relaxed/simple;
	bh=3H64L79TwLVDFZnUOx14bFWXoxtQevHx8zXLW5J+VGo=;
	h=To:Subject:From:Message-Id:Date; b=VWjysRZRvy27UXAMzDHRYDBVwqqPf6/Rd8eOmbIi4pmgTd5o0Wjet4i/wwLqBWuZX0HOXL0Hpac6ZszFfstpcg4En3LhcIC/c29j4fWUP4D3A+3Sfj9NZuQVcGgd8TDGe7VlweWjEU0CQYhNSGWkA4zjPxhJBy48abW2W75mwO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEcvTesU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEcvTesU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EEDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789339833;
	bh=3H64L79TwLVDFZnUOx14bFWXoxtQevHx8zXLW5J+VGo=;
	h=To:Subject:From:Date:From;
	b=mEcvTesU+9Q+QPHgEGbtCWwax9r4ojzTL3+XcxciSLOeg2pLTPsMneywTubyEfAmx
	 PF1tChdP3f7nVKhKw0oxkP6zbpRtk6QgLg6DARefZ0Lf35bGwQgJLhrcMbWPKbT6nZ
	 eMa3XW1dvLfG4+ddpC9rl/mCBLi/dZVlLc+URGUT2576mWAKrhgiQwRQvlXZiZjqB1
	 H8BCuI6sKcSbPFtJcj7wb7J2Y8ptiqEN94s7bRvV3Jcv10CHg9K5Qg1YHbeRldEZ1Z
	 XoHDVxt+CTIfR5HEAX52Ssal8qEHAOXTVqhavxCvL/2gTvo9kk7bBRZ1IfkV3Q2NsI
	 NEwMi+ex0Ymcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A9C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933983368.5578.9738053911339374456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29f95d392079e3f91e7db3bce23029122759416babc303dfa2fe22b1f7e15ad
Date: Sun, 13 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789339833
