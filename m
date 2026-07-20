Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5416642CAF3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784558314; cv=none; b=NQpYOBhfTZ238z2BJ+mR//XjGMAC+liNU9Rsk/C3Ix516qylWsreCJ6AB82jPg1IyXWHqmdiXPi+kjmoDolj3LGg9pTHIWgVUcqsyuoG160w7aFs/pzEm51os6CMc4p1DC92biPnkobhTyep/qdZdPa+RoU3vzduCNGytxsJeMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784558314; c=relaxed/simple;
	bh=dz79UFWN8ge/WHh9+YnkhcxF44PhppfPb9QuUStCrMM=;
	h=To:Subject:From:Message-Id:Date; b=GD1ItJvE4c0Wz7tgixW5kB0K5hlDb/O/S1ND7ulNQqU+h8MYaPF4yScPgadHHHrMKYlOdbRZbGXKUmwWpdmofd5BXFJvruwjU2aXMXiZXSHFpWs+tKShsT0KlMBYOezchL5wrcvzTPCT25/q06CAlCldS/LE+8otAfR7yiAHdxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYStkMcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYStkMcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FDBC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784558313;
	bh=dz79UFWN8ge/WHh9+YnkhcxF44PhppfPb9QuUStCrMM=;
	h=To:Subject:From:Date:From;
	b=qYStkMcdr5qX9M8kvMoE6rYHydW1RbBMWJKrJbfLFgjcGovR6S8bTdm4MggfL10Z4
	 w+8W8P3H7EucwvuooqTDRg1sqbiHUmyefrtTiFefM1PTJIq/WaoQMs92vYmGH+Z2hn
	 ZmJCKQGwDGj2AbIeJWJufYt1uyE3QaGUo6bBMTb3RXPvc0S0jK7trJAhNDtu89sIWf
	 zG2VU6kQxf/gfxeabACTEJCx1zlozQ0LxG3II4OpSDqRLgIXIp0oAEgaSic+zy7IdH
	 OuMzrCD+j6PuD3zGCwlwLr4WekCALahCHZCod+nd5sA2fjy/yMlX0B+KRj++eq/cDi
	 flghZ8kDljNJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C80C4452A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455831373.26735.16344845507359764316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3033b04daebc6540eef3164d80b506c6f4aa6bbc79cc6f4feb042c715d3cbc9
Date: Mon, 20 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784558313
