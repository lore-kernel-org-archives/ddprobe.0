Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6207448A2DF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781029534; cv=none; b=QjPRuE8vPLyycGahP7gCgn0Bmqj5urr/gY3xnXBbgKcqI60fSljEVon7+ATma0z4gbSdM6oxZ3DAk4kSJp6z5KIwEsgmSD1wJnQ/VTZP8xCF4DZDY+NOPPz0jaLM0IITCTIDjJiz3UCWI6lHHnQtRLdmZAOXcgISa91fmwN9zrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781029534; c=relaxed/simple;
	bh=oAgc0qSylwlbRVBXTzjbuY5gYPlG+/mx07RFO2YehHA=;
	h=To:Subject:From:Message-Id:Date; b=K7E04Zl70BnP/1S6WntMQp8DzVaoEeMQNJCgGklPPaNgxv3JzK8BzSnk5iaObB9mmkgyIr2fyVAa9pf8URNiVO26t6y1A25LdqVm+GJWNWjBJM1o4i2ah+3MAoK1U8OIB7DiVhdFylR3vwfVN7ucep0h1q3gyz2PBySKGyQ0erM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGxdW9D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGxdW9D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC682C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781029533;
	bh=oAgc0qSylwlbRVBXTzjbuY5gYPlG+/mx07RFO2YehHA=;
	h=To:Subject:From:Date:From;
	b=cGxdW9D+ush1QqOaIfcNR+2H06UhjSPISqhRYqzAbcWzfmqhd76taZBQmCooTv7Fd
	 Y1NwLVJgIhJ4JzOq2KuoRIMN9OJz1O/6CZi2tJmywc2gVsfjXp1EGpLTDK0JvCW3gT
	 hjKNzA7MxGsBLkbU7GRyHkbn2XH53XuwP+ZDqL/+LA2jH5UNx5wVnBORTfl3eOdw3+
	 e9ZOrRy9ZKyDfqnIILpCGVADZwQsMwQIOoEqUgmlFdKLpNns88+11tPvphaelKX1G8
	 o5yGg2CCJLqXChG/U+f9UnDMgS6vh4e/nxgGVVwP9m5IUpG9eoMqXjfgZRGTYqJzWj
	 kWtqdRiQcgkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1FDCD8CB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102953370.7592.4947038819145684838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce3f763f75a07f829f0dee1965916365dad7f3b003b8cafc5c8c42be959dbec
Date: Tue, 09 Jun 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781029533
