Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510F191
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725830154; cv=none; b=m7Eq+EbeFhiq8t5VKGXYov113hXxnd4d7ymFz7DjnC67+OHFQf3kH5lRUyKRHWXgSbhr1qYVfDCypBVl0YduxTZ7bZE9D/07FH2/HQ/1y+7ZKUfUdxHgxAPDtVfgkRnW0BfExCk26DrfBwLmoj8NoaeCPdjxuQu/azBFakEILrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725830154; c=relaxed/simple;
	bh=buA/REPDegDU+6WmmyvRzitn4sQE+JoBo+K98QriDMQ=;
	h=To:Subject:From:Message-Id:Date; b=fthkEBBi/6gYZpAImvFOIdKBb2qc6ZvpVVI1212m9PAUgI2EfKPBKS2g723jSybs9dMMYkZKHREnRq4Q6x+PJoBbh9ETt2T8Ra+C4yzJ+v05rRiFniEm/+uiGrftVjmT0Iwt/VB5C89yn3tS9JRO5GJdyRufbq6gWGCUU13J22Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQbhddir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQbhddir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ADC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725830153;
	bh=buA/REPDegDU+6WmmyvRzitn4sQE+JoBo+K98QriDMQ=;
	h=To:Subject:From:Date:From;
	b=OQbhddirZTB95OukvgdLo6UtAaU4+asr+rpUwbbz5XEWfJJNfruMBjPJnb0qDhQc4
	 Tf9poX1TwdMRRMScZNyA3ZNN5dmU3vrZvO715t8MIhwgr13ljD1jKRmLIAbIzkstOn
	 G5euoegLrbsRt3cjnZ9YYR1opNIImjY61Njo9IWcGz4eyjdJk9/ofs6qNBDQoLCQ5z
	 /t9ToV7bP4rvSTVvbkA3/TAVj+UXa1UaEQ7zZim4K0VfPvDLb4iYhC7KGno3tVGftn
	 mnT/EmFLatbw8Rsdiex7cl/A8F2ZUbp4fyzlaamq4+uggbdX6L3QXhpZ4q7bv+rjaF
	 c/r5RBrkVdJOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E64CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172583015360.21257.17403970600572320668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774a02b47d0059b836328a1929510d23ceb6f9302cc58d0d891b782804271703
Date: Sun, 08 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725830153
