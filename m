Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9632DA75C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768222434; cv=none; b=rtoB2UJAthUY41WUlH4FgOaIr4YhhooOxf68vMkjDHWqanYK3d3ojmsanxT8QyWTa1gaEZxq3/COUhuLVU9T2W+8m7+4V922m4ejFqjB/BELDGjvz1vmF4n5rBNlcUwN9pcfF3cUoRhoUdUnRsr7x0XANepp3HJDJ7Bqghm1AWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768222434; c=relaxed/simple;
	bh=Xm4WVv9DHxptndGdY2cXH2iUI3QdshLdH4b71f35MXc=;
	h=To:Subject:From:Message-Id:Date; b=mzuZS8G7nqWk9aZFoYdT533MWIjvCMaaHVshGHuivWasVlwrlsaCjYCbUOHgNbbDFV2lJ5aiGIqI6XSnFMeHr/xp8eOv628RCSwQ5Hg1fRoXaX1n/eV5yWVuw372aJiwxGwZfv/9b1RNVZUTGK/tqMomw51fDa1q8MNdFjtO4Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtALE0y9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtALE0y9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE42C19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768222433;
	bh=Xm4WVv9DHxptndGdY2cXH2iUI3QdshLdH4b71f35MXc=;
	h=To:Subject:From:Date:From;
	b=BtALE0y9c9UYlGALLuQbB8JhgmT++MhnxOoKRaCawrI3N/kcVReaJ963SE7YYBLxG
	 SiQAiO0oraZ+BMQxqWiXAcDRu04VwlcvLfF4lAHKxOOlthL6CNMFbyv8Xcyr5vZ1IF
	 ogpKcfp2qaH9SlDuuEpW4ugIWycAvQZsvmbg7jOesZL9OxNWEjqtF7HmtIH8KJxqpX
	 IAyPnc7UgUBmh+K0V4aloUnQmgtU8dqCkczwxBlLEdpFF3aLOByNxY8bxU4eJQUIUZ
	 2HOWoeqPD0aeaq0d9W7ogMFdcZcAY88pMxW24rAfwn7ZurKtQUvj0H7eVnfrFWJJOj
	 3YQZEPn5r8ZFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA6C9EC86
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822243358.5375.10037262633078697294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233bab28fa76814af2dd2d6ee6d671abe5c8d1e4a0f731b358dfe1cfb4fd40c5
Date: Mon, 12 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768222433
