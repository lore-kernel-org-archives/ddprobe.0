Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0F1AD5A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756674594; cv=none; b=Hk3jzznl4SUpcOG86bJHo+NxvLQgSq0quv/SsEYaLdO/etxPLdMmIxDT+z1OQGZbXgcoOvIQiNrFO5D1DUS5xKNDLXfxSXjZ/YLWyMn/TACZwk87E+OjvI8MUjQ3kunFGMy88ed/r2GR5WU7QIa0cDv14CXZcjbx2pT+KyO6bZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756674594; c=relaxed/simple;
	bh=OH0ozZssnZqDt3jk/0wU/pacl0+o6scBcw+qJ46y/As=;
	h=To:Subject:From:Message-Id:Date; b=YpAgUrlS8+Vd+/H3Qa5JiEQueEcBElJu26ayd6Xq6860QolL3+8K/lmBeHcPpQsrZtgq7PIaxEge3aWI6gDbBI3SOBGk6pKjB3NYY0ibW5CQPKK+AKrZWT3V+e4krX+AbLgm32GfFiPTVlrupe/WfnYDPFtRynNLFYi0A5AmXKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxjrkM+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxjrkM+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7128C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756674593;
	bh=OH0ozZssnZqDt3jk/0wU/pacl0+o6scBcw+qJ46y/As=;
	h=To:Subject:From:Date:From;
	b=hxjrkM+94zo5CoH6GTGrrsgHuIAbMZQ3ca70M3lYasqoiu82W6NzNiWfZ+SFKVtka
	 ZjeVIheR+IP5FUbI1j+FYvd/Nqvi4j9yIB/s8SN3iwNGM+KcaFuAIMDp7rfy+dAxlX
	 48syReSDZdTWB7TbyQ5WIAD+oxt2dibsVPmAeuoEAz4QvGhldNWr470lCA4DNSep3g
	 rG9tyRs/JDEMsykS3TVO72l2zEjMgdN0IVCUSEEzYD9NMfqVm3a/jzYKe0zsL0z+4B
	 +2IUA6qfLmBkYeCSqL2bMY4ALdXAyZ2kEisKkgeterB4JkrziuA8IBqpsp5vRThp5g
	 bcpo/DlDbsG+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517DCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667459357.11968.2321901996380056968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf98f54ad4da714d25ffca2514744d92f69996900d7a8166a0d18da4941a44c
Date: Sun, 31 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756674593
