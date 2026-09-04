Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D50039DBCF
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788532834; cv=none; b=bKEU9LAunk8DWYoknvtnGkT2fDKWR5XcKcaOYd1WgjDTEqJRlnTFYxNzqniJ7sTc66D+m4vJWNih+js2H6g6N16Ja2tGFUJEqnMvAki+FPY1x1GY5KPsA7iRgLpxyVbTeZ09i0g9ri8qRRaixtuoXJuWUrLA/efWx0eozdfulLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788532834; c=relaxed/simple;
	bh=Z32rD1XEjwG7aPrz5Tv8SzE43mBtOTroUEnvkRAwnoQ=;
	h=To:Subject:From:Message-Id:Date; b=VlUeVP1oOb2dwOuQm+nXpWvaOHJgGs4GgWsBy57+o8RCN0uKYbOIb/slK7SRqfGitWqD2h7nKBr22eTkGJIt1ig8DFtcl0SWZnnfaeGF/k+lRmB6lp5SsrDekUn1VZlVZdBoleq4Y0qyB5wcJ6DOYr6REW09xk76Zy2dJDKsteA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqGIGJtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqGIGJtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA68C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788532833;
	bh=Z32rD1XEjwG7aPrz5Tv8SzE43mBtOTroUEnvkRAwnoQ=;
	h=To:Subject:From:Date:From;
	b=PqGIGJtTZAEFs0D4286t9LFzDY1IlDZNDNdmi0B4LBgwJv0+alyItsQUzOa2dakNd
	 2cu2AqzsL2/61a8K9FJswkmXFpYMdRMN6bM1dh74VqyLmOHW5l5VTMbbN8n1E6QoHf
	 QZs/3lKyHCSiipe83nZK+VcZDmxNBr2m5jmATjcNwfPOhX9XryoFOcEGNDu6WsfUpe
	 tqyO6Anu80kSAUm7aTxBWAfNEAMW0lzu6U9THVjAebCbK683zs30gd9R/NTl8R7t0E
	 nZeA+gXo9b0lFRSqR9AYaZz7RL3fDG9m0xjIhmmGP3caeycpnY014ahuOGjCU9Xr+c
	 gpX/AGbmtsNkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB94CC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853283369.31080.12174153829072139357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4a190ce43df4c4af2799e0b14b00fe67a4362ecd65f15a0fccff336581865c
Date: Fri, 04 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788532833
