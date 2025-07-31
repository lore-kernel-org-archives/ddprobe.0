Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE6121ADC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753996194; cv=none; b=aJWKrmhnWymPxbDI74HyfhXg+cjHnBWUYEXBaqJfFgHtGHwdGbmYm2xZg4ymqv41GtJTU5nKXnmKwV72/ZZ0gnbr0VbswldQSLlejyBXQKtygJOsJ7Rvj+Ti6CvDeFZg7m0n7HvLnc+uH0mhwsFHHUrRpmtJTSBRqVYISP2l51k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753996194; c=relaxed/simple;
	bh=4XipEJc0MVSHbUkhn30v80dELcUE7Bb+fzNtr9UfLAY=;
	h=To:Subject:From:Message-Id:Date; b=O8O2S197lWAWJyMb5sOP/seCWLwB+YbHT/3y4aBdw3Ph2COOg1zt/FDuc/0H28YVQJrpCUD0jPKWGRBFyOBoG1wupONOZ2P5zw+vCosyqs5W46EqqWY8IifJM4pcm/QekHlz2FNDXQqahBoVllAKzxEUht/UhwlqlUVt6BFi6+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIQN+Cs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIQN+Cs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA5C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753996193;
	bh=4XipEJc0MVSHbUkhn30v80dELcUE7Bb+fzNtr9UfLAY=;
	h=To:Subject:From:Date:From;
	b=DIQN+Cs8Q5Df4+MAdaPhzHhVyyo8P+fQfN4d36S+qA9QZKuvyZ8Q8X7XyM1zdFG63
	 4c+yvxfVpB7wbdAJd1rhMc9JH11j8xToRMfEtmYHROYK6DyEN+avS9HVcDVGqv758q
	 prLSIPef3Kx871JyC8dXyAMvgpzKHxuMURy9ZCz5HduCAxB+xnfz+hLoRk3yqX5weE
	 drSz/WSl8ktaLnAVbP5qBIj26qH7Th565hxZ5qVv5Tz/XPaFKp8caxu0LxMFBibqQw
	 OwABv5XO6c2sdZYc+MLNenkziq+EfGQPHP9D9hnCpOU0t163r/AyHGvkxgveI+q91t
	 OQaN4OOF2YJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98380C87FD3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399619361.11803.12860067880609020525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148b6b0e1bcc1a461f7cdc8563997d63eb9e3642c6aa7228a0974dd578d78345
Date: Thu, 31 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753996193
