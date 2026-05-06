Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D4F3C7E07
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778093254; cv=none; b=Hw9J8zqqxDgOAuHQLOugmLE2BE1qqhsy/UBBsef18R7FLb9shurmDK1RAmr1GdmvMNgYHVy9qfnZchETvfXuQfWn3C1ohW6tma3T3+K7ZU964rRazIyhkyecRKz7UgHt/iOxFOoPq16kS8mk1flezwTUIDDBtx4+uNL/wdtI3d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778093254; c=relaxed/simple;
	bh=cK2Y1Fxv/xFEQUsKRNR0bIiKi95w1pSzWclEiVD1I0Q=;
	h=To:Subject:From:Message-Id:Date; b=p59YZw72OQEdTiPf7R517XSPNtueydH2aQ7nBio7nY2xdVOBdgYpcGDjTX/XqizQofg/Qk/rVAbePkmjnzX5jJcawBQGqosHvnjBGGok6uKXiIy6JLR9CnXoZO+zhk+f/ABuLCyhJO9ncDc6lUp11uq9PKlKOk7Sz3vQlgmIRgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtPNI38A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtPNI38A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF775C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778093253;
	bh=cK2Y1Fxv/xFEQUsKRNR0bIiKi95w1pSzWclEiVD1I0Q=;
	h=To:Subject:From:Date:From;
	b=EtPNI38A/nvTeFFe7+J6PZGIhYvt2onY13VDiuabsIk3a+K+Y5hVFDw21ts89u2Mu
	 3seS7sgo+VaWs5dHlgWR6O+4IpKaATp0cz2/dVA4IxvwFvrRmD6d2ZwPgLaMb0KmVk
	 1EubNIXP6JzK2XOvAc1w4CreTE3OiZLq/qAJis1WCmly3jvklAg6H07aGCeETSgseA
	 CDy/Ra+uBgSeAKrYYHV+xt0CBfYd26tZ8hdeK3gk5wvRwx6UFPmtInNeXLXwnqpdgD
	 CSwIiow8RTwcL3nXXd04r6vc7mcPkPW1fwBQl8wPXORSXijMpy5o2nfbwATDZtGKlH
	 kOGJxfGSeSQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE53DCD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809325370.19191.9063390644589434242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72d49559f9599dd1b3c157ab6e9a3240f227456dea58995f9a01ae8414a14a3
Date: Wed, 06 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778093253
