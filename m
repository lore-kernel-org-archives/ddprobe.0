Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17140188A0C
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754647794; cv=none; b=ImZRwVS/VPp9E4fvkAM4QM9iYT2ho/qXDxDUbx0EdnoehjzKbqClIncJ6rMxE6gBzkM2dz8KKo1YMRGW3DAiWpI+Ce8U10bMWYphUSAss8v9GxEz2K46g1XWxyrlLhkfiWSITepJBfrQ+dEWQkiI2Tw+wculCVEt02BlgvEiEF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754647794; c=relaxed/simple;
	bh=0fewMLvMpKg79KPq/FhP0LvwwW8wX1ENjMBp6pEQrwo=;
	h=To:Subject:From:Message-Id:Date; b=huSHKIHkikY562CQYovtXssBwqJFkddFq7e/2cTh9zuqE3aV14uLve16/PDc4Qy/QEhEfC8/tkNy5jtNwNRPi3vW2Mfx3r8SojbFxRDHvzpF5M4HM+Xn76lP3AoFuzSIfPZK0cB2XGWP7cKr8KmFhR5FZlPubL5lYovI39E5cbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEih+QzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEih+QzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C1C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754647793;
	bh=0fewMLvMpKg79KPq/FhP0LvwwW8wX1ENjMBp6pEQrwo=;
	h=To:Subject:From:Date:From;
	b=hEih+QzMSnWFnC7vVld3tDMWXfpqkkc8pkLB+GXzVrndcMvBgc1OLEVSdzs8+h5A9
	 Xttt7nRx80JU8rc0LrheSMoDUi7ZzWVhdO2mzkkODgBjP4JJuMIKI6LN0UYs1X7bM0
	 zExirfyJUXb5DanxOEWueLw+CDlyryhtQpEmvxI6gL+/LVK9S5okCoPsyBBJU5MQLn
	 3+DcAU7hB041tupDmux8zqX5yOLVPeOhjUkvhYouxCinpxjFvRIAzUXH1+4joYP5Lm
	 6eiN9c+SEP7bOOlPvJZPINpjPXXKddQRmNNFiE/+/2D77QCPGWGtYqrF0wdX+w4bsc
	 bYYe/YmzQop7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E32CC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464779357.5853.11621882665923772234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a41fd3a7723cfaf1da5f2637361738c6566fd02e09bbcd6b5e816829b7ea9c6
Date: Fri, 08 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754647793
