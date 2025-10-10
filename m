Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C65636B
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760071194; cv=none; b=ljwdqIVCbp6MtHlvdfZRuwvqVr4TpTh3XLbUnbyWQRPEQD/2Oxu3GIYxEgFAhoibUoDhNj4HYHRe+E9zW/B69bFxkHkv9umaP3OE9We01yjwqbNaA4j3ENIqv9Md09Yjjr2KLZ5T1h1P9dTvubUi8iP67VjC7DHjz7ej89UoVvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760071194; c=relaxed/simple;
	bh=CxI0ltPPWagIilb36zbD5aP3LVvssqgDmKnIa870pME=;
	h=To:Subject:From:Message-Id:Date; b=i5yS/+eyAhjmxYTRDlzMetIjUp6npl3gwb7y9P9mgFWDXiiN6IUgB5G+gLmZUTv/m3snondUfSXBPAi62ZbbVvWtXUE+KPnCOEaXE1lk64JVtxPnnsYI3159i/ziqBoUqvqGv65RGaQjDNssJkoVVEiMCIxIyRKmGEwMqLrjBQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVshZZPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVshZZPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EF9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760071193;
	bh=CxI0ltPPWagIilb36zbD5aP3LVvssqgDmKnIa870pME=;
	h=To:Subject:From:Date:From;
	b=NVshZZPUIu1T6/FoOn2OCH5WaGtgnncTEMEgt4T4pA9Ki7ghbAIsWuZwf8D/oxQjt
	 UuNR621M7J16fmrD0jnD+5YuDvFSEu2iOTUEq8ZpSFtYG/ZyNk4OJfRqTeDPYR1A3f
	 Gkyx8AXdKFnMwUjHwC26O3PYuZf8qILns7AlzNLHXMh+xTJ9eem/Of0zQngdaxCbHD
	 fiEFQVCtzgSbdOlVnhpLjrKupbx7aL/3pjrQBvTdVevKCRSJDanrXxJfU/leNFTVBY
	 qXWT24Pjc8/8n77nSWNXtcjIaR0757Cw0s1nuvmtSYfj6uu6cnsNO3kVXk0nX4uP/o
	 DTB7Z5SmWAN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCDCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007119359.3845.10534676078137960467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63c18162a9f8f1496bf40d3f5c312d692522ae0afc7a1abfc7b1e7fabead680
Date: Fri, 10 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760071193
