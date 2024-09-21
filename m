Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B3916F265
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726939554; cv=none; b=ZbJmgK+Ij8b7D9IF731w4O1n647GBkm3Y3/jc0Jyv11dg6ORqLUiTXZaXqZE67i6AOPTd5gL0XVuG6Esb2pqN30jlxOlzt90D7BQ+soW48xx7J1F3/cVHp2Oe1m9e+d/2aWhU99a1DyyqnpfQUIN0QXlRZA6ndEN33D2tGiEApc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726939554; c=relaxed/simple;
	bh=NhImfWnFoFOglMiF4gibzgADLRswvGQeC1jbvGtfHAE=;
	h=To:Subject:From:Message-Id:Date; b=KwkXkZymvBJmT/akIOT18qqb6yyplue6+F3ht8UMi+4iOxCr7u8mzMJ3AhnQ2HgSpm7ELzo+FrMV7hcaPveSTpDMdKJyiRdi3jTnpYeLw1Hav4NkpTlEGWhEmZGm/cwliw4tPwcRkIZdH9VYpVzlrNC0aBT05q8mE1hcUvyqQss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+VHHZZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+VHHZZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5BBC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726939553;
	bh=NhImfWnFoFOglMiF4gibzgADLRswvGQeC1jbvGtfHAE=;
	h=To:Subject:From:Date:From;
	b=a+VHHZZyrfJJ4Ly0AFMyVoLv2aB1z7eGtgYC+CnJAP/48MhuUUX0ZQiPXd+469gTN
	 R0Uj+MZ3nAWQ3xSs2WOVYsky5u2pOYbS3TligFDiwcokSAzlmOXcrOI1eBVuCgZIZj
	 F9WDGPtbSoeGJiFWK/o40npLHpYGfg9QINrFIORo92lht+TSPRaREb7xKETXyd9oN6
	 /uINYg3ch2t65khdsfjZ30dsPrVW8QEXMxcCkApScz4+Duoe/UAANaVP1riH07Shv+
	 NDfYPeVwS/LsL4f8eTNStDH2M0N+dCGGFg86qGw5nspUmiLZ03lZZm24jRgE8RarFB
	 bNRGFEc4L+N9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994C6CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693955358.29718.9750765684779196976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7307c4ba840fca50b9a613823035da6504817ae2057f196da2a2e39eebc97639
Date: Sat, 21 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726939553
