Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5782413B586
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719995723; cv=none; b=bavpxDXsU2/jaNPocSsxtUMRV6VSfQg4lQCdCJ8GzkP3p7ppphh2UhEdndgA+TOM3LnRI0NDJArB8lzkW/ryozgiNX29JvHooduuYwpWl1PlCsJL9SGxACsHKERDXO6Hpu9L/KXYGS+6DdSqBe+vYP0glGSJ6Q+KEYFZdXlSjUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719995723; c=relaxed/simple;
	bh=w9Zkk3rBRteYMjXGbPIru7UgyNoWzunt2Nt9nBFdhRA=;
	h=To:Subject:From:Message-Id:Date; b=NVeUYP2haPZEu/cnf2ewe0I1D0c33hqbxz7QqiauiFN3lZ8f+lCwCo/LhT/zb8QZSgM8WL1tnljtnhtdKCBxlRJJZz1zEC1JPHDQujoGXFdGFub8MHqcZ264qg8MqJ3ux1qqONCU4qM9P/mf0roV8CrFCLW4/WgWO+0yts+tmH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IX4+syB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IX4+syB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7892C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719995722;
	bh=w9Zkk3rBRteYMjXGbPIru7UgyNoWzunt2Nt9nBFdhRA=;
	h=To:Subject:From:Date:From;
	b=IX4+syB83bBOpMDs1nGkRklVCI6AaR8zX0JH4bRPyXIbtvDkP6S8JRIXUDKvfFR+R
	 UwTIMQ0L+SHncyyrI1QEk7QTrLpWaMpQPclGuGpnQoRRP2gnR3rREa7To8eLnGWD+6
	 7BHVk+CQ3d/UafTc1q8zqkPOjOAAtzewYWmyzk3IfgE9T/mXp+MW1rkPvyRY6FU9RF
	 LhYskGzFGvo/xfJHHxbO67T7JCf3v2MRLll7AyRwK3ZLEPBJx+7+wz40M9YoR5Sqt1
	 zVIKtEoW+Ca2JETMEHD3Y87B/3CLtAhSeySP/AyFEuATjbzTcAwtRHk2Ru1DWBdENp
	 SRZZUZHjUPn1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11ACC30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999572278.2319.12648744891919735075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01c6146c10ea2178ae02ce7fe8368870a44e9a82207083ae92367193f293759
Date: Wed, 03 Jul 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719995722
