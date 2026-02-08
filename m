Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7E436C0AC
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770566034; cv=none; b=JxntIHmDCmNt26NsmbESFt2rHVn/p10iEgTavbvctyoR3IJRlmJIAbqmsVST79JKOLfs5Rzgag23N5n43kZeNl4jU2B6tzuauZSt8oq5GlO/pK4x+g9iDkzN1+AumCNBWzaraqsCIOFRMFxbqb+3Kb3dNZt8Xs6DQHEz/A30X0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770566034; c=relaxed/simple;
	bh=ZWbqgkmXFhxQFVvzDgUsvpLlCrxabjjj2TrCL9XYkdY=;
	h=To:Subject:From:Message-Id:Date; b=r0naKB06lO+wQJ22SyY69kkO1lfZw00Kc9gmSq16/fCCuLPuKXgkBcowxzBJQoOzft2gWZ+9IoWDiRWFGF92VWyxWedgUnpMwpqEg9ltahNdPe7OHi2+Zj9ZM+z7xSCdsg1OB5vXlH3E29r9OphvIyHy7GMEF3niPHYBZ+rjxaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3foArd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3foArd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EACC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770566033;
	bh=ZWbqgkmXFhxQFVvzDgUsvpLlCrxabjjj2TrCL9XYkdY=;
	h=To:Subject:From:Date:From;
	b=h3foArd04ZaVw/j82vJhtHEwxW0+uiiIrF57VVHXWMww8iUEX5jqL1IdcEI2urpWq
	 krOhaynaPWkyE2Rx85ysfx5lScGtL4pHvdIOfS4x/9znxeSzomtOYp1CZ2fQMJvY5y
	 DL+q6wHb1+R385IZjfiyWBrcWVCsmd2ZfyEQLPSlgIjYF8QxLIK87R1/itIpDD8LbN
	 LmG9h5r2tV3xZDsA0CrWxyx6p7Pgb3t/k/Mes+zNHL/EyNarSNLpjIxJiXty58DImn
	 /05uJWJawS65j/QKTxNmjSsmSU3Qg8fVJEmV2lkWjAq6mOMb7r0E+aMKZwrkfuBVnq
	 XuSh/nv0A8wiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6022EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056603359.17858.6034962166625635897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7528a5c37c4614db6872d0a701078041d2bb47ff33c3b53486322fbdbf54f81
Date: Sun, 08 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770566033
