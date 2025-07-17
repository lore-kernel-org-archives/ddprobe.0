Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2267221ABAE
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752785394; cv=none; b=jVrIXT1h43KnP57nLZ4thiCq+3T3aj8V12AnMyhJrO96WZ3YKSCzKCfAvHt4x808EqQGN2AcVJ4ApqMwmkCM/NvTgD3cKgx2jEfDJthBTjsiLSxTFxVrk//n2jJ7PyZlE/QeDffkr12TkkQIUifdwxJWj7j62V219sgPFSZ9/Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752785394; c=relaxed/simple;
	bh=HyGdPjRMLQ7zUA0f2PC/Rehi7razO/cwlaC7KYC6ZQc=;
	h=To:Subject:From:Message-Id:Date; b=k5ljK98B8HpTNlfYIYKWAMdIG9yi27qJaKfjSQ+Qx6jwYjJa4UEjmdIFn0A1mtkk2WZVBS+JEHvqBa+h12C5O3JzSo7vgm1+PYAJj9xRRs+i16hSPmyJH+aKePRcg3KQBEpzcxxloqTq3x+x293TjbSVknzTW+fpWXSe+USUsb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAAE9MA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAAE9MA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EFBC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752785393;
	bh=HyGdPjRMLQ7zUA0f2PC/Rehi7razO/cwlaC7KYC6ZQc=;
	h=To:Subject:From:Date:From;
	b=mAAE9MA/yGkXQnwkXtTfLaETbIBLC9YyS2qEABpyllf0zq/hrKLE7I9eNwEvOYiq4
	 jLIlfTOatFgDc1qIYPH64YlobweP//jIpXW3Hn8L6RxqEAk03q0+GjGuuWOC5ocUXN
	 Op5o+LTsPKpECTcbmCoousxefggycR3buhlgSsmzQw+539VastRL6oMC9zIr+UWyYb
	 w53FYFV6PzjkRhtZgL3im+yBsV2rio2rlxgVjCgK5GuC0imoPk/YaWN79rauZmOriz
	 CBnlppB34tj1fiQC/fGYD7G8wPaLJqVvDDP+2czK1GPi0LRUCBULjzsjkvWi0b+v03
	 2YCyg61DVMg2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90972C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278539358.24578.893896125530730886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6c574c8b2c8fdcdeb9ae72b4c699acf18fd412eb26fc4e3275d3b05f52c63a
Date: Thu, 17 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752785393
