Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2366F20E03F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737636354; cv=none; b=jyPvM5leqvF+NUJ62rdAAi2gp1n71MN/PIYd8iI+QILF7fiEPxuC4skR1tXN6QPck2QBrPOZapCaNTv78KIwkxNNDDOzdI76CFXYX8P1JIzvCfdGOu1mRb7jkmpfpMquEKMVLzBvP+Fqb4xPJYlR8DMDUKjqj6JkYm6Bm9MKrDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737636354; c=relaxed/simple;
	bh=nthHipWp3wzwrFSZuHE7G+oUC+nHI2noQchZ4mqq3Ys=;
	h=To:Subject:From:Message-Id:Date; b=EC4uqSwOQk+pLCrn0yjSHa1r+Ndo9JAwIRldsVnAircCc4FH/RrfGvX8pAA3CRsM7ZBVy7t1Xlnf6rQeC4EZ3BUcRFmOZIXQGDrZHgadGxfrC3txofaCRqcSDw9QnpSXknKPz5jSzmzd08ONGVoiVwRgHV1AsEZSjrW+dbTLBQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGEyWvjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGEyWvjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145BC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737636353;
	bh=nthHipWp3wzwrFSZuHE7G+oUC+nHI2noQchZ4mqq3Ys=;
	h=To:Subject:From:Date:From;
	b=AGEyWvjZk3nosdnooCrRfGwNTx8yRiujJ0fbkpCOL6BpKHqf+2r+gl7iqIcM3JWqd
	 mXWHQNqC+V7Mdw5JN/Ep8RxOhlYkav2GZCXdjR0NMRFLOe5qtNCZkOuDRfg7qMnMgq
	 ElQ8XbxUZ5LJqROxBZgIK0PCR1dBCgLbo2uctM1N2r73VA+Q3XBArLj9+DCvDhvaat
	 CN0o9QQVHVtwTr2nLsSzzpm+zmFLiMDIDiSvOXDL+2sSBKBe7SwL8n+298EpKYDlae
	 647/DlB5RIMF/DtSwyV3/9kPrjer53JKqjMUL58MgnIwGr8+THWGjn36eybxkpJbrB
	 i6Ikun/etkrBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908ADC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763635358.28019.2280846566660330206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f45b69be1814d784608a8c6133bef778e2b8eb6fe8f854d8af9309f3a146150
Date: Thu, 23 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737636353
