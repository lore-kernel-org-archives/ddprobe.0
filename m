Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158D11BDCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754801395; cv=none; b=Udb1qC9CezjdJJYen2xkwMiybxPpAV11i+E39hVp5ZGqlJtPZR0BbBHJD5GTGnEmrLh2Is2iio9foinxREvyqtfIHH0QV8MLtsOsitp4u5IJBhAMyCCqXKl6amD0cQscw1KO+wJ+/uQvy43XyoGXbn+Hq6FMZSmLvpX09iqOiQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754801395; c=relaxed/simple;
	bh=+zeshNqdgWkP5AJx9NJqY1mYWa1eL43t3NL+LiTdLvQ=;
	h=To:Subject:From:Message-Id:Date; b=JEii4V7M12WQWhf4CDZ7eQiDCLaaClYX4tQPqGplEfhp1uuoUNw3OlyZPTQ+objLvKQYQvGUIZfd4W/yLLhv/w5rOQUfF1fmFZrItmlGW8ec2DKsDv25Ea1MhDN6ABshiVAoLq0w74aakpjeIPU0pDnM9o2M9JJrWDqPo6SQefE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwgpC7k+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwgpC7k+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754801393;
	bh=+zeshNqdgWkP5AJx9NJqY1mYWa1eL43t3NL+LiTdLvQ=;
	h=To:Subject:From:Date:From;
	b=nwgpC7k+11aF7SO2qAHPGajuRm03pAPdDcMjOhP66C4dkkz49U4bXEPaCR9mFUrWX
	 B/WKAziUiQim2uq3CQXk7zH/TFYn72ZaSuHTWVwKEGCd2hPYK+LKNNETwkGSrNyREH
	 NrQnNVXbsG6t0GzvgGjtc4d2fyIzdAnni6oTxRGyA8O2enLmNISS8KTFnJDIVyX1Eh
	 3zlbqvSemeHzFD0N6MyUUmDq6JO6VqzKGPZELt8eyZYzdWMvyL18RcbJ5btthA7pIW
	 xzWu4v/e8oOxgaet/tsUBjyAGS0kEsipef31rKJf8+UAg1OdgooU6HFKM3c9r2o0ly
	 B1N1ztHyf5LWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46AC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480139357.2113.10516453909325918528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c168194fc43f26a58c25c2f3445d3c157cd8e5c8e7fd59fb4d121d8e74d7f7e
Date: Sun, 10 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754801393
