Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B8C30DD00
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789195834; cv=none; b=L/75Tg+uU1+ULSrtFgS5WvUxgTTE1Ko22yU54aRpXuK5+GcCHYUC41ORTrW4knMMNE8V5M1hYSWq6qIkJ6MKpOiU77s7K49BSqkpigPZrR1f7FjBU2xRWXErBMOXfYgXVf809sTfXwSZwFUq6g5dMrB+G37dFbD1t2K+MN0wIZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789195834; c=relaxed/simple;
	bh=iJoTDXzAJFNgA5Gga49HIOLSQObjkSQ9clb6q4iQfaQ=;
	h=To:Subject:From:Message-Id:Date; b=Kg1TXWIfe/y9ZFYJfqmhnbaB9auOG0ErR4YxnDeKtD3kjZI8t4cRixEkqqc3btFOl9bCR4urDgN6bC8rPDoLiwHG6Dd1qjrOeaJp89m04584Xc5hYWJK0NCRAkjV4wu5GlQGjHGwEDJwNAb4p/ya3L3Z885ggivdwRC84Pk/egk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bx8mPgiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bx8mPgiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D98C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789195833;
	bh=iJoTDXzAJFNgA5Gga49HIOLSQObjkSQ9clb6q4iQfaQ=;
	h=To:Subject:From:Date:From;
	b=bx8mPgiUUcLmVBA+kIY5i13yTyGntgdG1UxnkmzZFdaxUTnPn05PfMaHGG/HcHoGG
	 p+YfbsejNTFDaRpMCpVqNhNyEbC9uEvaCb90my/75sp9/GT7OOAP/9CEM8/eh5b3NK
	 haE1kNnwdL2c0JWU4nHbp9StHqHtDnxxazAXezw88lRIwKw01pKmSREH5X8pIETYhi
	 9Mzi71hQ9RBhzZAEPnL7XBBF6E+giOd8mBFgw/8IdZxcleft6W7E0VrMa0+/RCJwwI
	 D7AutlY9QbsaBCvKf0pp6EBNyAiQJLVe/cYzyOij6anyKvPFc1APfudd9OAbk/ZyDP
	 iap9b2YO/+Rtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BBAC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919583368.11195.7888614962097354232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edf63bb407daad07465e8588fd411e1816e4f46ef4f4e2ee5462a0d69607929
Date: Sat, 12 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789195833
