Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AFA287516
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765794774; cv=none; b=G96CV9TV7rQ7fTATS3pZoqDJY/LhX9I7tyT5Y3yoR/o3BMoQmnUkOr5X17BZJutmg7fXkC6eGEIpHQxSsxwvvxt8pM31rtOfFw2PgmyY3YXh76KBkLgHOXccNLhQMz/I37xrqEfUZoNl7dFT1j++pRhUmFiRYGjF515QQqVORus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765794774; c=relaxed/simple;
	bh=NjGeO8iDNF6/XaXmpYm8wWemLu8Dc288YjmNaH/39z8=;
	h=To:Subject:From:Message-Id:Date; b=I/yD+68DCcBYq5AmMNIhTevkvet09zsZoY5PfNfIYRb1sL28v60WADC4fayiQRBJtrvsK/2pjnfG9cV2MbGdI4GJgLwQ2fZCFywA+Sg/SeK40wo+hjN0oZe5ln0EtgVVH1OWtIrShJ1Ph+mWJCGcvz2V6FwejFLhtCt8a7LLepE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T349NB27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T349NB27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7571C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765794773;
	bh=NjGeO8iDNF6/XaXmpYm8wWemLu8Dc288YjmNaH/39z8=;
	h=To:Subject:From:Date:From;
	b=T349NB27oeePj82u1K3P4hL4q2YtvXRfPg42S4q7ITc9HyBM4JehmL1m7QwIZTHfG
	 FvMGX9yZrmEs7vlTCxi8oYxiFKEUTNzWwAZyS5hB2LOKnS8tfV2DxAB07X7YYPg+AF
	 MKaZKUk855eD71Cj2bG11gPBr5zP/EalLWC6nXDgcChL9tand0pTJ0pFlzPnAyhgAj
	 zbOk7Fwt19Mjcq5BN6aEHV3qzm08+e0xWTzM3skm2WsKSiu/B9M3LBvHpY3HzvYM5f
	 gLFJFEWUMPp0ajy7//aL48q0uUSrs0gpMyCxb2uuJqenioyAOS/6YRLcif5ekVHMlN
	 jIaHanyGSOEag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F99D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579477359.16528.5141238923507239990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8ce5004bf39d351c8d014b845caf54c1064c081faa9aa468c1e5d8c538e52a
Date: Mon, 15 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765794773
