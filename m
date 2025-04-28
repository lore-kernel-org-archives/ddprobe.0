Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B6B25F796
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745831394; cv=none; b=mM2UXN6g1UwVWEo9K2ki6bq2DfP4FKKh8Ix0p3x5Pg/Rc89g0jKRdYeQrgv5oNS1m3O0/0mcPxX9himZpXYQBLGE48DfPPfqKAm/lto942cW4vr/zo/p4udcjL1Aan1zrkiKFeDJswRfUBfJ3gbbvNhiYepiwhMMEX0FRG+BZVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745831394; c=relaxed/simple;
	bh=3hufh3OG/CiNeZYaqtSqU5siLmcCx0jAbSGiW2ISPkk=;
	h=To:Subject:From:Message-Id:Date; b=no61wqa0yX64z4LEEEIkhMNvVLOiUxE06WUcQ0f8xdddNXdJYl0/n3zylnYjiMivdMoqaPOwNM6IMDnae8WviF1zWesStJ9bDMNZwWGS/AFcLiVuJevNg0emjUHHt5f9WsEI6U2/+9vDyVt+0i3CJXwq6RjJdhEbPKLJQBvQ1Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iaap1dzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iaap1dzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2F3C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745831393;
	bh=3hufh3OG/CiNeZYaqtSqU5siLmcCx0jAbSGiW2ISPkk=;
	h=To:Subject:From:Date:From;
	b=Iaap1dzkeYo6KZuZ0mTkry9LniuA9puOSSk/vfAEkcnZafpnyXbYj6kdVaDuAe3aQ
	 KRKc0BNxm2dTOVVlGdO3X48R58hFSiNg+plyTst/rmNjbu2avQVNQ8A1nDfavhZsWA
	 zVjMaz5wDrtd43XP+0LREoTBEszRUKR8Y3pUdnGHCU0dy+ULMrhEriMMEAkoiZgQi5
	 Cui7p/vdXP7Xu62dGrb7zxeHCpQ5PRwmRvCTQDD7dRCKueAmEfMxUAbZkKU0GqpudG
	 exnXhFHnURsL0a2YnGqD1EGIL0ndV5tiFwmiGl4b46Ngtrot72pv4+Qy62eMwPqHJ+
	 +ZfgA6jsloXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C4C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583139357.5163.2443311722107201788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e327982eee8ef1b982485a68903419109250562b0765cf9cb3fbd07581dfe8d0
Date: Mon, 28 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745831393
