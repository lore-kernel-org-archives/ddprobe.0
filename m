Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3089D1CF8B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744955394; cv=none; b=ib1ncS/IRuIc7gqNrls6VzFGjso6INvItupJLEgsIjUsxE9gXyqnmQLtZ0EZCkEYKnRc/IvQWeLeHyUywAzB3NdLfAAiHQzng/vzuhVRJ3ROh4Kc/YU0AIhIWx0giruWjuNHLInyN/curhmLsFc27ZtpmdCioDM9V9KYmTtZKKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744955394; c=relaxed/simple;
	bh=P3Ml0u5FLiSHyDqRswGtX46W04exXUiFC8U9Vx8mScM=;
	h=To:Subject:From:Message-Id:Date; b=tWwpdGSnUdr88FU+9luNPxl+FiYBSqVK5GbTBYNVOPb5GFgS/HGNy+3tjh50AJwKHlfxw41itfRR4Slru4ImDLjeroIg2+IHkBH7jHRojPqLIusGBthhjNOng8QPAE9E49x6KNuFUy6JsMlNY2wD/G220u2RcL0hkCfeZDoc72E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS9eWNUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS9eWNUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE5C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744955393;
	bh=P3Ml0u5FLiSHyDqRswGtX46W04exXUiFC8U9Vx8mScM=;
	h=To:Subject:From:Date:From;
	b=YS9eWNUpkNyYPizmSN2b5WK+D+XtPf4gL3F9n75W5b3QjTjUuqrTkgkqZEtRHrmS7
	 cMOy7tXxtYPlzYeFvR/Q4gtDOe5OsRxKE/CeORYKw+hPhfxJfEla0GHrRqWTJ30CXf
	 1jK2vWz3fkxNA76M+qY/mb8qnfgbVYru7nAptvLq79cUyhlSK4cZJeIGhbsY3ImJW3
	 Wyko82+BI9lQHlzMSs4/crtDVjEozWRNVQI64oVsJQFHuEeLNpX9XSuKkgeIWiwDAX
	 WYNp/bO2SxAOz0scpRhwVBmXVAWt4eZ5VMUT7KojJPYRnlMpNHHU+mEkunkdf74MqG
	 O4wSRS4KWjKBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B8C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495539359.13991.8689488455259380125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3217b5898b3845d859c418d6537e3ccfbad9d06d123c72fce4ba58a1d18f20
Date: Fri, 18 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744955393
