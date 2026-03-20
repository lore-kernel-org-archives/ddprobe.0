Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342482D877A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773972294; cv=none; b=Ml2PoVbmSAGgu37WHZTDn+xhSZzElQla0l9434R+d/9IkVYkcmiLitvp92Wu1DUL0XuoO6uQyQffoVULAooJdSPI7z4i584yO4Lr6XqhhgtH9hEUeFiCqefAFat4HJAZKEjGWcq1Si6hhMdFPUt1TQ8LsHtGe4nn1d9elK1NAuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773972294; c=relaxed/simple;
	bh=IlGawZ70xvVGnBIzZgJsax61HSrizj8qXgN2r57D68w=;
	h=To:Subject:From:Message-Id:Date; b=bltbozrO4YpmorzPbgmJ3Y7ObUxc8DSIbJYNjswuX+zmh4Op4RIxzD139AhL2vqM7NP3CE5yzslvvyb4psBbmgI68JjVmJP8qbgPjsTKUgeD2pDK7hhOb84KGBfP2r/HokxXL/pJ5uOCQ5N7jKuGEAdmioIx/3XyGS2ogjbF3MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1PPbskG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1PPbskG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD25C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773972293;
	bh=IlGawZ70xvVGnBIzZgJsax61HSrizj8qXgN2r57D68w=;
	h=To:Subject:From:Date:From;
	b=b1PPbskG3NgEEHAMXvropTlcQo/vwofM+n1/njAFO4yrla4Z/VmpdCSrkW9CHGUp4
	 L6dg6guJ5avQs5+jCAhwE8Ru4XTnO/FQjmSEAj/1DD3flNHTovi63pJ4rtjW0VzTnz
	 OQtwyK5Cx6A1OFmxqUYvMO8CQSiZJ/LRyY2g9Tcb2HqWrqn2hig795wOdhNUnqZbaP
	 KHW2UWUJatafWHfd9PHTrOmN9jk36GAAdR86+nQgm15sgRSg6cF1sWyWaFzOxMWzI9
	 ZD8WLmQcLDHkguar15ooPeIAqMZ+f2AWg3s4X9LVvfI+a93EpJKZdH94Yu06WhTZbG
	 zrF6A+Rl/ZYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F984109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397229357.17507.15395704533409700508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7c031b952cdfb202d4b27e20af12141323dd35ed70358aa48f3b4552389323
Date: Fri, 20 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773972293
