Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A01718FDBC
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730193954; cv=none; b=f+wLqTXtjW9CpevnDt7lHjWccjFaVTf+Hk+AkbKWauAEeh1DQelv0aO7ULH/9ikX6lma3KpoA39ttjs8QH8jXmZV9zut3vIpHI0rE0Fxix0G/+NvYegXdbDYOOniKKteuic+ttZd0HCpovb118Q2qxn76x9cRYbga9pPS6SrjYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730193954; c=relaxed/simple;
	bh=1DcynucZO50vv06OKUyLTVNpowogV4vgWjmCK8Fn/Rk=;
	h=To:Subject:From:Message-Id:Date; b=oCz4iYj+MzHeYwOmwzrG5XG0fQYwrgSAaOvh6PJTaFLd5CF/pmcQe2wCzboLxc1OSAHwIuLIMRlzmvlw6oUNyHzJorBimnPM5++HLnuCqCpuCb2RqYBTvztsiHqnCSZ1cCVNRSJB17mBgVNiUQdtX8Cs5dBB36xo0wr8qmc5Bpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3hlmX3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3hlmX3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEF0C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730193953;
	bh=1DcynucZO50vv06OKUyLTVNpowogV4vgWjmCK8Fn/Rk=;
	h=To:Subject:From:Date:From;
	b=V3hlmX3VwI5w+Kfmntl/gFYZt0DdfBumbS1quIG74RHtmmcGvIJjK3Pfzqw6JSCvS
	 6jmAtl6MzOCWCa7as7zuPOu6/Y+zU3EAn9AslW19bK4MVlp//kVZlyNJeo8oTiEsrw
	 hk8R9+YkTJ7asrpbG9HX2+FzJv4xOA2zMbG4OON9FK+m8JC4506Lep219anPz/dvpn
	 aTfNg7QP6vg8scM2X9qEdhEPY+SvxE6EzyypN+58h6Q8nk0m6ICqNulGL30yiK9SFI
	 LtmxVv0OuKOmhOaJ+9NbenIHNgQY7R3cNp3/3Ew1RsxFQ3y2HdJB47k6bEmawjLB0m
	 1L4Z4AQe/cDvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF5BD2AB08
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173019395363.22348.11020996090776233652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796104e7ed1ffc4d33a90795289303e762880a158c5225db51e1f2cfa95724e8
Date: Tue, 29 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730193953
