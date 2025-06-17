Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251382853E2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750138794; cv=none; b=Ijiy+Q6i5sSAzacj4MSj82dXFhWOoxwUmLlXI5Au6zjSzOYQg+4l+vkAbpH65LNSTT7OpmBCEf8ViNYwr5TzkFpKNxPX5MSTm+8cPfR32bJ7TAnm0VxMosyXBipUnQx9/rJu9aWNcJFVjMJ3N5D71uhzr4x3fy52/NrUemk2sIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750138794; c=relaxed/simple;
	bh=it5+MRtr/JZO4E5bcxGkvxf+x+L+QOVlrrR3pATb5Wo=;
	h=To:Subject:From:Message-Id:Date; b=HcASjv8aZUYfkc+F87FMl+0R2xAm7QXTrJ8J4Jx+uqAKRlpwCaPDGj/aMvKevbc/O7d5Djtt24t/KIz+X1iw0OktT9vpH00VyT04lMtu2hU40Gsu02RHKMFF/alvrP1l01v0obX91uegOznt2ir/bC+llfH4zphx6eiW0IsqrwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLekZWPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLekZWPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5370C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750138793;
	bh=it5+MRtr/JZO4E5bcxGkvxf+x+L+QOVlrrR3pATb5Wo=;
	h=To:Subject:From:Date:From;
	b=HLekZWPQ+J7qWy1JDmh1pesCkll+iwn7btAn4rDaw+H64E/o0igJXsYO46SMAuCdh
	 dohw9Da1eid8cyXstn1JTRI1FLzWi492GT0wKbfTvgo/PrNx+/CnybPgwkvOqc9wWS
	 GcjSH6RpsisYPY/imIFLpfJraBkTr8HSYFOs9/rpi+7JvUB+9Rh1X881bY2HpAnt3+
	 4tRsPFfxySKCtbHxI6U90ukN40hD979oWntBFL3fv2sT02SnEOIggGUkSfwx5K1OPt
	 IsQp4qdF00Oq68w9Gp7Qt7WnNIwYHP+BiJc4HWpr0xAHdRG9ueSZJdtU590ZWst8Vj
	 +vjkLu65hoSIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D0C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013879358.15181.14729959116858750852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb5cd946bffe8f6bd9311ff16b2f819b9d6f70287940928fe00ad80d845b392
Date: Tue, 17 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750138793
