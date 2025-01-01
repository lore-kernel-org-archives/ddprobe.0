Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345D12C9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735700754; cv=none; b=SBa+OGO9UPyJf1DgtKlRHDbP2G1lcpI78IeocinekuFhYHPJaNWs1W/qzoAEPQ0sxTTpJT7OsAWhvLff6M8ePIafvJLQ9JorGPs/HQuwzvuPhGnZBvKeqG1/YBHCOL9iBoZ8AWx9dIHevgP7IiFO2YLgH2vpBgW+lni7Uqc2RII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735700754; c=relaxed/simple;
	bh=eAZTMBluNrXqSOYcWVHAxIuAZxXdd9+3/0VxBBsoDmA=;
	h=To:Subject:From:Message-Id:Date; b=bfJAsgnpHmuK1arCpTtfSLB6EoiRCKSs61h7qEeKlxAO/Cg6GVtOIci9MuIghd3k6WzN8pksawQKgP/Lx2ba2hNBv3uV8JnSezH0hDeVSyGH399D/KcBhf6OOi3zJQd15BAlMdAlpNAy0aHuD4Y8DnnTJGwsD0lW/3R2dOWBYSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTddRbqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTddRbqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC001C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735700753;
	bh=eAZTMBluNrXqSOYcWVHAxIuAZxXdd9+3/0VxBBsoDmA=;
	h=To:Subject:From:Date:From;
	b=eTddRbqcMczcTYRNe46oi1FA+kX+mcCJJPH0kpteg5lN2ZcNEb60uuY+6LBhuxP82
	 iVt7/5aD2P/CrUYhuFQ7py5Js6u5C3f0kGwPCIXdroADn5pMrZD5D0jrbPcTsG0UWV
	 UXweRwFeePwFgWDsUFwfk1cU1cFfVIWJYmp1Lx+b67sVcABVsTsy/A794b/m6jPSxF
	 1bFWRibxiR8ihVZyEpJ7l6ynB4ZouT4gF7dgMJBl0B19cbWxVXPMKRgxk7WZLUNXPT
	 G+gimgc8kdF+0KFE0D9fx0adXdrXBz6slhDMXdQ8t0WBk9zuU4cQne2maXWDt3zCNx
	 0RazQ/aJgd32w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96766E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570075359.12414.14395110522985894944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d668b4264c97ed313c3301ba990e3c75c7a3bfe4820eb5089afab5903a1833
Date: Wed, 01 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735700753
