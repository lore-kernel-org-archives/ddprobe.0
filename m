Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E0F16DC28
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780259674; cv=none; b=JzG7BE7EVOXt9qO1JgnMsEL0YQhxSIrfZSglcI84G04BgMsl1f4Nd9xiBo1tyf4A+Ioj0W52miNoM/31hpILbL59CXi8e80HOGfdQ2x3/Gj5unB/0j07e184am3y4OL7xTFA8eoLXfDBr5FQg2fdfSPwiUgWW9jh8Vhkq2OMiko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780259674; c=relaxed/simple;
	bh=gUShsS4rG1dCUffmIqtGpTxUiAmuO3a0CkvVRf1s4cI=;
	h=To:Subject:From:Message-Id:Date; b=KgeGhVqCfKT+vufLJnnNR1bK/gOR+75VZWVe10IJZZVsWnyTkAkv/pmuL2q9s9RfP3o03U0K/l8Mpr63YSgkphjPN3dxuHmtOKOSrTauvRQKPg1ScCjsxb4CH94jL+ANofUgtffM0FHKwlbBhZEkqSIlNpJaAjvFnXJQyinsd30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C80klHZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C80klHZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FEEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780259673;
	bh=gUShsS4rG1dCUffmIqtGpTxUiAmuO3a0CkvVRf1s4cI=;
	h=To:Subject:From:Date:From;
	b=C80klHZOttK93LjFAgYFEt3nxfanx8iXSPee+eKCEXpUXNSSbXnTm/CbkpietUpKE
	 +0EhDO7pjPLrPt9D7obp65FasDMhr+qX7LNBjJbLigXOkB4JiSX6XMEz453bVW/aQX
	 Z9B9tSFJQvTYKK1I1W3W65ZvMrRExA2LdwQ6uTDtBFsanCnJr97++eRpdhDAApn40v
	 fBA3dO/bAg0Q8sj/EMA+YlOMWi01BZ1wtCZfg5wvGDjyCbI4NcKJXbpl5Lp1Klq+mA
	 RHTclbeBdm0rPL4mSk04MK8LdCgPvTrimY/rKf+huBLN3C11AjQpA6aTP5hs5eCFpt
	 JFdg+wbZyE2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8ACD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025967368.25961.10568424251144704224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936b28ccda7e330337a12bf07ab32ea42d8d62823284e1e2c496e056e1270fbc
Date: Sun, 31 May 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780259673
