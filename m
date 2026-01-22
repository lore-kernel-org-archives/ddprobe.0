Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E22E1EFC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769051035; cv=none; b=fTqdlIbY24X/2DEzKteVJWtBD5m9Sfyxd59wnJrj+D4xnd0Oi4S2Gnc/mTHHZBG3bRtnS1cgEqEblSVUEIzbdtrB495VkRXiJ1fYA6kAjdmm3Ubh6w338i/g//7F4vPi4+Zv6OATTGkM1bE0+VDA1agvPidwqyBdPsUSbpTK16k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769051035; c=relaxed/simple;
	bh=QrCynaqUS2Uj2DBa6CfdzSNJdNRwmLK7ydC/tpD9UJk=;
	h=To:Subject:From:Message-Id:Date; b=MPDZuuQcFbx+wFFQS8l/fs08hiqOPTShclPqhQKuWarsiiIC38UQzdMhnhueDAhbBiFgjPY/T5DMeK5LdHdH5o70/bQLn68df2AGMqqaEHmguM95dZ5WtrPZVFK+2BNXa9zzez2XV628RSuaMuTejTQaX/ExDgu/rQop0De74Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKvuM1Wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKvuM1Wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC0DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769051033;
	bh=QrCynaqUS2Uj2DBa6CfdzSNJdNRwmLK7ydC/tpD9UJk=;
	h=To:Subject:From:Date:From;
	b=GKvuM1WrH/DPA+UT17LhoyIdVngswVTxABOViN6G9LEwSmQB+Bvl4OhOZnhI66FCA
	 sw6IETIO2F89IVFUrJnZ4ECf6o9fbEEaRiDXkv4xgYyZOKo34MnSRPvWCaRJiLHkdM
	 6JaJZPBGQ/GRNwJSiXHYkTxXvvKL1AChSQXZXhnO0RdV9+CB0en7bu2ckZiS4R6gGG
	 PglCuFMWufBXdlOlVLF1ZC4ADhxqea3dlAvLKDNle9AeM7tonOgZhz4fgsMkRADmal
	 IOy+ftneYIQSeRENSeZfrSTL3UCwJJCXAzsLBQZ59VrrWlM0OMOi/GJb2zblfsqoMg
	 jVMBbyu0+fC9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9944BC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905103361.2449.6156682341111775888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebdebb5e0965332d35ab4cd5a260076259e6a1ff1ad01c1933fb05ed7e2a392
Date: Thu, 22 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769051033
