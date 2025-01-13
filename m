Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E4F24023B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736801154; cv=none; b=JP8OrLSyHaecpMReXjEIcEaL+jbJsHuJDB3vHG1kbw8nJ6d+fSsPJnuDjFPt6ZEOuDNfuwfE+lBlRtVnh4iuicsEPyUxPWuJlItI4g4JbjYHz/qHcMtRmAydgwP+r5JQ1cnhI5WyPNPFAJ/DFlmFO/3u1XRElq7XW+wzI0BonjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736801154; c=relaxed/simple;
	bh=mCuPzBdeMORKP4oouVk1mIqK86QVAiIA1mUzD+5nXws=;
	h=To:Subject:From:Message-Id:Date; b=puPJScR1Gp5Owmkppi8gXhPE2qHe+iUX7croI1OchSONDNq4XD0B6KViXqYWOuAymkoRV5b1ykjzSonXcOd28I/FBaLvG/AL0SH3NAcQWSQW9r07VMiSrtL/aWQM08u2EttveWtmajmM3upGr7mqClzuC2YkEzWMYAMfzJtz47c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaWtU8Ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaWtU8Ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE175C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736801153;
	bh=mCuPzBdeMORKP4oouVk1mIqK86QVAiIA1mUzD+5nXws=;
	h=To:Subject:From:Date:From;
	b=CaWtU8AcToyVEkj2N3SNCJh2HpwzauHpxiUkC9coa8diD/CRf/Eu1DCkB76+9szqU
	 tgWIX1KP/uneLX3TtUEAkGWWaeuwAPFuR/nfz6uXcBTXhmpV6I5QkGc2BM3HCkZLFX
	 JnjrC8TEWtPJmyTcAqjHkSe7c6UPAzwFHkxlPFqymd34FPO59PceieTQ1ge11f0sgR
	 6HjWU2QGOLFBX0Cw/FnIRbEZSY9uZwgc4tX8PXBuzPohRVbNs9OxoHQsf3fz+ZmTqW
	 JgDkXLGyYAHSRF4u8gqBDZsKmBBLD0tFczGUZCuxoTYQECmmczUVJA3PfP5rIsQLhY
	 lJaurDNgCv1dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99892C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680115361.23124.18104820825285654509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e0566513bed39d448cb80594cc07132129b04fc21223c0cd80a0056dd36840
Date: Mon, 13 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736801153
