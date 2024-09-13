Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BACD1E884
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726263354; cv=none; b=oIs/NtdB4Mbsm/Q7izkJsghkVagU7YpQssXZsFXlIxbwLanuvQ3ZQgxExnSGnxVF037dK3h1RnFgrH0J1zj4kRcF91P3kGrL/3bs84KIjny4N8MerlPKGxBCJ1ktFuypwRYyHzK7J2svNed2vecV1L29SASViALWkiPaHZEx5rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726263354; c=relaxed/simple;
	bh=zHJfPCvUcMENTvWOOC8nRPhQpzV77DbuFNb+XhU+7+U=;
	h=To:Subject:From:Message-Id:Date; b=o6UMD4jcgBqt+DAL+Vlg/5cMBmVxZRkMPUlLLzb5mtBk3jZDfoFUW+NofTpLAWq3EAI4P5YdMo3iA5qpeWv+QG0c48VYI78X4a/LfvfyU60zCuriTmIEoQwYCVYGltJqDEuFCy103bRpXj65kzWOUgFTsoANJMZ2pqXyZDDNzFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sa0Fjah3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa0Fjah3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19C7C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726263353;
	bh=zHJfPCvUcMENTvWOOC8nRPhQpzV77DbuFNb+XhU+7+U=;
	h=To:Subject:From:Date:From;
	b=Sa0Fjah3X7JDElfXYZbOFfEEHCYymMgsfhvT43AnW5U3GxEGb2T8375V8ogHJsgyB
	 drj4B8rvA9EKOoWEbcjrwUMmzOGKsbpLrbLnp92ZllOoK6y0Vx2YHGCLx1mzPXTNb+
	 9UqxuFCGR4ID4Pk0N9YUyIcDTSRKGAZD9qwGTLSYOdOfuQv/MlcEdV9jYLE6x/0p6E
	 IBoGWc6Sb15P39he5Y0MHSVBDALXQABo8thcoHSQ1rO109cVYz8qKwiql+JWIqROAJ
	 2KkJBJpdTj8i6evDrL1LaLd8+9PyRgsyb21YTMkQniyKw+13O+dH4hLY7rBYwVft+G
	 RiHGTFr6uASZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DAEFC6181
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626335358.16972.12933851411249073801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c96344ec3eb5f0184b556e0f313cfe77b7dac9c65e3bda0c96fa400f573fece
Date: Fri, 13 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726263353
