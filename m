Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5616F155A59
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713211763; cv=none; b=sqFdzw4Z83yOyxLsVbXyjNSTnZMBycXhcdtaZwXslZX8/mb/sIJfTkhoGo3lPIu/3PIcMfiN2ro4SAMveB1ugMPJ4fMYVP4/ANBcpbf/lJ6jOmhf4ECnByd341tcMx5RrcQLx7kcRcPGlcpZv2Ly7bGfpjHUhFFt8ARmPti44Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713211763; c=relaxed/simple;
	bh=Kei83GO9MllG05eQzo6ydXDs4UuUubMwDz/pL4bSb40=;
	h=To:Subject:From:Message-Id:Date; b=H8NEX8iDf+YvfEtkoD4QXbAGuJP598NTqKHj9/UzsLbmmV6fCWL6gJ04rC/p+/MmAeTYVfVOee528k1Hh+19a5tt06VtLiI7VSjkU2UxYx5D67JDx6h1NwFP8YonJ7HnX4h9+LF8jJpekKxsCmWbirWHppkqjn9Ry696LCrlU+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EREDDpFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EREDDpFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0103C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713211762;
	bh=Kei83GO9MllG05eQzo6ydXDs4UuUubMwDz/pL4bSb40=;
	h=To:Subject:From:Date:From;
	b=EREDDpFUQ5M9H7QeidDVDKKGArJgXjEyxNQtqPoxe8sm92UPO1wMbgZ2dJsbhjAtA
	 I+HNrXPR6hsEI6Dwdp3HCErh1wqop29Czw8ESDX0NE4joVfNN2fl0JjMZL8fjDGGen
	 AkTR02r0inISx/RxVHU5rJ6WzfUVYkradldzWtC71LzVAMA+CvOWZ1OLjOMV2YUg/D
	 AH/6lcvKN2ceSc58Q0kFs4JNT0THbz6WmWhQ8tdYvWjGlEq7KclGuLd8yBldjywBWk
	 QtkJaTP42orn2LVaYNtoxi0mo71tt43Rrk+tL1+F9/jrElK7vSCS7nxBL7bmfG7C7o
	 FuSTaNuFSTURA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BA7C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321176278.26748.2133083605205985624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134bbf9f66811da3a1086aecf2cb13234c3684f3e00046b6422ff840d3a3a36f
Date: Mon, 15 Apr 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713211762
