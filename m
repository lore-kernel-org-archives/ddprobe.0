Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E3394787
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775237134; cv=none; b=JrYfE2tGBYmcDlLt67tiWsA41y/POG12YrKZ1Mywk7GF73GOchwJuFLFMYqUD618AIUqiasjuF9TKQ82eHy9nP4La+/56nRPsbnj4ZaLEoDd+AxmarKR5Tws1bh+RVC2kppSO3gvBYfksIZUB7y4geX8OQfYLKsAhkXdxliggJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775237134; c=relaxed/simple;
	bh=+p72ZTHxF2bbBu2zYkEW3zBr5cPnOqdGxcgGnghXQw0=;
	h=To:Subject:From:Message-Id:Date; b=OKGOiKtkHKJVWWiGcX2v71WmBDBG16Ic/3rAqyN8ijQbTJmdTL0K8DWvvFizWkf55EQI8z+ZJDwt+DlNPCgq9ZD0wko/qFG0dS+nNwYRMtU2mgVEsAqNPhOLZTFvydPHGBnVvCp+06P9t7LdP4/qi6rxXpWPj1OAkVy8uRJnIq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CE20+cXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CE20+cXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB00BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775237133;
	bh=+p72ZTHxF2bbBu2zYkEW3zBr5cPnOqdGxcgGnghXQw0=;
	h=To:Subject:From:Date:From;
	b=CE20+cXLBZdLUCA46Zs/UxRndCAkoqt642R304GZHN6IFkJWcwRvnpkTAh2DdeeKc
	 6udU1xiPgeaRzLbuJ7i/A3U1yBtaY16zlq+7hK8vuaW0LnxqgW14Or7eyaGrNZ/L40
	 qYgQd9bkVY+pyQptcUADFDdzf2OsDu2j82B9x9sNk40Z0NErXZRgPKlJPgSu/8xyZn
	 ptX1Mz9zbZXweCQspekpGuuUhk7JjAZQmr0SlzpJeR+wWvgrIlk+eJY7+JErduuAB1
	 sP762/Ibw2LvK98E40CBFlVYCdfP7ghI3H/QwoItFEgVb3kiJXJg1WF72fiRxmioRO
	 PtEA3GMemnfKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB00CE8538B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523713369.31265.18250070591239975770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96940fcbf528cf014e1e9ac847c41919bb6daa0e19c367419c9a142bc1e2bfbc
Date: Fri, 03 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775237133
