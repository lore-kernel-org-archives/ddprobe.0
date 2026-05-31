Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFC133A9D6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780217074; cv=none; b=iRsakYSN2ElnHtPfzXx2/NKqJR7YsMhXDD6H6JrGTmCIQzWWcw5UMvBiPRTI+I4H6WR4Bkivi9AQNLVaZywGCHMzLBrJhVliDs9HSYNLA2y4ivUhRanZsxFBlO2Xs7uSBrHDq2BDPNb8Y8CgvHuGXI6i6jjAJCVWuJ4CQG+hO1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780217074; c=relaxed/simple;
	bh=PbrthP7WJlWzc/01LVIQVcURggW4wHsulkDhtkBsiWI=;
	h=To:Subject:From:Message-Id:Date; b=TdO8UIg+ZQU/5hYo7cMlC+kho7CfrkpyEscGWvfZSlXkn4TGKLey244kYUeVY0dZb1yggdEb3R11A9AzgW6zy58gBw8QZ8Lwf36C0HakqXE4Hgyk6NNaBabOqVHicQxbBhyvQIRkYpQuObBfyPRI0ZQJyZURiQa/KVjgCI62C7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLFITttq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLFITttq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8995C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780217073;
	bh=PbrthP7WJlWzc/01LVIQVcURggW4wHsulkDhtkBsiWI=;
	h=To:Subject:From:Date:From;
	b=BLFITttq2H+7E1BKk2aKcYJyClcrNa0HGRgVBn93hqvV1gdGiYGzKVBK4jr/yabKD
	 jCZDd0DXXffxy01WcZkOAbMuQRZWlPiS7rjzpacmqJG3/i3ijNRth/6JI6EvqX0KDz
	 8+oB5pbM2MBgbB1qSH7RuzT/TNFkbnNlo8EDADjF1rZ/7rJwyyux7ix5k0Oxbhq2c4
	 vllMVRyFM3jII8nkIgL13sO/q/aFok5s9DYiDWNSXlByPfwcM5WA7owW1uHybe7RPj
	 tCqf1UMQzpJjOzfLdeBGdKWepPY/lj51NSTKO69zcCqIjPNS9d7hod35kg3VuhP/vq
	 RfaBVRY++VPxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B047CCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021707369.28280.1314750524245930211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c677d5f6a10cf6c118c0c6f2408db0f3d2f48c356194851c05232a39f5820c6
Date: Sun, 31 May 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780217073
