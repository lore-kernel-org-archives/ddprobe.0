Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2DD84039
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767390834; cv=none; b=dCxVwZiwGl11IkLMWej3IrQ7cjp42GlMDht4GZO9aEoJgeG4WzNAnQhclKkS30J/ePhgMgqlijCNyiRVroDca9BPUwdF6anoq80Exp2q5UgfR411Np+9wGAS5jOnPUmGCoawBMKUAG1iOrBSaO5jOZO8ZiHP4Hqn7Fr88E3jEnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767390834; c=relaxed/simple;
	bh=WCnNMxTxSH0mtQjg7yBcGsotKvJq9Ny1kYw2VKC94m8=;
	h=To:Subject:From:Message-Id:Date; b=ozs17rhE51ptRTkcMthyrnAr4T0M10kmxYDmNESPkUJCxYaCFSS/K9O57lGNahpPZpWa924ffL0nf/NvWjjeakdJ7STAuyyKM04PihyK1mH3HY4e2hmhYbUMWbWJ4Uq97ElPvw0u1UNB8M/LIWtWQp8QP6yr6vWsGGgVQi0rJ2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmwS36Kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmwS36Kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCC2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767390833;
	bh=WCnNMxTxSH0mtQjg7yBcGsotKvJq9Ny1kYw2VKC94m8=;
	h=To:Subject:From:Date:From;
	b=gmwS36KgQOB3cs9hPDDOypL1KON75VC+2uGDlJHbpOO9taxhAQWMeW1mwtuqIcCAW
	 f48NfP/Ph9N559/cbIb3ShJmWDsThRfjRNRl/FrO9rurA4WnaJ7KdsWv8oICbzAsB1
	 sEkCuV6kHFhOhakhTcx6o1B+tbH+b0a72mdRMUVB/37nkiQFZkCyk6a9USxXN8LUEw
	 hOg6ObhT9z2/6PtxBFiTXZhKBJ5awX1h2dPxfeI6QSQ4X09ps/Vm+wlJxz6zm6k63B
	 oHPugl2RoDGVKN/YNThGYYOdT8QbrOEJk6xbheCf5tHNfSuJp1MKxUlI6KUiXLsbt4
	 ROn3SmXfv3Qzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDEFA3751
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739083357.15015.9723912065554720004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6c504751c6560a572d002dac6f769a7152fadd27283c2f5bd5c3686412d4a5
Date: Fri, 02 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767390833
