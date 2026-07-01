Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A9E3FD946
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908314; cv=none; b=Vgo/PxCkDw99UWIET2TWJU+Yis5+baXYzy4V8sarAyhfRs2d2yIGNMSmlwpm7qWXg8J1SAnymZoV8MVlZdWkv1meZS4rfBkmbtI90fXCAfgeqg1+iZNFM3pMMeWhzWEduo34coKMjdPa1kFUH69kgbp23HoPNBKfA+qlJ57mohQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908314; c=relaxed/simple;
	bh=1274IWuBc3MeA2UuM35wmGRcaGBf+ggAdqvMlpNUPUQ=;
	h=To:Subject:From:Message-Id:Date; b=mf8mBY7SVHviUOaJIDwjfrX78iWTv1UX90SOPUTSV8rtJag29e+q31oJwMY+IvDSF1OgqU0KDEAbcLhbJTy4ZEQhJKfsBlxZM9kD5CpktQxeyRjx2yWjyBN6J6SdHNgXhto0VTjH/Qwq0F4HvB+28UTbOSZwuJ3x6HDO214wvyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ifav8nRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ifav8nRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1718C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782908313;
	bh=1274IWuBc3MeA2UuM35wmGRcaGBf+ggAdqvMlpNUPUQ=;
	h=To:Subject:From:Date:From;
	b=Ifav8nRDwVURE2o5Yvnhv0IP+jXcK0k709iwENw0AQWgoJEFNH6BKY3TMRf1aPG6t
	 0DvdUqSNo13QH0T/yg1gZVI1Jp9OWrLQx5LO9VeZ1WBxbpqhlzjA8N48J7cnfiAt27
	 urP7ATLaw5BXLcJTJGf8Q+2lwpNPddce1vKKu2NVwZzYG5WWPjZlnXB4ITS/MiQhHP
	 vuADpnVn5+Ey5Cb7dBeGoFAEIFwtHeuelqf5+q9WDQW4wDRtUPkFqA+0GbLrsT23sw
	 4U+s2Ebc14wWFYKbp85Cz57VyrORTjW8AWSQ2dx7WVvt3Rhxbg2b0UZn9jCtcMoGsZ
	 /NrhsbFOi+9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9246C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290831368.10382.6488108782086033292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0299f753f443ce9725ca0c2fcc9d26e18b7efffb407ab86aed8bfbb0446992e0
Date: Wed, 01 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782908313
