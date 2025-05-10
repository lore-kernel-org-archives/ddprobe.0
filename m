Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358B41B0F20
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746866394; cv=none; b=nTClTzA+taMhEdqX+wFTKeNvS6xGf8rtxs/O/eSaw3J3d3+ur0aMM/wq3BCLjw60BhRZ3scvfYuYIC4ERdnenqcl7uxSBLyGRuoGhWf5PvbywgZuHN14tsbxrgv4/mplQr4MuqFq+H1bugOE5yABuOuBT+ymqqVAq+K+xncSrHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746866394; c=relaxed/simple;
	bh=KKcVpiIj2cIXZTccw9zGMV5iT16gt4JieZqAAl/Kbxc=;
	h=To:Subject:From:Message-Id:Date; b=lJ4UzaSctyWb9PG6TrQgnM/EoiL5AeR5HjvBgQMCPB7uX4tXsx7CsqDZfFusGLXb7ITO3QP7g5lLTtfeU+tRULGZybPlGmLSfurOM/J1iM4acrjONKpdrSKAknl3olY4Kxeuc7INzj6vUoARH4PpqFo2OV++6DuYRpAVeKMieoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdRUJWz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdRUJWz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A170CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746866393;
	bh=KKcVpiIj2cIXZTccw9zGMV5iT16gt4JieZqAAl/Kbxc=;
	h=To:Subject:From:Date:From;
	b=IdRUJWz1JxKIzopAfklGTaXpm5N4dt3ssKst1AEq2D4RH37vrATPVWJTlyQ9+mI7d
	 Mu6AwZejusYaY4lLtqfJKWFKJHDyw8lJNzkIB8q1eiF7iGhF8adw3kwdj6sIUeETeO
	 WTwenuFYiotfCyetEwilvb+H5HRUkweuHsIiHFPp0rYhozRkzqSzlurRrbQ7XkmmS7
	 0sf5k34N6nq4qHQ3XUy3R5P5IxsVIorB912D+G6sz1ddjZ3vGuzsCrUAWNmQv48VzM
	 +vXoq5PEKhMf8FWJTRerYVWTsvSf4AqUU7d2dDVirh1bTKh6PIXpDKKd53uoi0deRS
	 zAzIvja9uX3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DBC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686639357.25641.8292448255379967608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a880e4597155c53a3e4d139584acd89788029435e9ae5cb1f3a58c09bd09083
Date: Sat, 10 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746866393
