Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BAA23C8AE
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777042054; cv=none; b=XKHRFiLsQh/ZgLK+evcU92KozP+QEIBoDX59KZY40w2YQnxqd/41JZPmXA52N/YUvPSrzsE1kJlrA1Y6Juvc0BC9NOym8UVa+9Kw8baRveUzlddNBG7Xo7mGdZkJ8JBal+Q2eZcurUccVct/Yk0/Y7UBe2WKtcFlDxtKLte4DvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777042054; c=relaxed/simple;
	bh=Im1lbhcaREqBRj+yAOE/UlgMqivqpHinnh1Ccgw44kk=;
	h=To:Subject:From:Message-Id:Date; b=jRkjzekzRkgS1mXvLSP1ozpgMv3neZ0BkpTdKS7AGZ4S0ExugLCVBGIecdjIdzTR8xtHvdbWIjFTjA9JTyxkzct4CaIsptvk1tGGBQP17N5g3SUtCB1H8k74qI2QovMSOZb/Co19CWRTgHd8Z0Vp7f1/SHT9yBYPKnuNPqjIF98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0gcn9H3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0gcn9H3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B687BC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777042053;
	bh=Im1lbhcaREqBRj+yAOE/UlgMqivqpHinnh1Ccgw44kk=;
	h=To:Subject:From:Date:From;
	b=B0gcn9H3YubWalfT1fmZ+0jTiZgIKikW7l6DTyi6REQOx2RFMgaFvTRVB2NemvU30
	 jkVjEs5NpQWF1DhQeQYk+C9O8iFlWaO2nGZ8hxMkqjDKI6e2V6CnMqU/0i5wg+d9Js
	 6Uyxu+HLzeAxgraWjNY8Bj9dMBZj1Kzinkrcs6fzX95gSmhGoix0JK9IRqU5t7FnDp
	 sKkrm5dUIdH+R9mM1aNjJ5pOZyP7MhUkFicjouUMzykkw0cYz+H826VxKnK81aQESC
	 uM0z4FAvjRbtTrcuPgLBssZL1rYsCxmZuCX0FQtpo2KnMveeGwuxC0U/3wx8enawES
	 fugiDTE6dSadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9963FED3D6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704205368.28081.16644041406525178432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9501b03c2773cec4cd0922b32beb437b629a07cc5c4a5b1d903095499ea006b
Date: Fri, 24 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777042053
