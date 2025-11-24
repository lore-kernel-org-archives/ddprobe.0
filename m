Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC542DEA95
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763970714; cv=none; b=OC7MHKNVMkXeAe+SnnmLGLmfpRUNx57UE5VWLap1PU4VKldASJ0v1PDq2wESVlT3SZgZNQJfK+zkYV4YO7rDNDt3FQM99FPs0Yg41R6o4Tl6NUSfJJL0hB8dfm+r/0s6eyif8ySKQ1CV7MWq6p1Mf2yB2QX/eqrf7zUOX/3K8zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763970714; c=relaxed/simple;
	bh=tYNRUAoI/hv8KVC7wUhaU4the9Je6qDx9nXkNmouyAA=;
	h=To:Subject:From:Message-Id:Date; b=AjzF08b49CpeEjcbJYcJZ33b3dTorluzwg+KHeJ4A0FJI6SPhtNRDR9bXvPRD/uYO8KcVJ9znhc0Ioa2UQyXTMrTsEDAdPe7w+408AKmUGOlZhKZWmuHQRQLulKgND80kk2jlDILs0M9RiHHpeHo4Dzmt5hoG0Mbjg2wTIAM4+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0noD/kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0noD/kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE85AC116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763970713;
	bh=tYNRUAoI/hv8KVC7wUhaU4the9Je6qDx9nXkNmouyAA=;
	h=To:Subject:From:Date:From;
	b=f0noD/kdRz18avXt5xj2wfnwol/yrfYcxXQHSxthMRMG7xsXYN8WoYHmAZZdB4ITr
	 fSL40a6KhlH3IpqPkf0hqqG/Zs8VjQbaFPP5jJBAIs9hQwZK1CCPnjuYn9ZHuXJrTD
	 y6N1Dur7IEqTH9ihY/ghUvZSX+U7UJ+AWw4MUPiXXm1YSP6UjtLos94RsFrPRtvkQD
	 BuX/hHcx7fXQsWGarCU37aVBkGPveTaCtci13KYbfsizKXNVVgRKvvzrllQtN9swFt
	 j5ktv5pRYbSWJKiJilFLp6aH4ooM/tJas2r7YMU3SWjkk3KXIsMt6hNzt/U9/vqLPL
	 f78VmflPYyfJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F69CFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397071361.9504.10769146361775199147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2ca507def921a11d6c96543bf42b6d69820ae98286fecf2232e2cc4e03733a
Date: Mon, 24 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763970713
