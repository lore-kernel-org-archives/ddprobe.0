Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23872336EE1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771653294; cv=none; b=nSEGBjQppBjF3f2UhBTtoT9JOrsn0cRC8JgVG5VcNEFxPZkcogTnrcfiaCir5S0gLzQrVBT34ufuoWBXLRC4ean5RPwOYTpAfiiVctv6TgEPvUnrg7NK7vPgtCeEqcR0TzCoT+c1uORBZyWaTRZHdbZnrOsbKp3few7tOrBFRlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771653294; c=relaxed/simple;
	bh=Yz+gWwonxEMbRrpUd92Q2ox72J5rux4jPLMQjQ1r1dc=;
	h=To:Subject:From:Message-Id:Date; b=q3P9yVdZxH/LfZY7/h5xGG18xTdC3EiE9NHT6hYLSWlGXvI2VGnXeGlLh0MC4Jdid80zOPrHdl9oBPnKfWLkIMG858H4apw9zeff851Uc+Zx+YLVLLHhk7jaj510O4vXaErGSWD4H6SA20hcXcpXD1cliQpEshqd7KMxY4r6Huw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umrft9WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umrft9WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A51C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771653293;
	bh=Yz+gWwonxEMbRrpUd92Q2ox72J5rux4jPLMQjQ1r1dc=;
	h=To:Subject:From:Date:From;
	b=umrft9WBeDUBiab6BWJRADpo579v6f2u16bBW0hqAb7ZfdTnNwjjIjbQnysgrfc2m
	 Qj9vaTI/FqHK/K9zPrfu1UDa1/8zSswAnHZvLwKn7j6hqwm0w4BkLGu2fuJ4pFmta2
	 HeVXteNCjG3aoY14bx7tgifu2Yg22IQmHrXrLaOzZKZqOownqJ33GSth3aEa+2rfXV
	 czABKbNH0RGNZJThWw/b6X9Zk/bdTFEDvCxGr0M2R0QRunuB7kueTQiSgk46vQvMLY
	 flgjTZPSZdqD0HTt0o1G6KloxxepidxqtIMceJEYLwz2Ro1DEoKYFwaIJZfCgQw83k
	 c9+Ll2pMiNTPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CDC61CE0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165329360.26337.14159585636338220572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae2a0757248ad53dde1cf28ea1104714baa2c02d0301514345326fd353571ef
Date: Sat, 21 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771653293
