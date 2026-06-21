Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1D71E5207
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782009394; cv=none; b=czU1GMT1pWRmeMGxzODi1V8DZrp27vfs7EcMj3uInrtJozbACJLsxxLkGUKssoLCc8pmOIQjAj4gvYKAK4+wAbz9+j6qSHV3mk4tcrc1bUdMZK/tMq01A1ze0ObVEsAEq1ModEe0li4EEUq+ExmY9A45eS0k5ZLCVymqgFhWk6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782009394; c=relaxed/simple;
	bh=tpiFBnvLFtOHexYD7P21/Xd0qM+woJcMfvK0+Z8T8aA=;
	h=To:Subject:From:Message-Id:Date; b=cUEZn7SRkE/xVnnuil0gYHbl6I8tZsIj6qR8Ee5PPSd5YaDhfL378o26096sRLn21JqYJkM1Zs6jr95rLngp/VmqRw53Cvgz4FRD4Gbh/URsC36JdcuX/NsWxG3CnGSbRnD+0RJc0LRbr+01R4TaoVbyPzIQ2GhOIeKA0jOHAAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTIdnu91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTIdnu91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39FCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782009393;
	bh=tpiFBnvLFtOHexYD7P21/Xd0qM+woJcMfvK0+Z8T8aA=;
	h=To:Subject:From:Date:From;
	b=mTIdnu91LXmgocSgE7SlwrZ2CqzixGvlPH7GAp7lQGsp1RV+d62YUzzytgl1fgS+N
	 CRByYqE4612Qx3t47MwGmxmfmwHC4hNIwUuBzHkYfWxHBb5JmHNqATH6NrTR0QJtsX
	 WGI88wWB+4RWkb8Z2NO6p/NKsFGK0efJ3ikS+9O23C33kx1BuPTtRh4YU4wsKdPfsp
	 Fg79ZhJsYSnsuM0JHMeRDdYcsDFE77rNESMeTZQWJAYoFJ5wM7FeopLd++jZLsf+Df
	 rLbBwvIu8kUFQQcT02H7crrqxqkSmGpIx4sEWkW9/4HlzLT3gnKxnDnmy5IK3L73cZ
	 NeZj4QtRdQkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02AECD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200939369.12431.9627315232804782327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a71396d29069200e45469233e36e8d3415c5235565d8a015b1165d03e7f6cb1
Date: Sun, 21 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782009393
