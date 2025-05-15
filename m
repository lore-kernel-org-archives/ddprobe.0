Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC7286D5C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297194; cv=none; b=tETcGa0VRxOK54DDZt3o7nTZi54fgkqYplyjKa7Bs2WwFImeFSA9W8fhbT+yVJYweNHGm0R/XkV9cd8knlzELeqX6FvF6igQ3FmcYXm5cI8KKqZI323q3dCufBNAxU1y6p7FSZ+rTt1+ixvyT6d6Kjk+5DoB1XS6/IjhUxjySso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297194; c=relaxed/simple;
	bh=igOzlFEqNGNM5aZJqTIA0DIFIh7Ca4svJR/Sp25/+wU=;
	h=To:Subject:From:Message-Id:Date; b=NFGWjHo2aszFfxieBSgVDpDa0tsIluqU01QuizzPZO5fkA/5+X/DkWPA2+v2i9cLNfTdEGuHu/dY36lGtBqbLDbWP+/92cxs3Xo2AgQPBYnwHBwesE3vCyf3Y3MGMom1EipNSiyMvbxL+94cd8SGMuiPDGw+oxRy16R3TUHJeko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIrgXTZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIrgXTZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C1BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747297193;
	bh=igOzlFEqNGNM5aZJqTIA0DIFIh7Ca4svJR/Sp25/+wU=;
	h=To:Subject:From:Date:From;
	b=hIrgXTZLAagpfZE5Gfjtk+uB/RjnReAQn+SD4nzZmWZkmfrDpnSB9Jp22npgc9LPl
	 yzyxSlIp1wUpS+YqNgNFgSOOPYizzREKYh/UAC3HI/Vqgy1SEmBlJ6kueYv8+jj1oO
	 icrJ8fNnTCTfiJfdDFJg6tu2ELlAJio0ZsYStH/pVG8i/wYYMBJ0zcp/Uc0acrXmO5
	 63WYCewLuq57dwULeLndZp4KKS+8ouS2gfBAdQY4OmozMX+YRxS47ko6rEJY/2P45b
	 Sk+Ckn99HysEJPomhyCklp5aJSOewRtO5ce1Am/y1UWAW04vOxUwRjK7dVGoHrUoKU
	 2IeMiAwjtre4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCBC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729719358.5490.5818321334923263875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788962185e223b3f3fc711f4bf8372bac37d1125f485ac047a339c4b736322d1
Date: Thu, 15 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747297193
