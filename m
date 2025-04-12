Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2997118A6A8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744492196; cv=none; b=e4PwlzoAAuRTpOMR05nd6cpPXqd9G7jnVjdby8K7XPCxYO57qN+dDDRDFK6Rp0MkreyOr2CS4IY9kdQIClxW2WRKK2UN9KgahBgVU05bCRyb0EveOokKyYyw7V+HvmvjeXedEzo4JvwvKPfsBnvi1FU4mCcSrs1dbJ8vuZc481w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744492196; c=relaxed/simple;
	bh=VAPFHYtzIriu30pF60Nav09eexoB9pBgk5IfKuq/eFg=;
	h=To:Subject:From:Message-Id:Date; b=DBsWaQ0C9ruY0hVplTL4QFANdfO89joAhDT8G/cfwVLMW/cDJxPXJTlJeJzRGV6hAn99yHgQSplqDr2tYXrg6DSLbv34Rm99os8RpFn5ITwuxOpSi44iCLcq7rYSxATHWuyZl8U+XCplB7ajKOBtsIQIR/xU+itPY0gyhKxPUyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwWisV7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwWisV7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744492193;
	bh=VAPFHYtzIriu30pF60Nav09eexoB9pBgk5IfKuq/eFg=;
	h=To:Subject:From:Date:From;
	b=kwWisV7zEJ7vazBum7nKEhgDQn4J4jg3r3rMwMZTSS8hHiDd/7OCPA34ub/SNbsCx
	 1nseYXMqkEcavCvT3sQTGi3DS0S1qyYVzlV54J9hd1ujSxo7gNZkW2V/i3jJhc0wKZ
	 UblUNlwbGcE4wCwSGC4VHJdwStlDFHzoMNRqqk/F4P0VJ1K/UCizJ38aEt7VVTyIDg
	 7nR4HNVXN42nZeoAz8GF40E47IbuiYtUtfKM/16F36jxxbMBOlnSUXsreekbTX1m00
	 zqKRhTYaHEd0RA6X/aoJErenUvOlTmUq/z+Qno/isc7QbabLcSGTD5maEvE1LYDiRf
	 AboujMyT3tQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92536C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449219359.5130.11867279719569670585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3221fb79a4056845b7466383f15657960f24b0b78f8543cd637acd165c0337e
Date: Sat, 12 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744492193
