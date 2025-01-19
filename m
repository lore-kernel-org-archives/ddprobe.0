Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F683C2ED
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737302754; cv=none; b=PLhGV4KWaetzeWS+q2ru4BeAeSGyqBb3Vydx/EBrqZsWs5VAnycYV6w9UR4waYatKhbsgSej6SRfE09OtI0wWGP/RTb+pQbDbO7zEYuNH7lnp63hbs0UCjXv+7YnnTniUe5YlPKUWXIzpG+2mArsK43AyouErltBCQ6QAMPltmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737302754; c=relaxed/simple;
	bh=cWEi9An7CxiLQIuM5boecL9bJIDeU9W6AUHWTKbFtC0=;
	h=To:Subject:From:Message-Id:Date; b=he1s+xmr2fbLCdX2sZqoWppcgZNbYtDXVZK/iIq5bDAX79LT/s+qubjibiG7/CC1f1iGzAwUybEhcwhdCFZfBNK+LQWM3STJ2W8+N/LZcqQ6yA8/wnd52TXmm0aD//zUPHyINShTQa5pe90xTRqor+s6p9bMizKA7NQQtcqHUUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=corKkvHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="corKkvHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D41C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737302753;
	bh=cWEi9An7CxiLQIuM5boecL9bJIDeU9W6AUHWTKbFtC0=;
	h=To:Subject:From:Date:From;
	b=corKkvHO2bHfdhPJDn2OCwrgmoy6eqh9dQz8Ib87EGu4pevAYSsEg3BlSGLDVaZQV
	 S7idgnPFv5Q12P7bgx8iQ6Ak4Lon30j/G8Jv9vcDTLzROJ8drXBV1iFZWS6+wmnxvm
	 UzeHpIJfPN9GXhbnxV4E5dJn2W801u2IsWJLKMt6fbciiPM/xC00t3F6MdAoS8OaOu
	 dyr2im5+jSYEQwJbMBzQ0iXcz9P5LxSfgNOeqBA60mWimv0rRY+rdms2jeg3baLgdm
	 kiyAn5/Ykd0ajMsXbougNDn98OtB77dG3CjHuZbLk3W6qG3QTMykLIIsF4Psidksik
	 tXiqQl7YAFrgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ACDC02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730275359.5460.5607214557805739134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17d8ba464a0a3d239ee52f122a3cd4fec4d43a180715fdea3d480a924b4a2f9
Date: Sun, 19 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737302753
