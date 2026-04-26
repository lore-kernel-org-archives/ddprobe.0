Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254923A1B5
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777241254; cv=none; b=M67nmC+XKmFokM/p8avbvHAhmKTMlA+4dALbiyuMYSrVzTiei3+6YKVukMP3CqnFWSfTT1ytEV7+xHCqBHQhHDb5WPHt9++nhRAIaBuP7avvvlKMtlQOnm9fDzOio4Y5A7OerTq8AM9b3GeCnYqWa9X9Kvho/ubNSYLzPzSXyHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777241254; c=relaxed/simple;
	bh=MPmTYpSmWBEa5WglZY0SAVoazNWAMtlLUf8mVFIomTI=;
	h=To:Subject:From:Message-Id:Date; b=QFQeLEe1m/xbRmf31eYGp/qpVrUxPY6lhF/+swfj3aQ53HLG3tLIbxqBG5a3mBu54yM3BDe7HC4Oq5o+TpYsenYvPt0TSNJBFZIRbgNIueCku6/CZ4PMnp389HF2EqdDMhbZxuE2C/jNiPKHM+6JumiVhIMzPxOc3zAtKrN3TOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkQ1g4lL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkQ1g4lL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB234C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777241253;
	bh=MPmTYpSmWBEa5WglZY0SAVoazNWAMtlLUf8mVFIomTI=;
	h=To:Subject:From:Date:From;
	b=JkQ1g4lLMpuFN/975K/wlxSpBVobUxC5YVzNEkEfjYBH5KEGyZKJyROorta2p7/hU
	 PRqnlg/XbwhFwbrEpNagIv50Llh/3cIgglFfY46m8RTKDObs4Lb61dzsj5XypRPy2i
	 IXUWzhcR5Bp5JE8z0qFxAHmuMxJJU/SOFhDEgNmpdjsvWqDTlbL7u5ILh/YpuLsawY
	 Ropxl4gJ2d7PRxasy60Ppb3Tm3LaiFmWpqYNLkwF0vJDD3Wn2oX62ZKrtOxBClioOt
	 Z+N+BR61COJ9CgeYslJmkSR9QbBZNhpRPiMj1Zmql1uEpkB0Fq3PlrSF9W9OhQrv1k
	 bmgJZuJvSuoPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD9FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724125368.2436.5472688028520534041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45db6579f32d5ab529eb750208890ff7c693cdbbf6cc873bf452d6b8c31c55fa
Date: Sun, 26 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777241253
