Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CC7E574
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723271154; cv=none; b=fHXFAkbZozxu4bziXvlGGSEhx7QBrWYyNPPsETJKFmCrHbkEE9dEWVCR1wbfSzaJ8FDYdrvw73sr4UooVeu3kUv/CuX7tdwG09TjKA07h5yIiycbe0j903Kelhh5FrRkn8wTyUBRsVuX1R6CMh+qsU4MtXmdPQuuBpoj2CrsbUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723271154; c=relaxed/simple;
	bh=sVC2ut+qiZA8ho6sHXu4THYcCcYV39qGj1C1lQUKfmc=;
	h=To:Subject:From:Message-Id:Date; b=I/7uIS0XtFfRop4f1OlCROgrNlEMx0CwKp1roAEwWPBiEK8u/ehVUSYpbCxMXsMj7/xNdIZ39Fv9hspFnXBDUG9RRqg+E7g4xEVJOn7xY+U/4qWZMqmyab38s5UK94nre+7HJC6tvqKXlM2iAJiRlCdairjg+qOPFcGn00TdWWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC+t1+b8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC+t1+b8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A67C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723271153;
	bh=sVC2ut+qiZA8ho6sHXu4THYcCcYV39qGj1C1lQUKfmc=;
	h=To:Subject:From:Date:From;
	b=tC+t1+b8H/tZKrGF6oBeIFBLP6+RlnfbrboaZINUBf3bX1v/U4+0WjkcQfyekeaBi
	 ymGA8FA3stHQnaZVOUbc9meBUrm/qGEamFd8+vPhNNSzWu8bj1kjICviDnEkVOi704
	 8RQCER5HYGzP9ewx8Lv3mzPSbGAvlFgCqinFwjSBy65diUp+pcHVBf4X/9Vl0rfrSt
	 NCJ4rNnh4xSHCpldEIqAleTpMjR9wnbpiRzATBD4edyvEmp1+00nkQk5Ckg6Rr7WZL
	 ljuRpf2LxZECgCoZGNym6L0o4NEsvFlpLPmvZg+nTjWZ1QmohDKcGfu/6iwNG45yY5
	 RhFIUygD+3YPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC0C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327115359.25069.12804693669582650876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac82476bb00d367f98f8e3deae38427471e80c7d271a8a7aa0839fd18d779209
Date: Sat, 10 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723271153
