Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F06312825
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777657054; cv=none; b=G+IQEPvut3wWgBUlAHNx0Q/Wm/ajVAsxVqmaphFh14bBPqQSWf1W1p5+Q5+3SVRmTi5NsvnTDTOWfWil4XCJIJsryElNyEcOFNVyIGqeTKRA1lH0Q17dfG/M45Los17x7Tj8HuJhITJpGkb8fyIkSwhPOqVSuiVNgT/WbDAMpJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777657054; c=relaxed/simple;
	bh=lXb7PwOnFW+YqoRWOnAIZoprXbQcbuPvO40pqtR/5SQ=;
	h=To:Subject:From:Message-Id:Date; b=s7h25RLOTuTutn4a/krXuuDRJtg8Mmi6ybS7k8QD4DF1cjecLCMCzKe/wOwqtdwruaLvGs5NX+msNrWYoa1GuDu46aCYEvw5FAdvgZqpZimnqeL/Skdqq/nH6KrVsSO/w9WBlUkDcJZpR2Sdv94r3DiQ4R5VdVgLTiirat1feRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw2Q6Gt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw2Q6Gt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8337C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777657053;
	bh=lXb7PwOnFW+YqoRWOnAIZoprXbQcbuPvO40pqtR/5SQ=;
	h=To:Subject:From:Date:From;
	b=sw2Q6Gt/905mub2qq8x2qP0H3UW/Fxzy3C24IiUxFaGh5GK/6L21plbA7/NmLzUZh
	 d87YQRo7zD86xJY4TJ+IadIdaVTx96d43ZwsU7Q4ey6vFpi4PI0oZl+QS1PQWsvb9A
	 9UTjrrNOryIEJ13ZJwccLPV35BakVutuPmXVzaviGt25qYcqp6mYsRdxez+TARSORH
	 302pneYa4MXLjDQ8eGRcGX8Tqmab4I0xrlG55tx0drLAwB94XlL/vptfYOCVJb1JkW
	 Eb9ENxzhx5xgFI5Jlp+JkVxxlm6p/SA84Dpt+qls8rP++ygFJ01b6cxb3mSEw7Ye6Q
	 w6pyOMWCD1WOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C4CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765705368.10335.7161113948104891538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef680c16183fff093884504793ca645a1567b0baeea300b0cb0024155253b96
Date: Fri, 01 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777657053
