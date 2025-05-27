Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C6B1F9A8B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748383795; cv=none; b=BBLvSvM3bMgT1O6TOSDLidCA69zS87HGx657UdMVIhPIeI9rswU61lDu0YSIzxxoUp+ZGaz0RZLg6ywxXrLK+49iaqYXxt1tCfJ9HoAF5u2TM3YGMejjCqght3RlwYzSOGBVDm7jCiQDWDKKzpLKhwnJs84QOhqgUr20abuwzpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748383795; c=relaxed/simple;
	bh=NOYqSnNS1lcImAVGTU9kVJdN2n+MtBWVo963UHQVvPs=;
	h=To:Subject:From:Message-Id:Date; b=tyBbGPVrSb01bqf1CYxPigB/B3z+uc+LWJVeHdJLJHKs3LweSs3NueUK8cQEW4xEWwpmmvyY1IneSQGZADY6N+yAOlJC+fARRMOyF/KHaCRsqxlueQyaEWsjlxLfeUmYNX0FgQYyTT6IbkMEerkeJzWEjse+uK1BCJo0Lft7Ko0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RewmECjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RewmECjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA424C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748383794;
	bh=NOYqSnNS1lcImAVGTU9kVJdN2n+MtBWVo963UHQVvPs=;
	h=To:Subject:From:Date:From;
	b=RewmECjLN8kCAk52+MhNah25guWOoMewEuUynh+kFs5fts+C52rXLpRFgsLd/mVF3
	 j0TE4p8V8J0IzG5mLmXJdTLFkr1x3rTs/ohjOdSk0S/TtSdAKbid40niXnSsYpqmqg
	 3VUpqBVD/tRzPSGi6KPLObhNf5+BKORbYdZFA98u3Y0AD/e1T/L0Su8bltCudXygV1
	 lH9KHzaFsBcoxn8kxyBdfxrdVd6pA3955cx335KOK6zqalgzy9QL/Xs5BHjXI+Kv5b
	 T1RzJHrwV9gzy43zhXyfQw5h+uOLgcr8VzFD4aaD9QuvsDoWY8ZbznYGMYtKTPl0lc
	 uchG+UX7k43lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC5C5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838379358.18602.4621950157243480924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b15d1458372eed1775102a1e52487abcf7ad75e94b2045b28213eec392da04
Date: Tue, 27 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748383793
