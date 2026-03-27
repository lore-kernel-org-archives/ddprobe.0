Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B56D3E3D82
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774607694; cv=none; b=EJY0wAZvCGWf0jWvO43/GBeI8qxiG/+Dg1zBKPqLpRttJx2kJiESkzZBfLNU7IvSXQ/THijlvK4p6lA5K98oVpXXc7tsFkv6FbmPxXtV1asIn+oSzrc8+hrXbBJTj1bwBhl5m7ceIVHH2WtxO06/L++BBkLpRRkhWU6UyFwCSjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774607694; c=relaxed/simple;
	bh=uz14tIt6vvGPUdR+w3YZx6IijoeiaARFGiCI5gIKB3I=;
	h=To:Subject:From:Message-Id:Date; b=pyQObWqs6omXuMsf0iU5mGiWNzVWTnf1W6vzKYutML41auO48zxKhR202TiIDIuTe0DSyKTG14VATdeTtmJIv8m9OYv9BDLq9o447STM9s9JnynXnIoWcTnoTEVhn7o2mlm4614r9S0hkw2l2Po7m6WIZKx8/EngmuPhMck7KqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMEq2ETK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMEq2ETK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD19C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774607693;
	bh=uz14tIt6vvGPUdR+w3YZx6IijoeiaARFGiCI5gIKB3I=;
	h=To:Subject:From:Date:From;
	b=HMEq2ETKMj00wMPzehb+cp1dn8I7zxW9NMM1c2ATGt1A02eDLqRI5wc3TRsONGB6R
	 idjybOhIkJiP9nvaUkjreJu7xJVzGfg5zV5cKFnB4QWN11m/MZ+XESss8h9cBOdSa3
	 jEa0ZCDXKd7bGHMOa/1dC/0Mz53Z7vVha0fSgx2glPOwGGb8lWellUfYHUs1mzpbSh
	 lky8PC4DIA1NAl0ukdBHrF5hcNtRkxrx6wGvWotVp3hgVDsnZCKEaoePjfLSri8fly
	 gIC+2l8ypwy+EgyRoHrxgw8JpfpGE9C+akmCbzU6VxBGv+GyonPSb4BeoS3LvyZN/l
	 tS7quSGnH4ung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC210ED655
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460769358.22842.1446027001928834742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd4035d838a255f55ca5f2f1857a731bfaf0ee3f98359639d1747f6e2bdb19e
Date: Fri, 27 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774607693
