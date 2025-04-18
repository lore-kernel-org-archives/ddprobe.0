Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C72019D898
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744952994; cv=none; b=gTmxUdtAhp1xR9HksIBbXsqiv08Gwe00eV1+Qr71tlhaXrEjqpNBFsX/rxqHTPcjyNuzJHxDg+hb6eo8PxoSkU2OtEM1QT8niNYSPvqP3x7SSpwwpaii0AHwFhhYYhuPnw4WkgYErVp2anP+5EKkNOT29sia/O713F327SUD+Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744952994; c=relaxed/simple;
	bh=I4QgjT5bRaOjlyB9+d67IzMGvPrlWAtX8L2xRK+ku48=;
	h=To:Subject:From:Message-Id:Date; b=MAmEp/SVrafG8W6xL9nirS+3aCxps0xKGhuqk4xxsCx/pcpHsvXjFr+/QJn3cx9O2KVokHTRusruDALFHrtB4E9lRdLMxHoT7/BSXnx9JspyWb0fGDC+/quJbCTL3J+kM6B3uUzfibm5e03BoXKoAqG5QVpGVGRY2UTGCSgwUbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cme0+HJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cme0+HJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C682DC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744952993;
	bh=I4QgjT5bRaOjlyB9+d67IzMGvPrlWAtX8L2xRK+ku48=;
	h=To:Subject:From:Date:From;
	b=Cme0+HJbFeYMHKDAd/lEyQGMZt+PhLgdNWIr3yuAqjcfG2DyFHLvhFWRpaBONr5UN
	 G0HnlDvOXXAXymfaVNY2YSubSHy5K4GusaB+UUwkfmkTYinrVY2pxxQbofjkWQv2sR
	 US8DQQ064nnI2fUJpIuaU27zk5YsbA2UukFuZDENWzJA38tauqLCIqjh0QYr+0Buo3
	 Dso4kM5vwLwtoMFn6dB3j3TFFLnhxx7UpPcYyXtbJhsLTELBrfZkDRDGUGHdm2dFob
	 RlJaM0U57b0jSAVJmnSjeNoA22FCyKHVJcqHzQbyhsXnSlDpfQAL5AJ1ygwWwO3uYb
	 eiEUqRo73kO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE038C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495299366.20207.3159857449889060316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66bcae13c1942e7d6794c016fc4e75d02bdfd5481176a94e9192e53b97940fc4
Date: Fri, 18 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744952993
