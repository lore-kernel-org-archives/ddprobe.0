Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFEE19047C
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746250794; cv=none; b=fShkggQXtgEhP6Fw+ehS59DJlpKysfXT2iRHZSt5+Ccon7tXuGzAA7yee7Vp8RftIUb4+rIrKqFL1bKQfUtE/5FJxdNxplgDc3doInZWUeohRgDmw1mnapuTQ1kTGSiA6dysWModGGoOq22+FUrizX2dH81Lb4yn0k2Ga5eBf84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746250794; c=relaxed/simple;
	bh=EWc1Tz3kDld7gDL17GFLvoNMx7KHHEW94hizy1YY6BM=;
	h=To:Subject:From:Message-Id:Date; b=ZgNX+oMh6V4+RuEi6abPT69E0P77tidAlFGytDKtf/pBPbF5wnzLhoCxAgU8iTaRWQzhWcR0STqx2lDpKqLiP8oZdP9JhzTbV/H/rHQZgpuCSslYUMm23VtOyuzVAI+UN3ABT/OlbW09HjRRk13mt2Zvo3rTR/gQnfs4BMkFI+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHjN0j9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHjN0j9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A62C4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746250793;
	bh=EWc1Tz3kDld7gDL17GFLvoNMx7KHHEW94hizy1YY6BM=;
	h=To:Subject:From:Date:From;
	b=sHjN0j9SEGPWbi42mxYrvvRAl1RtVSiCEimCYCWM6WbkF2cSvvMH/nk5K5G1JKApw
	 VazwwV0ecIcU6xopXByrw/apjm4x14hupgjPDt/oJFyAulYbAa+sIs+h2+3QNvf76Z
	 53Z4h2l/9DdDn48KVnhxYObRCtZh93ieiUUmpSchvKmDCDVlTfGPsU+Xy/7moZpc4n
	 de2QhUrXTdJRNssKQnmg2+SrzLIp+mr8C1s0uv5vMK4yECnuZDRCxNHWrnQLoIbkgJ
	 beMulWzW6aFP9TmU+xhnO6c580C0RhkTPJc5RZ01WgIL7vxjicKQ+NV014N+Key/7u
	 n8n22wk3Wl2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91797C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625079357.17217.4119651622919225094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1324194bc2f1de6dac5951f5b745ac0eb1db33e696422456461a3d01d1e5f847
Date: Sat, 03 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746250793
