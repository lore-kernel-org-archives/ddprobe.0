Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B4A1E2602
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755290993; cv=none; b=gwBswy+3rJDdzCglVSGIC78vMAmTMgsH07w/9BNrk8JaIT6DE0RtsRFGGRHiioZKolKWroGrgMu0LnSEGBQQyWH5xuh9kydw/6BKjzexe0vER06Tivd5OKy2HXhV+EKiashtAtfArEqZVu+D+W4sch8sUcX2ryJqKnjSdMhxxW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755290993; c=relaxed/simple;
	bh=lkBFgizIJAMYG4IwZm/FdQ1Y8jE/hXCQd89P2NuLc2U=;
	h=To:Subject:From:Message-Id:Date; b=sVjmC7gglktKh1M7Nw8GsG3RVN9vPh/zSPboA+USLwmTBLH/p5vw2U/VY3JxfTTemOl1/4GSYBhYru/Ko5laZM10cu0eW3kTICQRsWU67tEvKGXXPsmp3SFap//j7GTl0GfOzf0rKll/Y1O+IFiUY0XyD8GBBT73/W0G+xzAC88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3IQXAn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3IQXAn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B31C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755290993;
	bh=lkBFgizIJAMYG4IwZm/FdQ1Y8jE/hXCQd89P2NuLc2U=;
	h=To:Subject:From:Date:From;
	b=u3IQXAn872S0OFXTLIwUCr2PmXg0NK0teGIeOiawagwFVooqsyvQWzVWANQSyObgt
	 9qgZUd9mjYcecD6B3hu2x5xipGTjtWjmlzkEPZ0JklHT1LOcTYmwxdwmZxg2UoUp8+
	 zFBAKz6ekg6iOSTu39+kcwYsQEfe7ZZghvyQ0AMlEKXTahHY0BZB+jmSa/Awo3A1Q7
	 mWcUatV3uN9+OzWJ5h92cRcQ3Ux3kHRYIfuIW2cQjuPlAewk2o6ITq9NrSWGsNuHvw
	 neD1VqkFTmCKurSxGdzD2I/yWralL+pT3KOgwPGkFu7AvoOG9RDBIATBw8ZrilR0yz
	 78Bqky1kdNU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED56CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529099357.13801.15465007072125044000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267cc541fed76a48f2ea77325d2d2a0d71fec70464759ca555fb781b81d05bd1
Date: Fri, 15 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755290993
