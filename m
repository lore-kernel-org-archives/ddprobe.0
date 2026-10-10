Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE76400987
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791633034; cv=none; b=A0pLALSPGnvrDLSzZwtKsh45bNRxbhKAAdHLs+e9VwQcDjFZVhVhr6w660bMxb3pq+9JJ3/b16r7EImARWgPYG+A54VyI7J2YwBSd2U1rP//z0Ze/HWubZhkwPKFAcfXXhIp9GVpBDhUK/RAAdXKW4cSyDYJfW9/ED07/LYwbtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791633034; c=relaxed/simple;
	bh=ZK1o+/bH9MIK6i5MNxxYUIY1raVyRZq/j94OB152iPo=;
	h=To:Subject:From:Message-Id:Date; b=ptlBxGBk80/ftTEIEze9qPJP+uhYt8Djkv6hu/v/8OrTUrv74o5Yaf3MfoZcckbU+3Iytnw0TZZSSb2p5/b2ZNTkhvISSlu2ig6JkQK8A1pH/nTI8vE+B0zn79odjAhgbpK8WqcPMDsQFvZp3J/6Cv8Fo2+sKvC6ZzDop1phSbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXSv7rzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXSv7rzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CC8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791633033;
	bh=ZK1o+/bH9MIK6i5MNxxYUIY1raVyRZq/j94OB152iPo=;
	h=To:Subject:From:Date:From;
	b=OXSv7rzHWV+NIhItNN2LgcRMtBxB1sXb7HubQ8MAySNyPcLM2mzFtsHxenOPVJMJY
	 8X8v1tsMm1BgsIQjZ0difmb/3ivruojKczhz+Wj3n0gySde9x2+dlFoBb6Rb4RPZG0
	 C2V2tdAi2IXDHOc1lYtnKtl43T3FsKe1flm0qQLq9nLfZTLuUD7R+iEAmi/8vwekl9
	 f9rT3w73QL+21GhiVpljNxpwSCvIEA7vJQx+r6SPYqp/o1gXmlGA54NM4v24msRcNv
	 SWhcKJNdnQe0g3HR0N0KWO0WiXsBefBLwIGAyeq9LSae7mYEm8VLi1KwsmqBIy0sl0
	 7CUdyj6WUexUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF76DCA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163303368.30971.9816793854375368643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f782a7bdb4f1c170e952cfa9ab4b2d740402978a960cc9bcb3312e24c08647
Date: Sat, 10 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791633033
