Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02268346AFC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830694; cv=none; b=B/P0iBOHoA2kxeUm79DqAbjrPIDEWPUR6Twzs8mq3WB8UkL35cm0ZuFUY7tW/sfQBV1dHM915K1egQPi+qBru3biJVceYU8/f8tLU8HAIp/uQMpl6bYYWakgRs3H1V3sduq2Icgu83uGrDPBLDdBgzgW5kRBPX93RunSN5Th8LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830694; c=relaxed/simple;
	bh=AWyyuLQk9xniEC4I6ThLccBbLzNXvo1XemOmsJvxOGg=;
	h=To:Subject:From:Message-Id:Date; b=Ze998wGPmveHyD3s6059I+w5HablwATAXiotE2MljliIhLNUMqcQ4L+4N3Ynygiy4hihQ5yNP/BfnyGq1KQGTvFVYwmcZB3IJQ0d23mKZoD4OPvIYdgMLH/NsfkFxWaDS1BjMyjd3qtOfztuaXbVGvIOz4VwZuNMbvU7FKEK+Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHM2A1fT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHM2A1fT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D68AC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773830693;
	bh=AWyyuLQk9xniEC4I6ThLccBbLzNXvo1XemOmsJvxOGg=;
	h=To:Subject:From:Date:From;
	b=WHM2A1fTlMZLHYBE9Z3ZX3AXoogp2f8kyFmU9LbCvLuBsG8PN8s45shKD4OooweKL
	 cPwjxjTZXQ8qNKPmQy26NB2mD6Qz4N36+z5CtehLcr1WP3RJIOiTCXLjXvdEt2H5he
	 aURXcDXY1Ihy6WvgzYqrC6nYPa2/ZN8tOKvtcDPBFuCwaji9e1W1+YtCAQA7wvVBdp
	 FMowzrFfvsK+AIspVUgX4Qr8vsLlpbTb90MXh9ZV/nucalQbkl5+uKQlnI+3cmKtdR
	 teeL9ki9yFKWfiFUU4l8NuI/SytPp5l1b49Y6mEKplG1F7A2zgUNa4y8llhG/O66Ca
	 MuVNFT+DHBSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED13107BCF4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383069357.7801.15367447050562064001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b88d5e967146715d9de824ff73b4d86e2f7f0ab1b11806113540eb9f1a666b
Date: Wed, 18 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773830693
