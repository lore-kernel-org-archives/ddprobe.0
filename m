Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E4319F40B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784423914; cv=none; b=iqHJ1SPcqH8CPsO5q6SqTyRssGW47Dn3TEkp9KD+ZSLGyjdhvVSwDWfGoYmHbpII8ZMbOwvX6HU1t/YP4XKlPc9RuyAsdJZMi5KUs+Ur6ndu8S0CzqOKhH0ePcTboV2E4FdYPBjBodJWhXEiU5IR09qOhQWc6buXmHFTb1iTliM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784423914; c=relaxed/simple;
	bh=0UNjYi9vY4P4hALKzGrF3JDuuxwuS4+60v7NXHgI5Qg=;
	h=To:Subject:From:Message-Id:Date; b=YYfJfu/x5ZybTx/s5Nzex849Ff6UZ3jOHDlJMiZ0q+tfWQ/hx+2Q97CYbR6Nq5dRrNJFjlgSlh+OJmNB1xGfvxcdVNvlaFgBIuz0GLzT6nzGzv6wLfruZ3aV1DohIckD0pW5eLTvfcTLD4ZUYs8MakgYYxqTNDmiTSDch+88A40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA6XPifg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA6XPifg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A18C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784423913;
	bh=0UNjYi9vY4P4hALKzGrF3JDuuxwuS4+60v7NXHgI5Qg=;
	h=To:Subject:From:Date:From;
	b=IA6XPifgQlegKrb5kbvQt/GEevwqFMJomcOGTa3sVmReltoHarYHnr1w3av1tfLyK
	 Pa50bwmFbW/fXI1rGvGXHRA6Oh4o2JltxTGNj92rHdiQbJ7eRXg/3tnPZe+L3J889a
	 gRA18NiE1HspvZopcvx9375Nu7TYKZ95cDoqR/ACWapSAkel1xroUIaTlKs1eCljqf
	 lTbElg06DJtjOsaZnbpKtTTlNu7JqpHIIWfjwVJqpw/ieMbbB8a9fmJlS4LOWTBQyS
	 0t5Rg3zYi3yts9ww+s+uEPu9dHAIcAZ57uDE2FKWL+dNYyLtgaTLJ5wkpJnWQCg4i3
	 VpdN6TUJvYAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD44AC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442391369.25671.17480574371728686164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1664c0814e90914c71e8c9e7503a2c2633b93e0e4210ac3b2b8650ce408bcdeb
Date: Sun, 19 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784423913
