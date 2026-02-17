Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260A73EBF2F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771305894; cv=none; b=stYQNfD6H9LkPE1IYDvMeelNkFtBgqcvhn3xzdBwSWPGyG5Id8a82y5isGIgutQBbvDP0M8RaYLcyFMrOy632T1VAErIpZeoO+9YValS+kzW0mjnm+SQKN5mnNwwoCT5TYBRu9PGF3w8ZDe/gk9fhoL6/Z2+WbXUhnSeqXbV974=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771305894; c=relaxed/simple;
	bh=9Sal0D3784U2Xg/K7jMPg0bc5Uv+N09odQFayoSVbTY=;
	h=To:Subject:From:Message-Id:Date; b=O4DZIQ61CmBLpAiV0QJHqTOtlZywwT6dUGYwFCxh7m4I3TP2b2aGTpnaNoJEgNGqbtmS16gIOFwW7p3Vw79kSUjhpPeLGw3hfOXlrJSl731UWtcbrjVkAbFQi9tEG3lxsdfULPL0eb3dCfaBP/ydHc7wozAkcKYtzSrbbiI87UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZuUx8/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZuUx8/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5237C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771305893;
	bh=9Sal0D3784U2Xg/K7jMPg0bc5Uv+N09odQFayoSVbTY=;
	h=To:Subject:From:Date:From;
	b=GZuUx8/V9sWSLkrQ2gmClsbHGnIZRXb7SE26xmrj2JXo1loIb2jm1oSiyVUjX58a8
	 aq4yM0+rAZzz45MPLOD8A4PdIfFFlM/I8A9WSYbaNiOKPXlu07F5fRyjrfoD0ryEIu
	 pSSj9Y6nxfz6dp0uSF8pcyySDoHOdu2uLjz9kKoWBw3RkBDaN/qRRV538EzuYH/c8R
	 PwCQY/P2fRi6MexP/p9L06/22swB8GyZnFVkfzw62UHRPtqsvNiurlhLN0gtf1yUCa
	 pZ7byJ8sfauVMniZIKjS4ZINpaTIyRvMcCpDpK/vz7hcYI6Srtjmv5YfmTepghd3fY
	 JmU9uWG0BKnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9BE83855
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130589358.2044.12603995425782345325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac30ab3438c15a77dd9ff1b9b7398ba908e6f7b6ecc36a61a09b84c6205defb
Date: Tue, 17 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771305893
