Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B503FF1
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749343195; cv=none; b=mglrSYI7K12lnQ6vwvaHeS7LPL+yXv2qd/QIUL5M0yvTh6d084AdlwGuEYItPqXy/spPOIrpABkm4mjoFp+bt9IfhSvBzcXfe+LpUILVmsg3CF6l2q69KMTgD7VqOpYjW9Vl9N0Bz0QT98z4F4kwqG35lZbemiTh4OzzdsQqlcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749343195; c=relaxed/simple;
	bh=1L3SHvzELv4zsDiwzHW9b5JIGqmamAywkSXUrDOhzl0=;
	h=To:Subject:From:Message-Id:Date; b=oA6TJfiaB+kji+4w52kEMrnn7xCef3EJSwOAqbaA4vYZTULL0t0M9CiLoFVGnJpGxXCut4musdWDUTNKRopkwqlizf1Yi+PnN9S48YN09gNjXL4PNPk32h3QRI4lscEu/xZPdsbRFqhaP4AKQ2Xar+9BmFIKWN/kumQprjjP7pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPLYshbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPLYshbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE9DC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749343193;
	bh=1L3SHvzELv4zsDiwzHW9b5JIGqmamAywkSXUrDOhzl0=;
	h=To:Subject:From:Date:From;
	b=oPLYshbkN5kcPbkI7h2PZ3WGo2ApQKQQZy2EgtvmHQszJ8E1cU1sHHr2V5jd/A9GK
	 yz++bZJVhbtwlxjV/P7e3v0tXWmcKd3zsXDc4GCVgkAiLZveNQYYY3Wtbw44UmJzkN
	 eMnMbS+NU52IMukOXVhucxbkesdemJTU3dZYwoN69IZdPmsKTWiGna5F15ErzU1SrS
	 Yqtuf/RtKywzlj9nXocQS6MWj38g5fNa7vhy3JeLs/8rtuOPMg2A5Hue/lyENuyAGL
	 KIzOtBUTgY+M6hsWT1OlSKKlR+mVleD3Jpuh5vI0qYonZ2F4/K9p+CGb7fsgWXIsT6
	 OAR1EzuR5LQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980C5C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934319357.7507.6533668365707655424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f96ff951a43e847fe03da5253fa9b82ccb61749ec37c1af4848a52ee3074d68
Date: Sun, 08 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749343193
