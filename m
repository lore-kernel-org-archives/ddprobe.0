Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525C533AD82
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781798794; cv=none; b=eq+Q6G8aByPDo1UTzUqX71FhpJwBJkc3eA6QnK7ICjCW30PcEWGw3mOrvcukDm2O9hgDdjI6I3q3M5g4s+6weo2wVq6HieqfwMgWAMpCE89DH943WaJf1q9gSoWUgc43Av7ff4BMUOmgjA/cQaAK5qJwzfZiNKZqER7wczGZOtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781798794; c=relaxed/simple;
	bh=pk+mDAMHwGcbE82Y0G7PC9oz2OhGogXkzkVqytPqw9Y=;
	h=To:Subject:From:Message-Id:Date; b=imd3aMS79rTB6T2qBHZCtQOotKc4+CDBY65b7qe/1RTWbWynT5Zcfuz6k9kuIfsb/PO5kaOFg951AoUfvu1hlfZY45n1XcUonsHo7VnHx76wJT7HB2P3bc0G6ha0f/yqrEu208CDFlBRyFe5S5dORG4BSvzH+lOYo1BSsraM1Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq2rzpt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq2rzpt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E74C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781798793;
	bh=pk+mDAMHwGcbE82Y0G7PC9oz2OhGogXkzkVqytPqw9Y=;
	h=To:Subject:From:Date:From;
	b=mq2rzpt5My9oS+3Maz1A7kt8oYA/w6AL7ZUtSezm71MXlM4//gzBNr+1QQCN3nAqB
	 yAoak0MDNMGAPS1y+UlNae30AsZ+p9kSp4ZKYuzR9r+6dAXY6RT9ZScstDFIqnQ1yR
	 aVeSdpT7xxWp380Q/rsq7yM60geeorQHSHG83EkZc7RpcWf2n9Bz4wzdpVwgZckQQK
	 iCSZ4z3Wd3L19QvAcLJTqFaDfqM/hGhizeMS+4zPmcngx2MxaZyZCn3evXdFUjCG70
	 XAaZtjHQdJhLYB28PNLA5lP0iqsyAWCGUsr8NIvR3yPr9wRp2lbuQF1KyDb1+hK0nU
	 qfhNdzsPye3YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7623CD98F5
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179879369.7153.5849702527894028696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e61fa0d6f02bcd570ae808398a11ac49a8fe2eb27c76ea19997512d12fe91c
Date: Thu, 18 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781798793
