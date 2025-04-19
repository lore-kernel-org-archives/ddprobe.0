Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2CB7E107
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745081394; cv=none; b=r1KWLPtB4FIFPCCwPkGWcVO7Hzjddo8+8yZ+xMbDrp9sHtg9prbA91hcGeHqitEZEZosmiZOW1Luh0sjUYnx63I7ZH8JVCskb3zyj/OwgsYdwjHVVbvNfbT0E0Y8DzJxPm33s8dyGbrPPaoqHwf/vmYqT9F0SgGgbHA6YUQrbQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745081394; c=relaxed/simple;
	bh=d1lcV6NSku45o4uWyxYHmtuLXuJFPOCZBuIJMFGNB9s=;
	h=To:Subject:From:Message-Id:Date; b=fs8e/k0LXUDqtkSaflyVXjDdH1burdN0mtNIAZgf26zWqYOU2xV/IghHA43g9pzJDEVv8U+BeMpSi3eNGvgectzEsDORV0bPaeyu54ewNrbHPkEgzKZ3lFkV+Z6XfmTSkeuosX8A+JtENZnzHDfOPycLAH3mMhE9ak+FoMap5sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUdh8aBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUdh8aBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBCBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745081393;
	bh=d1lcV6NSku45o4uWyxYHmtuLXuJFPOCZBuIJMFGNB9s=;
	h=To:Subject:From:Date:From;
	b=bUdh8aBwyP5vHLiCj5MCB24yRKoaOquKXqD48UsdjT5S8Sf3LdkNmc3gQa9CsOQ8D
	 T0LVkrh0JEARlCWNPLHT9xh/UnLMyVkMbbzSuR9DRYRbM1yK49S6xlycChPO9nljlx
	 y7y+cVvmx4gzQkxSad9SzwIsKkfR5w6hj8qn9EEtEUGDdhiA8BY4ps2bDzvxv6CwL1
	 y3hrGmvDIZOO5DGrfrLbKFLUZViYGZJP195mLeNXIDwlCCb6xMS8J4esHhmvY1tohU
	 c5D4z4xdgTcTai8W7xfSPxvF/VL3tKJnGowOo3UEpE9yIhcta6RtMfTbAOx5tSNUWy
	 I7wi6HLzdGT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7100C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508139363.1885.11303580944403588198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85a5df958db9bf0420c961c3baf12a03364d1afcce4ebe82b11be89765380de
Date: Sat, 19 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745081393
