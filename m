Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D09317F7
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743917994; cv=none; b=oWYdVB6aC+JXnr+5Fd18e/e6Bzpf2zha3AOd8XSRHDvoby1aTMELKJam7qtNnsDly1y4cKmCIvnCgYKAYPdMAhmxIYrbf9cd27GyNxt9K6gPcMoXMa3y6wkZEuibCFKVlO7LVCyOUVIdOD/UlcE1Rwzc9FjiA6ZMPZCZLVOg6ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743917994; c=relaxed/simple;
	bh=NQbkXAqowTHNuA5vb3pG/BbF3QH5OegK+iM1/dmkfo4=;
	h=To:Subject:From:Message-Id:Date; b=fJGln7HczTfX/iFSYcA0/uZePUM3XDsqjC6oq2CcJxpMbP6EQv7ZJT9nDSsloseyZQWe+Bwd5Lsm3b73p7EKG4WR4fjBwm2JMhRNFIcQLQTuaNMHLDTDzejqB70FdBHu5EGzkvVIaTP4TX2lZcObYYz4Y7xpfrzt4i8somBBqLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glnFOl00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glnFOl00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA40DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743917993;
	bh=NQbkXAqowTHNuA5vb3pG/BbF3QH5OegK+iM1/dmkfo4=;
	h=To:Subject:From:Date:From;
	b=glnFOl00eT7hOTuc5Qr6X4QoVtlNJmW0gr6O7ngUfYcOQ5Yt73iJMs1CC3jG/kXtz
	 DeCRhjvUzVN4GwqW/2cq52hat2NPrOdBLlC/nP+o6DLjuWrEcDm+8L6GAze03kcQh1
	 Uqwi1tOz/10V+MBTEnsGSIXRbP6OiZgjO+r/eGit699JpkgK3Hijc8UnjgZEhJzxYr
	 +qJsqNkia82CmWN9Q088OMTCigzkyG8qov8MSpdPqthAHKxbohlgPlwL5IDOivyieY
	 AfFBC4jqq2gYEjumN8jM3VqyfW/peQVUf2Lg1fnuLr/rbY5VCDzOKh4PV+oqKqtTm5
	 LF7SxZgmDGsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF2CC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391799361.6838.17610879431194882951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d258317717740d7fcfd97d0a0612b1133dc8cd464eb38712c67d7ffd1c140c4
Date: Sun, 06 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743917993
