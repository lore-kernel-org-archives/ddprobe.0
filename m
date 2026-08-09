Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DC926C385
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786315234; cv=none; b=uHJkBdBsh3oLLsVq9ISVRZMIZ34Ft70JK4iefVk5SVRAg5tYljNVtNsaTyIVjgHKmNwo1CQdBkXTpLCO+8tT93eyGVCiwaewwOxFH4pwD3p0GMilpvKo+sKkd+bSVSbOqne2p4PKRqSs3uqrxotOTRX3MxGftODzOVCoGB3G5C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786315234; c=relaxed/simple;
	bh=wz3HF/zh/5btXGHphpzbjWGxO0qE7z565xJ8R53+4QY=;
	h=To:Subject:From:Message-Id:Date; b=tG/buiZhCgav2RDamZa4vBaR5NtLEmjNUzlSyMu6goc/qrs5l5FZgRyT2n+f+OgfRH1sjBSfng+7qY43ryQ8/lQa2kjLKasF5PSM8kqWJfLYhNbc51FvBZX0cQtwE5K5n6cmOTmWkSeFdbdk+b7rURs+PYOw9g/iaU+O1oSuMyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYwRTUbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYwRTUbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0193C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786315233;
	bh=wz3HF/zh/5btXGHphpzbjWGxO0qE7z565xJ8R53+4QY=;
	h=To:Subject:From:Date:From;
	b=tYwRTUbR5KSCnuDrR6e/VtiQdOqQ6pjCrQuZINbl86sdbWxRs99oM2Rv6kouem3lV
	 4wf2OmA0r9+r2udP/uhx3sYFaw6HOu9BVAhCtYkJwOmeQ1PC9mjw62ezVx5WHNY61E
	 NKQ2bm+BKjuV2wdUPij1wYmqP6oLYoCf77Sui0i9Fr69p93Vt4c8GP5Vfv9FmpDkmH
	 IpxDZSkfaKy6E4hSxhQU/kLdaqmjB10EmsWMg+8N+x/47n1AkSMogwov7zsDjGN1AC
	 a0onAUKZHjCYcY0VoMNEQB39mB+R6mgUjZmLuvtnsdXuoTlEUKZq7p/DxN4JHgEK0V
	 BSK+FklFD3IHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB283C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631523369.22078.3223205103697007403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f14662d77996d88cc7299721fb1edda0a8c4eec3cc6a2312a24837998cb219
Date: Sun, 09 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786315233
