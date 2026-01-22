Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D45F2D1911
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769114034; cv=none; b=QqLnh5F5XSSTD+9am/TFJ8zSFdatTfc7jZzQ5tShPok5G+FW8bp5uGr0mXeU7+r0QKpOI7aTBS8HtYiNEDISwwuo972OpG1Uy9DWMRKWi++Mq8yAC8ZoELv25RwuzD3mXoht23SH32Efml7sh0jxUOJ1Nnpd+fVxLOuk/gKD3BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769114034; c=relaxed/simple;
	bh=RHsIKAZEwtcbz2c9uUijw5rMUph2/OabfbMAoJ+9iSw=;
	h=To:Subject:From:Message-Id:Date; b=q6sd0wcG6ZfsZ101JNn169EU2NOGT04aYKduvlRRbQ8zfOPAvGwCIOtuKkovYYNxHKsEVptUw64RUSo5PLRl4X+FuNXZKenih42DSqJxOd6acJAVaQ2JHo/J6leeNnpRUuYIYrT11+1DPSJqvTd3Z1P6YnbelHLPo9E+gVJAmyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSNM+/FR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSNM+/FR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFCC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769114033;
	bh=RHsIKAZEwtcbz2c9uUijw5rMUph2/OabfbMAoJ+9iSw=;
	h=To:Subject:From:Date:From;
	b=PSNM+/FRBPTUDYc4LPiUeNFq00YjN2NT+G4r68VQnFZGyvoUAWtX3kvAswDYWHUTo
	 +PJj12+OpiS71hx1Rzk/eIROIVPbEFmW8Nu6OquWp2zFiVXn+Ae7/xNAcysaReOZwV
	 WX6ljpiog1bjWqRT3ljTkf5M/r/hqxJu2DONEyuSTTPr85nDgrzCjrnHbdp5lQPEyX
	 qmEgn4ZJ8gJLd5yOs0IeCX3zm/iUaibGMP7sgkUrXrIJSE7YLBrFxiSQLy06cWmhjP
	 gcEpWWgC0rqInXySM09HvpZYisI0Izw2IZFXTvYPrZNAp6kzE1fjjP0Ms2hu59v/Zc
	 Cmie43/JGSjkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D6D6CFA5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911403358.24210.14544176351686513025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5117183a31aa3a7ccce208e7b50766bab735590e33cf0c87c81144b8bb05ad58
Date: Thu, 22 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769114033
