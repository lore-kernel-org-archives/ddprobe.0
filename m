Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F66133CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744894195; cv=none; b=Xq3t58VM8pg4s1i0MGggGfxGqDN/NGPeSZ0m8jak9Qo08BcRlwptFMq/uvIEgs89XTaXs9MTFO/TOh2gB+qTnuIJmoDOgpekWmkRjGBZk71LKU0apJQP+peEUBqcCOeRvyynr2+fR3vpwyAZ4ANoTO9Y9LfYCk0ZbzNGxZfXIsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744894195; c=relaxed/simple;
	bh=eDOC9p7wAMrETU/9zQehXkCdyIBUSBFljGytnHsyovE=;
	h=To:Subject:From:Message-Id:Date; b=BOrrZZoRIRPQv9z4R7BMrZYY3RoJiC6XGnv8BNbTaDzKW4x2NNRASDXj13sxm0+Aofsm/c5DFozpx8QD1aNy9q3MgDC+qjlh1sUVEi1VPg0H5TscrnAAE1c8dGFX2zKGHYW1jUcUJIjIZkYkqfAfHKejoj1zr6HascGo9wQUZW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rY0SkzjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rY0SkzjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A717CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744894193;
	bh=eDOC9p7wAMrETU/9zQehXkCdyIBUSBFljGytnHsyovE=;
	h=To:Subject:From:Date:From;
	b=rY0SkzjKbzMBEbszTwLS6xYJXwPbarK7pSDTEweHZJlPEJTzzlUew0w88ROJFm0dn
	 ajlPKDgmtQmvrmr/A+Tck28AxracrUA7nWNvunhp7YPhq9Pzc6wCabzv2Nt6yRyc1t
	 NymTDYPDHLjPTgSlQGYulXLKgwn+ScqS0p0FtK8wAt/m/Pnw8Ju5NtmmoVUmCU7fVF
	 qwoLQ1isCSkyMH2rYrfaNKCRFnnzHTGBzSMegW7URm3pHzE9ZWu8LwjRIii9b0fNEI
	 xQeFl3jKAFxGp6/B1k6wEPJTKaxHiznSrLFJKccFvxwz+gG8yjnyUwUqpTLPmevjfV
	 FxSyWFlSpw1vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96070C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489419360.21722.7536543057883683078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7ecc301881a865b9b04bc2e08720b29646942bd56dd337ccaa0ee0cf1b2ccf
Date: Thu, 17 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744894193
