Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAED14A60F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 19:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722542155; cv=none; b=b8AjHXZZKUv4GCt8WxXZmxt0BJE9osB72Iwf/7ULXMcKFDvSE0fpdwnEiBF/MPSOKH/r1GDqPqGz6ShIJ8jzRdRD1WjA39FODhyQF40wQy/fu0BO5idRRiLQe69ZsbsC5Z1p2AdM90ZexIl9argyWCGNNp3l3V7ls9lBSnUEW6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722542155; c=relaxed/simple;
	bh=CHB7JMKlsQo/XGy+r58SroeQNeBgMpQjUAFc/ZHQkaY=;
	h=To:Subject:From:Message-Id:Date; b=kz1BjvKSohhv//N+TvPsy9bbhMDDyf1z1E6184KRtqzRvI8op5Qj/3Ycc79S32LMyRSlhHINv3mPeMSWjyR+nIFy3nvUillNb0C6dzrX1Bw/wejEDYeRZLwvd4CIG4n+pK7/GSrbn2a6pXodH51zS9awzYOOgPg0joP+r8qdpoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pj97TWd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pj97TWd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9DC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722542154;
	bh=CHB7JMKlsQo/XGy+r58SroeQNeBgMpQjUAFc/ZHQkaY=;
	h=To:Subject:From:Date:From;
	b=pj97TWd3HIItLjbu/JoGYdfibEpLiTzLZZv48iNbnqLDRNcccrI8qCV94ggTvI4UR
	 MlM9IhXqQ0xS9w4a96poMkI0uOTfHg2J4joOHlFrdiopBJ+bvzA2yBYL/PSzTJjt5j
	 Nfv+ys6umVkeg3Q1Z9Hq/ZjwP3AIw7/5CEloUb0xeGan1trPRX6klwW9NEVpTZhclZ
	 E1TneNd6HD9dkymyHX6oEiJT+gSGGKB2oqPkSOAy3UuStBVr/usAE+9GeWt29UvFtC
	 tCiKHQG49wo3tdIqyxCbzBqe+zoqSH0wptgdpMzQOsSslXIESJmFXT9jIx+UyNM67m
	 4xgqipp1ar3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985A9C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254215361.13761.1539343339703390564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbba18007f1222dd73a1aa2fd41309f6b78c3f20b8c8a30fc8f1056bd80869a9
Date: Thu, 01 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722542153
