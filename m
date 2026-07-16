Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40782367B86
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784234914; cv=none; b=Cc3mJMecRhwpUazXagRfl6+eMImuXVr3baDDB6C9S2C+o2VTmSkEo7zUH3yqSV+DWvSNgeaol2cMtZR3+awT70i5UIUREpLdvS09a+Giu7L+rShPtI164/uuA6lZfShlO3tBnrq2m03WCWUCl5SDYYFAnP9XIQhIMW71nUNn0zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784234914; c=relaxed/simple;
	bh=YifGfVZMeJVWkNRBkHG+aHpihuw5x9yb41UChBL360o=;
	h=To:Subject:From:Message-Id:Date; b=rywYz/UF4fd0PpJxNgLY/kQwKz51k82ERYOrGpSRVoBNVLEdE3Gc++sKcmIcF6Hx4DEYHgHb/8z4FYQjkSIM+jcG98xSB38v0wP6SsGRbM9Hi3WcdOx1zLVSnAUv9Jvna8nCZnh/+UurpAPPEOj1J12x9qy4r5oryCcdruERkR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzKtZkf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzKtZkf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB12C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784234913;
	bh=YifGfVZMeJVWkNRBkHG+aHpihuw5x9yb41UChBL360o=;
	h=To:Subject:From:Date:From;
	b=ZzKtZkf0PEYEnPNmHS4BZ7h3ma1b8/PuDT51e3e9+EkpkyGn8ahX9VcTMraqZQEik
	 jA7897DNUHLPLN5aoQstFjFadvfemAc+634CLu3IVOwHtUNoMtkwvS4bZLfOue3fQc
	 QsJv4QlGgjqVayumJArTFA81epG4F3OQCh8Dm12CuMtKynjVtcG4s3OcRVlql7eusz
	 C+DvDDGn3/XRflsDedo5aJYIzrqZMMPFfzHVwsEZfUY6DPpJoxyd0bMz7jZj8YOxJa
	 b3CcxucFQD9LVXw3c++Npjc9enUOSKk1ERkIKOizkYP4BK4xpBlHkVSBxdSFI/Ilbx
	 NFEWLl3BiBzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB34BC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423491369.2225.14247499437970274161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471c5aab869c266d34ef86bbc3345640b94ce90905d12338b791990b8f135fc8
Date: Thu, 16 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784234913
