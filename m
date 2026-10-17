Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631299460
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792239634; cv=none; b=JyOa1t6vnrhP0Xp7ZVmkC6J9qzzQcI2QF7Yh7Gmcd5A5sqFT0BluGwrP0yTfBa2MWEyDTfjfqsmEIfQl5k8RuHHX38m+wLVy0O8oC2ooC519tdrBSZ31IZoUF+ytuJxJt/L6ND9bdJHFyy9FhVd2GNgRz/AFhO4m1KVQZYGFuCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792239634; c=relaxed/simple;
	bh=pzVbQ4yFrpuTxAggIK4NgJsiY7Fm7LxJjuBvuLc+RJ4=;
	h=To:Subject:From:Message-Id:Date; b=LebjHDBvWGQkv5axKju8krH9T6gJRWuuoRVUmvUla97n0X4TVFrrIOSkGC6Dt7XUruTspejccNBDeDahPImzqYuYrUwHAx25cmxyI7q+fWozrkBqs3UAVdpqDBXMZ/ulQDxyqnSummXFhxiFxjeQqQxul2G+XAGu/cImRBfgXHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnXV0yOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnXV0yOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F9BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792239633;
	bh=pzVbQ4yFrpuTxAggIK4NgJsiY7Fm7LxJjuBvuLc+RJ4=;
	h=To:Subject:From:Date:From;
	b=lnXV0yOCDmdKYldIZxg2p4WlIIM7DvD0L1aFKCl4f85ulRHd4O/nOqI57tv7b67Er
	 TJDe4YdUkXZCyMnF3zUth7v7ubnSY63grJkYHqU/BXDFY3k6ruiulLshzkQMdMvOSi
	 V6S1E+51k1y+HEd1McQtskMGHtdMMTwJCuhTJoQvU8lAyF4Yes9BlHznVaNo8nrWMu
	 jEB5ppthMUUKCafMYyNAz8I4N1J5vF9ZhlE8GPSgzimDIdHMBwDn0/O0JJoa7NvCQZ
	 +6yIs1I9DVeCcS1V+EoJUSCC2mOYOlcUyZGY+aPLRs624YZFuIK0gByKEW96EyDU69
	 KDW4Y+tvJLXSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2994CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223963371.1403.4694258053281639010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6938296d54e58812e31e2223cdfcd3fed80271aae3f407faa1bf4ace8dbcd6bd
Date: Sat, 17 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792239633
