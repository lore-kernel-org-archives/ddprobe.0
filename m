Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B45A7261F
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750593595; cv=none; b=YWzYpDO49HI9M9we9wfE8079XiwmOKcrVS9qY6tZ+ZSiJV0omzBr6qmj8M4zP+pEvrRveCll4d2vAAHjpwizE9acFSsYy8XHoS9QLlhmD1k8t9OSHhCGtl2DuD8sSG2s+pyLLo52WS9OMlsw0QGdL3wRyy95idCFoJOu/REsXSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750593595; c=relaxed/simple;
	bh=hKHgHseaKDF0vLyCEMrEj8jiOE2+D3wPH9nGBPW8QO0=;
	h=To:Subject:From:Message-Id:Date; b=LY0sPcsTjHRSW4lzn2vNih+E2CZCVarpL3o+Inq1NM43sNK8xjbpXr7vzpaTl9HVHyREU/VHpt7IZA746FxLq90dh9Fv8ZKKIARP/xHTtIj1/rYR516mRkUTLMtsPIgGQ9+Ekk7crGjMXCU5/fwKI9q7gNkcHKyD1JxuTb1pnMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7VSMDJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7VSMDJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE121C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750593593;
	bh=hKHgHseaKDF0vLyCEMrEj8jiOE2+D3wPH9nGBPW8QO0=;
	h=To:Subject:From:Date:From;
	b=a7VSMDJxNsclHostpFSTpjWKPy5ypx0vwuJAqwfSzzqZszd/LpUUSRgsANb++zNIE
	 raJc0hrsy9I1i1lh2DM65eCqHqEiVcnM+HpxJofzXyP8Wi1UHRBUae/3C+kJ9vxRKl
	 IdQleUjvYb3RyLFHCQuksg2MYuFgOA3CWoqPxH/NhIKNDBM8o0UiGOA6gHI817CxoR
	 ZmUIBMpcXXwkqkIEEM3JuPi9MM46cZpQmuqywin2C5C4TH21Ve/6QMN/0Lw1KR87SS
	 ExXm22gQJlC+737JsfTxcWBtj4ssHy3nsFf0P/gHQ4PjmCKqLs0+D6RVa3FdF+iFr4
	 VPGfQethOS84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B504C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059359358.8164.3532412012747577962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa368853fe2a731ed30a900a7389ccf6aa0e268fce31d01349273065feb45144
Date: Sun, 22 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750593593
