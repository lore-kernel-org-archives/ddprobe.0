Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2248E2459F7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755959394; cv=none; b=KrRHL+AYmOxLoTAUEiBeHoKR85jZCxrIW+U5yCcC8ZXzHL152W122T61H9mxCruoKZnsDPXLdSbmD+oO2Hh//REVYOJjgFp6cpPmLZ33PsF7drqi6Yqi6k7fIp65t/ME/78VraGk1Hi/o+s0B4nTnW+rnEudC4u8ybpYBzAUvZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755959394; c=relaxed/simple;
	bh=f2VMsz1tPVEYk/k8vOV794dxs3Xzm2sPF+6J3+RlOGo=;
	h=To:Subject:From:Message-Id:Date; b=lXIBQXORaMl+tvSiTtwbOwfrzUK8m8aGGb3U/bmxwGqzfDcWi/zBWFprVcUl18DBfVtBIuHYhADh/Yj9bIKAP2hqL0r59yl/CEBaWSnTYp9eLyBwrTrsm8c5z99boSB5v3GU05ab/fjRL9KFNBINcoMK5EpDzJO4S6Wov34n6Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGIt1Ri0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGIt1Ri0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E71C113CF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755959393;
	bh=f2VMsz1tPVEYk/k8vOV794dxs3Xzm2sPF+6J3+RlOGo=;
	h=To:Subject:From:Date:From;
	b=eGIt1Ri0zzoJGzXyERrIvTmugbam1HieRrMybXXob/vVFHaFPR9yLfugO7ur/YcrO
	 xU2BGTtoQzZHZgJg6YbgZmFGCkdYtBPPgR1fbdRmLOJcRXJJhratTIaBNNLa+U0zjJ
	 XGCJEDCNgdQZdxXb6fCucrNT1mEqFfD8pD7rXDeQ5uiiBJRqZhjpN9U8mJZoFM+6W3
	 T8Fd7a63+AUKlDMTgyZO0MVOCQdnbGs3eV+xQxMd0Rxd0DUwEZ88lBx/dl6OSzSNWj
	 kNAMrv6W3Vd1hVhFuMgMSI7yP6pSS0V4IJ2Uc9Z+R2TyCFag5IQYqA0NQB7ERNCyNz
	 vYdgbZHUbCLIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F840CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595939357.6600.1341122547335267030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4cd00d096909d9b6128211942b4597a6d63887834941d796b66b5ed407b355
Date: Sat, 23 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755959393
