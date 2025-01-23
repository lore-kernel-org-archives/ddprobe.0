Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3905C1ADC62
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737669354; cv=none; b=GGTUxhW1DrdnO9PkXBT+gk9nX67rboLe92LLtRsJwlpdLp7NJNit0DG97Ip0zuIxcEg7ALar0KwoeFny81RBc2DgkmsUS5lcIDXXKp5fcenaTG79ZkAolJENP7a2fOCV/bLHxksHFV7Wx5J2uttSv3NzVHQB4DNEN8m1Sw3b09Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737669354; c=relaxed/simple;
	bh=YHXVcrnXjTPfq2EEGRk26fvyuxWKSLjgmUlGzUBHPlQ=;
	h=To:Subject:From:Message-Id:Date; b=ZOiYrCXg+Ck6LzDkiKxFxUEJ/ZIRSp8AEa71QHNlWHrGf6MOgX97LN06iQPVHQ+98y9ZbYHH6MCxolHWPhjqkv5TxAN0+KYLwZxN0Am+Hk9Th6rTy5IBI3pXCeUxwGNC79HNooc88GQa8NlKZuMS5FReYfO47oL6Cc409nx4Ooo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAZI0D7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAZI0D7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB387C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737669353;
	bh=YHXVcrnXjTPfq2EEGRk26fvyuxWKSLjgmUlGzUBHPlQ=;
	h=To:Subject:From:Date:From;
	b=MAZI0D7TDWswMBkrqvI+pY9mMpYrYjgY/5emvkAb93GX/jJNuX9ZH4VTSNoT3pRlN
	 4PghqQIPSnLx8yPi4MJ7mWDxQ+FaBVWRYXVsp/AFeetnTK5TNiKkw67Hd78OFMlez6
	 2R8MlHW3fTcCqmTGUE5lEYDFjeGwpJWd2JZLKLuQ8ZmZsQw9eYuygg/LDqHo/zafNg
	 VLI//o2aKt8YqMVtS+mwemtsiGUePK7gEyz9kIK4YN2VBfJJq9izuQ+dOlZ5ddyzi6
	 M/Yk4NEykNq1T0utx7yf2wmh/o9L8uX0g7/OVAQ/u1OfqPYCi9JhDeRvVWPd1uLmCS
	 QxNJ/NXkKk57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A480C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766935362.3148.5460402378541926047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8eecabd2e764c3a944528c2c5dc199d93193eced2dd9449a74ea026f027fc03
Date: Thu, 23 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737669353
