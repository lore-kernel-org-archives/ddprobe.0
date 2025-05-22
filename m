Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20C2620C1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747907395; cv=none; b=aYqN069nz+6omITQuNzpvTqwPT/8DGwEbEq56UIL1DMBlV1IWwghls6HUxQJAzabdp1GEIMElOKDSS2E/ZT7wP6eCE4FCQMo4/qE0SsGvSpxy/SLm1YqJXNu+0vwLdBgFtSKJqggKwTRMz4KOqOxqgaZr/whY00zOVLRUd6+cFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747907395; c=relaxed/simple;
	bh=wv/PGm8SbHhvev92HEuxF3Y9zQ6kp7W1rt5UGM4v7Q4=;
	h=To:Subject:From:Message-Id:Date; b=YQDTKaZEqivPmWoGbD7DRChbsrqUBP+eBbwGn9hAXE0XVU+XzhtyQyKGPpxKC4ztpMMZHn6Q+/Nqur1U9kHDoRnofuMemJF7YtpUOWo5QvK2+KCYSZwF9ok/k/uqR9cXbsuNwG6nFJ818WqwU/p1GDNrozj7ldllGuMxzRyCVds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfpHR7rE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfpHR7rE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC1BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747907393;
	bh=wv/PGm8SbHhvev92HEuxF3Y9zQ6kp7W1rt5UGM4v7Q4=;
	h=To:Subject:From:Date:From;
	b=CfpHR7rEp48gGrdsWuhbjtwEnOhmqllha9tehOd0tgl2uRYUUhhlUPUrfiLi8GnQ6
	 ncdIkI14XU0MJMEKO8ykRRyEZ4uBB73e6ERbzNn97FI5vlQHl2jYBwE/zLrpN6PYDL
	 719DAeevx1CiP21rbQy0bpUyuUU7rEHLLgGlVWD2nq1BGTFlONLocQatJVgPH1EIub
	 MQ0vBMRfa0hqB9de0E0Z2yT+8TnOZcKUML005C35EqqV5h3t8DInUrP/jF8AU7mT3u
	 LSUXI3XYabWjEg+Um83lLzFVc0DK2kUDm4x9JquWhkZ4ynmNT/50hlLnnc0S8+gKOe
	 6eS1O+R0rUCiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F05FC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790739357.18312.16164515488534688409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848c33630e3ffad78691ca5353ce590a42a4f01c6e1d13ff4c0f0208a2d00c99
Date: Thu, 22 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747907393
