Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA12D346798
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774520094; cv=none; b=izsULkrQ0L8t2YttRq3eHECi/dozfmUekv0cWLU/yUKyUU7mbWqbiag9j9ZJKHoEbkAsQ0qdOMy5IpVCALa3GaqxedhEGjMBxdxGPP9Xi9Ab/cGTXaY+mz4n6Ym4Dn7YGw3xCg/RwYOa57GGgET/7s3+XXVcakbDpSpxRSZkVrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774520094; c=relaxed/simple;
	bh=muqmfpyetjRPWm+kJpyKw8dgMWPtJ3oYOeHw+Ovf9RY=;
	h=To:Subject:From:Message-Id:Date; b=g1gne7LLNvIQCaJerYyE094MyphvdlmKvtXzZeWcQj42A0u1Bvv6+WCbydUn9ebvNensx0jjJYXH6uYhERoVTnOpnuNE3vbYyD+gHI62luWHfuyXUlGesTPW/WQa3zzxudjUdZLokQBA0Jc6n3a4Urf6cpQ/EhWi120pMUQiAIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ1nbs0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ1nbs0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9ADC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774520093;
	bh=muqmfpyetjRPWm+kJpyKw8dgMWPtJ3oYOeHw+Ovf9RY=;
	h=To:Subject:From:Date:From;
	b=GJ1nbs0kvLGhTOG9BuTcrwx3lgvEqdUcb1YJFn7AbS2VgiCfgG9nwYMAmWOvKhiGS
	 MH8pyYSFVcRyxaXqR7Oqtsu1PxUAf30IIuU6ah5Nto1QM1js4wl7iAYsrKCR/ibYMZ
	 hGGkaZ4N79rmi2sSi3WO3s0g0q/n1rRB+dmgwOwes8oh0zKNMRISOu8zzeMB2+X7TE
	 torVJa/EsYnv0+DJeDneTexPqQYlEnvT9JCHoh7U2nv5IC5R5jc57BBEUu93/M/xOt
	 58qX92BMUec1y7/FNo54gubqoJn2YHWYRgnSz7NnWOw80GaoX3nJ3rYZ5f5MXjXjnq
	 R586UjoGJqxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C23106F318
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452009358.29368.14806602588059591966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effd641e634966ab45e0338f15ff9241341ae57723139e0cccb809e214c603fb
Date: Thu, 26 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774520093
