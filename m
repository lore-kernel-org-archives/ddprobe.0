Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFDB50276
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767186834; cv=none; b=Iisih4sFOW8MGkgOy/ZLcg39fbajr2CWeMoJt0ifqb5s7XRApID2Q4xLJ8SN/S2M7f85r+CKTFMc+zFe774fFSmGU6pGMKYtIz/l78f7UtkP5xwD2s+6f32+QZEU4tJBPPhDhPrR1/XikVrXHwAwVVEkSO6RRh72HNCyvODzHNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767186834; c=relaxed/simple;
	bh=yHH31wAbooMj2NkbtemObCIoju1VJJDsFeZadCStViI=;
	h=To:Subject:From:Message-Id:Date; b=e+CnavSmAixGFLHtGFnfUH6QKjzZJFmW+CIxP/sm3ZQotDgvcwTJUiOUkKoIpMjdB/WnWxNeLILRwb/2tjg1xOaDpboOBFxIvzS/oKvJsBni/uvsZ+y0FpV3kckHO+uhsVA6nN9mLZnPddY+zxWliLV2rmAXHswwQWyMkbZUBb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soH3h8Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soH3h8Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6410C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767186833;
	bh=yHH31wAbooMj2NkbtemObCIoju1VJJDsFeZadCStViI=;
	h=To:Subject:From:Date:From;
	b=soH3h8BmW+qzxfMVaCPzPNvXErvpH2dImoG6BjKOpTr7PRGrL7O/0XmGJ5gklFQcT
	 LJi6n6SzpXW1SdtpbL6+fSd3vXAuQkgxjoSPudUqbUai556QrrTpqsfCveAdAv2cQU
	 eCd/yu2feuP/3GcJMSta85LIkrw4j9fypYi825EH71SGXS7YVabxK7tiunj9B/ZFXI
	 vB67tViQsl+manWzh+gPRje4JJGctXsP1/Riu5OZ0VaK6jTr+lQ77WoZ7Ah2EBm7AQ
	 ouP//FAOffwdu3fwJ61diuVi2HDyCJFkLfBj6esh7u6dyxNFweUDZrLcOfhGwHpaaw
	 lxpah8cuAi64w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4EEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718683357.6135.7189433944975352170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78e20eb6207210586f5873d2e9d369ba8730afa48329254fdc0f67c6a1311fe
Date: Wed, 31 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767186833
