Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA15F510
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761991194; cv=none; b=RB2jQ98zr+8bXif6eIuQUb0W6pc7mWG0xYcqDXogkzQXojqCEepXOdmQl5Zk8zhxmuNmGPCvBrUw8pGDnBgayqfkPW/26CAi+9cxxm1nLEAoGi9uIEvZSmsxvDgSxKOsA8eqbFV8xwMp57eVh26yhaKZniNp/NqlaYIUnRxhLMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761991194; c=relaxed/simple;
	bh=RUiheVrgyoVkZqxj11RqY5mDdtfdmcdn3RXnVvVpbic=;
	h=To:Subject:From:Message-Id:Date; b=lupUkLWjJp+upua4CrO+DkiRQZa9rMi8LBJdzJ7F5LVl0rBsQeVXDvG9a0bo+8MsEFurnH3m4Qnw2tUsVgHBuqbDWn+7z6I33nCVOtZt05EDA7IrADVV+XiQ7WLuSyOsN7Lwpi6wZPgMTyfhdfLUOd+n8EIXT/BrIb5AhXObZ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q29NQjRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q29NQjRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77E3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761991193;
	bh=RUiheVrgyoVkZqxj11RqY5mDdtfdmcdn3RXnVvVpbic=;
	h=To:Subject:From:Date:From;
	b=q29NQjRxNWMgq4u4fTHM2HFG9+syxOhwywEqAPrBTesNhCaFKZ/ZJGrsuhKiugXKm
	 p70YYhtxtpt0dvpyBXTcuL9bYeJbWJv22c21uq86fbpbBR9aWox5ya9U3NppJuu+mN
	 IXRZdjfvYhPOOhvSLuzdrxZxByvS67mAjFXzcDcN0eKWPKIWkkxq1BBbip7L/XtyO2
	 30JNHaMmVAQM/Ma9on/gq5AycJQmfrkdTqfxKM/4pqlXZ9M4TRuIuBRaYUkWQpjp2g
	 BvQfmZ+tz+8XoAU1rsKctBVMOXquMOMWWKGVnOhH/BbScc1UoMfAkakp0WUjDpAsph
	 1lDk1n0yR+rhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F71FCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199119362.7985.5356107037982860418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e5e960eb25aa04e085f235e098172f670117a3adb5acc6f51e1a145e245147
Date: Sat, 01 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761991193
