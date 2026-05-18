Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D636F405C30
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779078634; cv=none; b=cT98zhdy3lQsuRmDr2OurEgVG23BV8nSRfoWqM2hjchx9OeIrEkY+0X5rqSIY+6NGeWcn4J5FhwPQpqi/+sYO3POXA32PHY8gxzEc+77ZUYT/NV7pQd7a7eAT3ihSAz5R9OYzgo7tHRGXHd+liNknWWUZefIdv6lwctIPRJkyeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779078634; c=relaxed/simple;
	bh=OVaMUokuKfGbFKKMPgTGkzAKAQSr+pjWHDLSR2A4ktk=;
	h=To:Subject:From:Message-Id:Date; b=BzuIrj5BAZliFi5Nw94lTO9TLn4L3UtB5pISxv6wYBUq41bse4rPi+JcWlsN7OeblgWlCeGZJJ+OKrPMVjGXM4VggROjQgKdnrXOPVEi11HA2kmFT/okVIo7D085U/6s8PnE0ItztL3/P3NjIpOx1KtvTRYd//8bhFCPSqND4oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEAryhHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEAryhHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 049ACC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779078634;
	bh=OVaMUokuKfGbFKKMPgTGkzAKAQSr+pjWHDLSR2A4ktk=;
	h=To:Subject:From:Date:From;
	b=hEAryhHSunvcuHY/vdstBQC8pcViJfpoRQYf7oDsUuAtdGwtDxVj5boinvsA/efIP
	 59+fbOinUcue6mU3R+dboY8Pg2nww0ihM6OgIh8wkNfDOmdrQpZYzooVzwLV0o6dw5
	 7CXI7Y/Fwg34IBaZMi/yyYr3GkmrunoOXjpjxINpZQH7MCGpqTgbmDu21ES8UuRQLq
	 HNRJsj6nXB0cK2+Wgr8MmtGvBnXsm70w8bV4mkUd7fUhUF+9MgeTecSNiexnhWI+gB
	 G1XZc/wgDI/SUeTShhek9XIQ3tH6fcMjDKAWrFTQv2pLw+4isd/1yX/L2rJQua0Xss
	 A86lEOxMKHNsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD28CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907863369.3215.1585256634473450355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f012c3d52624477447929e3558c4ba3b8eaca2b7fa8f88c272bc4425411d70d
Date: Mon, 18 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779078633
