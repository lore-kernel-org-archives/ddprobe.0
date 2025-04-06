Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE2925569
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743926394; cv=none; b=vBHxn7dlWkjtOjDuJfb+wi7x+4YP2U7+ld+bEW6wWRYxlM015qoHXkwc/ybGHvqJOewryx34+0/6KCMfTLJjcpbq/wHUZWPPs4upZqpxg2TCkywtKVYkkcoIvGs9j6W5VJRdPm3cNEQN21nWZct15YE9qXrhR+ACiQhkNYQq9X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743926394; c=relaxed/simple;
	bh=cpuwIC7UImejcIjQ9+U6Z89Pfdq75aMYokR1SFMczpY=;
	h=To:Subject:From:Message-Id:Date; b=f127KjuDkWogObmpg4sLaDbqBqlb0F2VsyZWIRsST75nqqqPQ02iFoluoMG6a/2FjE2qDXD4Gkn/gCbo0GML8WqINeuFJYxzIDq2Wfde08nwAqqX9BLMalXrUKTHz+DRRyU9NuiYgFC7Zm1gJDoHFvmQ3/XHHd6HMQ75oeJzdYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMf0aZ0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMf0aZ0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743926393;
	bh=cpuwIC7UImejcIjQ9+U6Z89Pfdq75aMYokR1SFMczpY=;
	h=To:Subject:From:Date:From;
	b=OMf0aZ0P7uf/H/9loZfNlraV5GxHDuyl3AbcjOWNv5eS+Bh6vLWx5h2h7M/x7uNBa
	 HVTwF/xZsram0Cs1HncYKOhRJupCf6fwXY3bDzTRfVQC+GGUSGjLv/tzpEPFrkdBc/
	 6FACgvrSmA9ZBlJCDqb/35MOFmqZfWhriMUdtptgJoi2WJCE2PIsQq5Ung/xhvutbA
	 dXaRNxJWWj7wo8ULz+pXAS9vHSicjYrXZoRWmPwaQPPMuKfjGMHpXq5fGGH4kvt4yH
	 gr/g1DDWJRlq6EYNmxtHQhpP+NVUffgdD1GoYE7OqvtGBywUEQ+6HKpCAaIyJqT3lr
	 mwId42zm6bhBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F3FC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392639358.4975.9361123784743633864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e6f5ccf73e5609acfed0389ac9589bc9b5f849cf0eff421911db8ac7d0dfb3
Date: Sun, 06 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743926393
