Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF2438A728
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789323035; cv=none; b=rmuBQLEtqBzoz4LlqI6Ohc7gNpCYCTsYJwuvtc9D6CPllNdhvWXkGrgOvBmhx12PsJSEndGVNtoqJvRLbOg6cZmZDheiZRpNGSP10/7nfF5T4gwypQbIUp08e2RwIybeM+w4i1W5ufyYduKj1br3W8t72cZBRcClE/6BwaWQHqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789323035; c=relaxed/simple;
	bh=ZIKxbEqW5TcPoGs7NDLrNBka2gg7IrkO0nAsSMXWgcI=;
	h=To:Subject:From:Message-Id:Date; b=LvVSSoOwvcQDZqwq7ZJ+xOB7VYsIU4/zD5JxsxxPecPSR5X4ZeKxgZX1AQIexrclauRv/9tCZ1o7bP5xcTRvPA8Wwzpt8YETU/BOyrkrmFzc5EMUnGfds8WtVRKm6Vm0dLNDfx66Ngy0vnt9ZpDNYeLeb9X/1I7ErTCfQKkt63M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFCWTGoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFCWTGoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D230AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789323033;
	bh=ZIKxbEqW5TcPoGs7NDLrNBka2gg7IrkO0nAsSMXWgcI=;
	h=To:Subject:From:Date:From;
	b=HFCWTGoVY2ouO3giwjkd0ci9xcwbdwjeRv4cCgHIZYKpVN4m+iptlvDn7IV2gADY3
	 l1ZQiemCh/GIhM0hoM7VWNkVn4+apDKpzGnrm8hs6XnTAR2PQXAaOa5ZA30ZPsx6nC
	 KGI6OTjdwyGVh2xLVIswGcbuCD3WULJk1Zq1oPmdGZWSBGAo6AuFAaet7SDgxpJxI5
	 sz0yeT7rCm6yIIIKxnw+sEwhQzsyE09ECCYCBiAqqlBeT0FAgl8cWJ7qDbbTJZoIUm
	 ij6gzZl+lSxsfMvH0jAm5MWmmQZR+w1WkkBj22kuf2Qh7XUWSCf6cop+Y5uoOFZ1pk
	 4c9VIUYOPI3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF664C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932303368.5110.4792538315320238298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702f6e637743e5295cb7ccf63751a91d56564ec6738b5f469848b2f1a62f5033
Date: Sun, 13 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789323033
