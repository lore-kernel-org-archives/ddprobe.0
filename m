Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EAC1FBEB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777242454; cv=none; b=KtjJAYqc1rEIUjt04sqL74LG6mE6527YQkci1sZB8m/GPwZAbOfSUj18asQLpX9arIWwWSITEBMb8WE/OTJ62quiTRGAFYOx04QbbJm5HNhRAGscVdBz1m1zJyX2f8Fn+Y13WciIblhJGF4SDVItfHki7BN5TkCE2dpX48iJ4d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777242454; c=relaxed/simple;
	bh=C0qT278rUMpD7zpUNXr2HWbNQ8/BRkELzmOWGX/nOGc=;
	h=To:Subject:From:Message-Id:Date; b=HKeeYF+OVTd0qLH3IXt3NTvhNzYc9boIsFJIpsM8yp4uD9Pr23hG3YmxqOXufYmrVQWgeKaquxFyGIxmiZV8GVgADytA+uGApBQPm0S7lyow7jD0jtP5anGGOec65/rCXp+Wh3E+XenKRFO6cv7eohX3yTXYLLRmWM1PVYPOHo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L85ysZ7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L85ysZ7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1907C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777242453;
	bh=C0qT278rUMpD7zpUNXr2HWbNQ8/BRkELzmOWGX/nOGc=;
	h=To:Subject:From:Date:From;
	b=L85ysZ7OONf3dasAvFTn5/8qVu+xkxFKddETVC8Qx6cNTOn4bJ2w8YYLkCKasW4Ox
	 hHnJ2s+Cd2prsPmksGJJ9jEpPVfGgsESoMLRyR4+OV5YXMR0g7LDpifZ5hrGRevm/n
	 KxcFfZb94KYE7B4h2AtNsH0/MfDerI1myCsYC0/kO2GijLAiyE3s9R60uOUq7B5S/V
	 zgSP696HIFG98VFt62qLkBM8imiFZHVsV1AxJU2Ai5cMIsEsysBan5RqINaFwjjP5V
	 rRQ3ws2f/cjZCe5le4x/opWlQZWslsGzmRyoTtDFQOwobsCW9SYTMKJM5JhcAUMCIR
	 ECdQJJ94r5jMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC0DFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724245368.1801.10427704816600686224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8047723c851d004e04faf1a00b8f15609e5f0188d503cc384225c030940b68f6
Date: Sun, 26 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777242453
