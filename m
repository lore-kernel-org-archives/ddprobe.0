Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAF32517AF
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785651634; cv=none; b=R+LRxyFBICjjJMkph1udBHuXKUfs4kSdYL4PTdQEqMgaw6MU7NWLHldRO9kDvsNxp9j2yEBmp+Q2zZtCRMPPr0I6AmREdSrljQAKDi2ZxElURgjq3J3OTj0XKvk0xigcK3+ZJHqFBAnvjmvg3erTGnh3yxCx7Pz3yOt6j/3ayqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785651634; c=relaxed/simple;
	bh=nTnUCmQ+sWGBl7pZkBvmZCg3VwNCr5jkLO8o84prF7I=;
	h=To:Subject:From:Message-Id:Date; b=iFZNv6wty6n1/q1hUS5IrukIhtavffqSUc7zwct8iC5XVSLnqdkghk3ezV/QVYLrH8OVF/6LGuHXMASTlcmeDHr2iv9EIG2G5vJ1P+Ch7JeJqq/8DivXB4+W8oI5zHZhUdhgwsw4b32FUWyyqLLdGYvhfN3qnYYcp/SRVFsd4EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrN5ZLYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrN5ZLYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF43AC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785651633;
	bh=nTnUCmQ+sWGBl7pZkBvmZCg3VwNCr5jkLO8o84prF7I=;
	h=To:Subject:From:Date:From;
	b=VrN5ZLYnNV+FkAnKs5BYKDHNKa4UVq+uM0P5lnS5m1/4CpzYgHKNGepjWjaSRt9C0
	 S72Gvg1clnVD13UjTNqJrd3x3O/81A18BX7NE71E+BNZ20KyMVPtomYTzI2aVqZ1qy
	 CtzR8PhDvNDPmrria2PAO8hUaalq7YzP6S6o3zht5h0wYvX/XznVmIwrpvUapSqeuY
	 2eMIUHxvK0vcNGCLfO692vhA50JbKhzfhoyI5PIVyre6y54pWhaVuPg/nQodQ55H3d
	 O3bljeqNYyUIt01l+itsNfrhoCFEHzrBL2+eis5TKlG5l+1bd/RMwlvDW/3HxormJN
	 jdAp/wv2OURSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF4C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565163368.30760.10318425534560586859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428a2c1f94100c9bb51cb157520b3e507ff77a842193812f18a225c16e95c303
Date: Sun, 02 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785651633
