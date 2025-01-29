Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460E516F0E8
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738110354; cv=none; b=Ij/1CUptkcuZmtL5uJ0kfQbTMwEavl4ASwPrHyGiDcnD+CiHNFGbjuDp4VX08zYrWkvtoRWTqQCq2+s+TQE0oX38/vvOO4NzS9KoflnbLjkUhlZzvHBar5VNsC2OcUmkQ4TX+qqzoR9resiPO9oIAOUGqiJ+JFhREA9pSwVVl9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738110354; c=relaxed/simple;
	bh=7GxZ+3gmVc6zcBaGtuCA25pWEq8iK+XJpWEPkqo96hA=;
	h=To:Subject:From:Message-Id:Date; b=bFlck/lu+aYU022JQnbqaHScoWbWOVxFCRCkcP1eN/kcxs93OBv6iC24rhNzGnZE9WUTHsh4LgPLa97KBIHF7VRgsxB9xJ9qmzaZzYEDSHV9vBZZlXjNS107gP+0qL0k4xNsIHbAcirlWltOPuwAi1pSdNKYO90/MgLAHhKQmOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNNlBnyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNNlBnyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23FEC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738110353;
	bh=7GxZ+3gmVc6zcBaGtuCA25pWEq8iK+XJpWEPkqo96hA=;
	h=To:Subject:From:Date:From;
	b=HNNlBnyy9aU0E/0BrNZJS+8XRHUaoUqVWGRUp5up+8eXej4ig5UMDVfR9D26r+dr1
	 JHJXQe1I55ystWLSeKHudYSpXt1Ras160KyqB65n2x4VwmJmRQTMYr/BP3vUq7vOaL
	 Z21048cxTPJ9f3fEv+amBvHi2UU8REwRWAdNCEtGEJhi7+steKKyCx/3DbpDzeS3xl
	 rY8wHEQ8M/kJ4fUwP4E5Yma/vn8p1i3hnDjOB6HnCpmreEgupZ20eY66Ctf7jBKlh2
	 T10HGFVS6hTl70fktX4tFKIDHygzaWeyrTmwv49T1UVa4OeCE823ASdZkBgJoMLQCQ
	 rVMqi0OJBOPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0320C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811035364.17971.6693551319040613114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944a15bfef96e016b65288c59c333c365311e5adc505ae01da897ba08f91c634
Date: Wed, 29 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738110353
