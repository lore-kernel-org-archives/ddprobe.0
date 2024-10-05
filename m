Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E92149013
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728127554; cv=none; b=lIxA4PGWRSDpyTPnuORuo+NE8c9Sb78a6yWytw8M6NI8Swt899s+g6oO5tMhMEjobVwaB01wLML9DmN5cbYl9qIOxlacNCd5ZVzlkS6Bl1/BZ/k6lkmnz5hafz699oLVMxrUtRwNjIkWN5YdeWwHQNc0QzBWJDnBIkobaXhwVAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728127554; c=relaxed/simple;
	bh=3LwvrHPZOv3SWlhzCn5CV1nvWOXHv6F0Y97dBcRM+M8=;
	h=To:Subject:From:Message-Id:Date; b=FIG0B8Tub/skflN0RY5057fgidJnAXNQgWZqT4gVPTHUl52g0ymPFD2oYX0xfK9C43kgOopoIszVBY6YdfI9iJ/jHB8N6E6VY6ldpFAbnGwjxk0Mt1MCJgZvAQ6T3G7tmgcVfixiBH5oqIfdY0b0Vtw2smaNTXm214JWwrMTNpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZwxy/Ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZwxy/Ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AB5C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728127553;
	bh=3LwvrHPZOv3SWlhzCn5CV1nvWOXHv6F0Y97dBcRM+M8=;
	h=To:Subject:From:Date:From;
	b=YZwxy/CaZ+U7HOwV8qMjPLmnTKIQ0K1pc5ix+1vJ3ePLUtHZNoHJVc4VTAIOC+qRE
	 JQkk6IMRHTs/L1ZfQL3XQicNBWt+RRW2wBltEHJXT0oUO99lsR4TplNjbjeSC+7GHl
	 cU/rK+pMFS1hkZtURYAcLXclT0r0K9LbnVZTh9qZoulMClMD7jHqSFTpUluEBVPC3J
	 O0mG+xoeQEHigOGhY0g6EIujjWM487irueDPbZwZF1NsVEliQX4RcpfHows1OBEhru
	 z38wPIetUqawKX3LUZn8H3ULRxOc1A/mLoSyXq53fYMUaEv8qlUK0khIqji7X0AgHr
	 9bAidNZmK0YWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A245DCF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812755364.14200.4251614753496985723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e149a42db78ca3702d31a47d5e8e4f9f7ac95b098b7c2c2f0e69b349768e74a
Date: Sat, 05 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728127553
