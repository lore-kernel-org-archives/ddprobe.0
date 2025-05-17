Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BED1AA786
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747516195; cv=none; b=nPjGjiDggLVbLS85RUDtmoiu4R4e43Nn4tkOOLqVeP9XpuKUDkjYXz+XE/rYXQZDdnr3x0/a59u+a+RKBzE7hzLuSVlc0muH4Sy9kuSWJ7/i7EnoWnFPNjwKWM1afRNvQ0K/zC+EfeMBcnVlylXC2TujWD/nZqMgSmPycFliU1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747516195; c=relaxed/simple;
	bh=CNf+jXs2jNC2MOXdxyWo/UG6B1BS+7QAGorxbNoB6Rw=;
	h=To:Subject:From:Message-Id:Date; b=GxSpe8fblTyyB1T451/mw6ZDvdPY9vKJewnv5RfOLP3QGJRZuQuNelZqHMrUkUvxnnnsVDkFdO4t6/h0wEpgKmIWkuAkXvxlpCY/Gjg1GANr9aYWKStdtwwR2kWsNFDiOT767i4psfjME18BIDMl0HvFs7HkPBFw00pjclLciKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0uKnKNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0uKnKNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C35C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747516193;
	bh=CNf+jXs2jNC2MOXdxyWo/UG6B1BS+7QAGorxbNoB6Rw=;
	h=To:Subject:From:Date:From;
	b=e0uKnKNhwZuDIyqdlAOf0qHJD3HmWUvlrPkPShex0bzPUHE/M89/skGwLqWkQR08I
	 ezitSwwuVwzGixBSPRtQYUAglxs+8shz6Mv0ms9zUSqUjs+VpJgrAqtvOC4dafccEp
	 sKyKusfO+dPa5loi5G1f/PeLpGK97eIVOXg2Bl0a5hEKzplvZ1Sn41Qi3JAX9bA2gf
	 zzIb/BwR0upqnKpX3a1dtbfauAkCAXshMw/Ba5vy+cxhCMtM7OqLcB6pzSjerXf1U2
	 jmWZrHZr/57nHxte3OzYr/5XBY82t4tHVu6M836MyHUM/smZiNZXaLoJcsKWwi0UKh
	 vZbUI8rNOhpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90970C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751619358.14746.7714735414099316045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5516a7cd7c41ab91bd4b7f91e908febf2d256833fe92ef5f12c39091ae427fc
Date: Sat, 17 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747516193
