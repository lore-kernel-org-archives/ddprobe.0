Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327AC7462
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729447554; cv=none; b=pr5w48G2bHdiLwL7OXt70pUX7Gf5GU7zrVvFbWQgmru1hH2cliFIyVuSD8WZMppAReGO0TEkW0iNEFPX4+613aDahOURmV4E/WKN3OfislfsnP9/tPgm6KuW88twaGZ0fk4chjSnMVxPxATlyeU6/hqJEnuoG2P490p3fmVdndM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729447554; c=relaxed/simple;
	bh=o14Hxo9ZPMG4dYLUWeSGHSUpoStDIHWCRU9d8LrKDZY=;
	h=To:Subject:From:Message-Id:Date; b=EU3nTsw/m7P9u3jBpKUerMk0dsC6r5PLNtlJgvT6x2oVJu4a12AHutRQ6leNZKMivmw79EQ1wu3Ut63TSwIf25uYUHgMPgW8azWbD78Re0d1nzxHAIgBoLtiYC6KI/5Xx67WNtmHpsDgUR36rYCpv1CqBi+P9sogEFL3fUDYigk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0Ht8gy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0Ht8gy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9676C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729447553;
	bh=o14Hxo9ZPMG4dYLUWeSGHSUpoStDIHWCRU9d8LrKDZY=;
	h=To:Subject:From:Date:From;
	b=u0Ht8gy2aR4sSRZ/q1CXCZSBUNUznyCHYz+utKyb9fHZXhb4igBObXgB1wVHDVOhh
	 fgZLMwYHhy+w1bl/arGW0doJ048cbN2nZkViiQVC78v9S1dV5ENuILST9usyZ+Ra3f
	 LdNI/X8IDvbLTGyWYTXPgpljHqKS321zKlTVvVIhr78tA0nE2IHhEPE2fTnoZMv81w
	 zx4UtUeTsTykx33cSfJG0i1SWr+TCSVmbGTz7vm+QoOiUZAIZ7eMuKtC46cSR6T19w
	 MoJ5nLhp1uMD3VHPU9uz+BBji3szY1ociqkRcf5L+qNhbGq+7KKMCK4zl9oXJYRjKX
	 IitrpnUlh9haA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EBBD3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172944755360.13917.16600998533067662119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ba7fb03e8ea9e3e4a958f8ff33fe13f670568e4610dfbee3c33cc87eb3ea89
Date: Sun, 20 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729447553
