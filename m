Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAF5DF53
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720835963; cv=none; b=BDJvO0GCZ4W6moW4+j+F6vD6tPlnyUuCv54CesMPPSJZE0edwkv+YXtLUg6D/1YrBamdTxql/e/F5NaIB/FbOlsu+48xpWufwGeQlFOknR4vMWnLDZAUlTlp/YTdht3l/OZ3dbX7LJ6dJof6gtnYFuLBwjnwmzQ38wtJ33I5ANg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720835963; c=relaxed/simple;
	bh=TwoPcC3EOJp5igiASTH0cbNp1U0HMZRjV4FJqNPATsM=;
	h=To:Subject:From:Message-Id:Date; b=QJU406+nmMlKP/Ab7Grc8wLni9dRjVjE5NJwH5UOjiktolDQt+TMalxoVq/acGHKRTW3gFEmCFa7jXmBPYHYk32/XSXstXhGcLWuig68VInt89c2rfcRp8itmJBP0HP6U3vhnGIi1rK7lxaUZsjS675VEVU222mHSmk1LdqB1Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azvxBCOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azvxBCOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2504C32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720835962;
	bh=TwoPcC3EOJp5igiASTH0cbNp1U0HMZRjV4FJqNPATsM=;
	h=To:Subject:From:Date:From;
	b=azvxBCOHaJUI+qcxCP0zugi4ntklbBUrFN8anCjhLwrsgpiRgNtTFn253AGR1cGbl
	 1xZSo9i1p53HXrf4OBUGr5QVQwwqce3B0UyuRDLhoz+NLxf0n6Ldl/Oq2ZNoz/hWyH
	 OboxrO9SeDBwgqU3mH6Ikz0eqvPwbr7L33V6siXSedOQ5hKF72dMY+Kbg0maUpAnjQ
	 Xqb0So57DKeuzSqBLp/8Nqb89Y8de6U7hiV1fkJ+6IVqcvKGZdbnDzvseF0YubB1+N
	 W0IlW0Y0ZTmxZaDk18rtUAHz6mUmNDiP2+lloO8LvbDaBRVZDd735iX5eOZb4Udr76
	 2Bo/czDtO8hMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2D3C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083596275.8310.17291486480496645323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f38a004e1f8678d9bbaaa0894a076f460b400bbbc9c06b016527b3f9628acad
Date: Sat, 13 Jul 2024 01:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720835962
