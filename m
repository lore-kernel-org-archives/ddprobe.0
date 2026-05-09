Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197672EA480
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778369314; cv=none; b=a+AKPTI95styqxQiHHDPrX8ci4glfCj2G7tnzRxEVsOd2BYZ4JtD34AMlzhn/RHsdHn9qMPWTOTxxgOLHZUW0DNw0jyTd3dtNF9BNOyKtunDdFbaN3vosGvuasIcd/1phrh7k4VPYc/ENSTJ7Ar51uHD3tdIRwM1QhsjBGz7+fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778369314; c=relaxed/simple;
	bh=QJhov6+HR0kaPz/hR9AuS4XRyl9tIWMK7IGGRtUHs0Q=;
	h=To:Subject:From:Message-Id:Date; b=FNKmu5Nb6/TdkieVlEu66CdmZBCF9NikCT9nYj/xZR26ynG7RAai2Tlqo1Mxuc89ysnJFzfYSKeEqZXwm5kOxqHPdSBecg6VnoknU2okv+r9eqJj5+pT1Z2VsuFxSuRKA3iuaKiN5P+adn5Cbh4m0sC1AHawaMA3PqPyI0ffIM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNCTj2aA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNCTj2aA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD113C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778369313;
	bh=QJhov6+HR0kaPz/hR9AuS4XRyl9tIWMK7IGGRtUHs0Q=;
	h=To:Subject:From:Date:From;
	b=vNCTj2aAXQNC4pPwDTtpBCwAFOHixPzPVQz7iW7n/wV75DEkUaokpxgIsUD8gmYpM
	 N7rYRbg0A/52YJbTZ4x077z+qSSKF2spwQqD/mkt+qyXkH2AZHVI1eT3dMXRTLnI8h
	 ClUeKlmQR3ou0t5f/WoVIjFBs68FN/HFMO1L1cHUPYO5G3n26oZjh/73Rao4EL6ES1
	 MewrlIYJxIh/93sjzS05BvQtBbrrPs/FPw1ibuMx2yGLl7ifTu0P74ultxI9eN79DG
	 qvCl2rUxww2I91SVn7wdSsOPl7U6L0vU5OChVrkJqjMyfKcgDeIEyi13o+HOgWuyc9
	 96nIuXEcKH5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B2CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836931369.11324.3264394330401022494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9ff4fda36538c88624c2934766a59370522bc63c4596f12f3d7ad3340d7185
Date: Sat, 09 May 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778369313
