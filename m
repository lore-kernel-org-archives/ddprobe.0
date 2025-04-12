Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57609DDAD
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744419594; cv=none; b=T6uqxifxOaVmO26oAPSrbOcM5bhraQgtVpwCI3hoQa6gNl7o1yQCJpAr2VBeUDaNhgiAnWfsrxNEl65VsFx1NwwkQXi11GrK2NllQCUC5JOFVeg0B4sT6fGT+PiMgirM7Km0goNy5f6BpTnz8yowvBs9hOAJnW8Qg7N4VUeU+d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744419594; c=relaxed/simple;
	bh=gadwXSoqEaRg7wmJsbbMEGLbbUjhOUVhgY5o9okwvLU=;
	h=To:Subject:From:Message-Id:Date; b=C0oiE30W5R+84L95ctdcqLIO3PIbPvQz6Q26CC69U6KtxzFD1W3zsUeJu9UE2IBTQwYosTRQ0Qm4OayYGKbQhw6C3n03I4fKoSCeEj2TQHPUJwohZxgaarWCFFFIQKimm4jJvnxm07JKByqsbgIUCRSC25Qpyp2NimClkrF3pIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhtH5ain; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhtH5ain"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42F6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744419593;
	bh=gadwXSoqEaRg7wmJsbbMEGLbbUjhOUVhgY5o9okwvLU=;
	h=To:Subject:From:Date:From;
	b=jhtH5ainHtUAGTWl1fHIqSkt5U15wYxOsMYkZVqFD5h30nTNCyv4w65K5b5stmkAw
	 P01axVMzrna/YH9Q1T9vntTLpTdTxQg9jD+sZYz5Of8b3k6YZ0YJosLp5eodqe3rrR
	 HEhPKJaCyYdmGbC9qKPX+1QGq/6SN9KHqk1xBMxeYC3RwS+DHfiEKX1sU5mGV8ieB3
	 Fd/QavDa8wY3o3V+dffUaEzuxWHG6SbXf4A/FPY33ttuOO8RUT8/pkb8yGSXH2/li4
	 KQBJC5Stv933bUtBZLNscjZf0YewqhbanvTIznSi82tfaH3Ym/5J0OLlu/Gghm6DD6
	 ppHiaHtdU7mpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7ACC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441959362.3947.15219002541168651310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f403209e7a2a45464c312916be1f505f740850195aa7b600969bae23503f94
Date: Sat, 12 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744419593
