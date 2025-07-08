Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367A33398B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751999394; cv=none; b=HZh6r45bDuzs5wXAFXorIDZHHoOM10CfwAC8DyskFOINiC9QF9IchrnPOdSB/nIk8D7hucma6Chs4fo7BAyHImqL4SBiCNlZZoQJtjl5JFQ9Ry2ZpWcN+L0sY5C09o9EzWj9hce3jeZO44Gd1KHuSE7tGWeQpgYkvNMfCBEDcPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751999394; c=relaxed/simple;
	bh=B6leNM180ihVyHm/SjkrHf9zk1sMXnfnIoq43b1OmRg=;
	h=To:Subject:From:Message-Id:Date; b=JbuDbvDIhhxZ1LgsyFAal6W5QDBimFQcY4b3YbQDmOgBURYRmcerXEGRatCFhYZeIgtYGxClFvL3DKQ1ZzAanXbg/KBUBkQzPrlCngl7cSEVokC0PBDNcFux65SV+IUIzOdRyJvcSQOKtdSoFLiXt517Ll6r/DiVJgZiVBwFxtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsWcCXuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsWcCXuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE20C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751999393;
	bh=B6leNM180ihVyHm/SjkrHf9zk1sMXnfnIoq43b1OmRg=;
	h=To:Subject:From:Date:From;
	b=dsWcCXuRrweKuusYVEooNUbveP+rctmomc9r+ymUVVGuKoIYRh0s2QaqNoBRtYAkt
	 xcuNSKgtGVjuvaypBeNfCAeuC853bO8rQsBkMDPk1tjx1rEm+GqF8XBTt/mr4eHpWj
	 h6boMgSMyOxiTBUR5qp8OH0iKIyY2Lw29CtZEwbt9pdcu1qEHxyE3vo75XmUvrSEJd
	 blIybJiPPANI4HYlljiVRQctNJG6aJEiqEQx7Ka/wyhoZ7tZ9kyI1PTLX04UZNj01F
	 u2CV2oE+Kk9By32GqkBmaKAjiRwmNU8UqcGsVM9GW4M8sU6q7V8i0gJbk+MoWDxCgA
	 USqr/AxSQZxMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98887C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199939359.4087.16023623560875051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea7dfbd4c28a88688cd8de22098272d1e6dc4e899a6a94a5185767ec75d09e0
Date: Tue, 08 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751999393
