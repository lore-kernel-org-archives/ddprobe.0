Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E962D5C91
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775268334; cv=none; b=a6tS6hr+NJzJxLysY7GNaKO8Xsu7TD/inn3LVdhTfpb0etT8XJ6oETs8Gg0iPN11HYnd4cD1m+Cy5uQ/LlsHXKX0mpB/jczah0Yt9evT/EDRKTPPXeLODo3kIyP+9sW72JGK4MFlAk5wtkRdYSBox5GxAYKCkFPPLSAH23p0JEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775268334; c=relaxed/simple;
	bh=LNJMYf8AHGqoDUgpyP6jJxWnKrNkD/iH6a7PSj3J2BI=;
	h=To:Subject:From:Message-Id:Date; b=pZ8F/BYAnX1mwPzBdzhjO2E8kya4uIuAiODUconVjXVsPx3y48T5t1FQYSccuo4ripgr1Qi7MY+IrVHEmVrswLagRsKW2KinGjOL1Jv2IQnYoqM2DZz9nfhWSr2eQECUDPj/RruJtMtDi/Do4HWY8LE5PT19VN2tHHLMtYYH8bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5OiUUY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5OiUUY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD13C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775268333;
	bh=LNJMYf8AHGqoDUgpyP6jJxWnKrNkD/iH6a7PSj3J2BI=;
	h=To:Subject:From:Date:From;
	b=H5OiUUY/iTvv84zoGT4tfYgbTVko5WYR0lmXO4ZLcgvedwYeH4Z4Hm3Ep4c8OHtIU
	 tuFZ5hyZgmSVhAQpOnhSVp9bQiNljlMZLGuHTALkMidyob0OWd0Nqoqx9FX53YpuYk
	 7bWn0Ixuz/eBHuy1/IIRFFggl01ACGfPm1amgah5e50UMpKc042FqIBshiOkU7g2lr
	 vZpFbtrZtzyHSdUmSk+0bwqAQrccnTb5I4wEcoN5ZMLyemAyP/M4HJmzADeSg9TAuE
	 UiFmMzHYKT3XcVc7At/QnZZjDIN6r/vsHbejPaxNUQZGC/xXVTwP+GI4h3S2njYv9i
	 gtZrwaZiC85OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94A3E88D73
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526833368.24272.13592606339157338749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cc4a0a3df5986e7acee00b22e45858b91a157d3a77ea830b52b3f4e3345b56
Date: Sat, 04 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775268333
