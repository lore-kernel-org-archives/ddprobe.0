Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3090732862B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771661694; cv=none; b=ZNg+epIa2hlz3zse/bDdvT4BIT1fZIxvmaZGqo2IHeYmLW8+wHm1qoTv36Z9LdytUjW2dIRVmgxqrgwYs9YmNCSEzI0uULBIUn7TJoIaYZsb/D/Sbt0aWJbeSV1NaJGaVeCxHR/OmrWcG8+k55QajbL+C+Ed7/RSiG5b3v6tma0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771661694; c=relaxed/simple;
	bh=zbf8b1DxqGhqwcJlFjIN3wHPKZkklN8/g402mSOWvso=;
	h=To:Subject:From:Message-Id:Date; b=AeaFQBHGXIbfMrurwIBL9a93goCG3rtkb8viIL+0goLmCn04r3nI+4gb1YzvYFWcSURjp+IJBA3eAbvJpMwikZxqDLReRw3/GoGfqZYlK5KWra2K//lSfVaABPChsFI0NOZELVNwNS8f5QsEcmdDrWUCaSuaCeErL+9zbySoTKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crA3H2H4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crA3H2H4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB356C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771661693;
	bh=zbf8b1DxqGhqwcJlFjIN3wHPKZkklN8/g402mSOWvso=;
	h=To:Subject:From:Date:From;
	b=crA3H2H4h4Ro4m1R+rilVGBim0Gtl1bgNqHMmj9iBDi12sLZivBl/ucDOA7Yxl3y7
	 zjcA10yT/yeE1oYAnSP0y8bscgUfoUOLAS1CRm1VcZF+9HJBdNGUC3JF2/EsKa2Sfr
	 UgkpzaWw+rLv/8ak5Y0uPrta8PusEBLTk4VMCjygd6TigCK8ptsJtVqPuokVrQkRwt
	 sKo6EPw0SU1aBGIUqJqM61tgkT1/mRbqEoGRO2jhgOwN4PQKOBB1qOaSM2j1tzQfTl
	 qXkGC6dI3lIQWMLL36ZcfU4av7CtOZgGRykM/7jEwNAJ2/U5Sp6JjJ8aVQebQxZf65
	 k7i0j/Dqn7kWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986B1C61DC6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166169358.6538.13153031011920397714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b609f7f899de790a2f0e63db0d34faf6c905957e2627fe66ef1d4170cebb15
Date: Sat, 21 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771661693
