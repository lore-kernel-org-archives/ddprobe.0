Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545D9146596
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723067754; cv=none; b=kJ+q8EUB15S4mlH/zFU4X6zRaiIHzuezl3bdbGd7fTMhUhmq50PfdF5m6AchnivARNB/facQXmxef7YImrBhoPs9C1u98ZL9LwJ+VnrZCHrfrMfZuozB+LQKOd624AxAzK/S7cO0COZQtCxGa5LrRtXb1f+gW0RXRKWKMUJwFN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723067754; c=relaxed/simple;
	bh=6Gk1D3bx+gpMvKei49qtZ9Hj6pzVKLFAPhaP+INmeuw=;
	h=To:Subject:From:Message-Id:Date; b=TWnlxPak0OiK85LVUs+ot8zIYQGDYWPWLGjor2IW6G25goK+yBZKDbt8gcUSpkH5ZWs+FxAOrgTY5/ZOy7E2zlU8BPVmXQo8T7fDNYdoemIqpYxcl5T8IhVPXvnQBQkyTiixdlV4mSImiwLAruDcp2cwougqjstA8WSZNRxFV+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V75VsfDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V75VsfDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAABAC32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723067753;
	bh=6Gk1D3bx+gpMvKei49qtZ9Hj6pzVKLFAPhaP+INmeuw=;
	h=To:Subject:From:Date:From;
	b=V75VsfDCCxIha36Tp/HW5wUL6N8uLWiccutPcpGygyxQUVckXBtK7CtLnXvuLhbLB
	 iqsVNqAkJXPjPtrZg7FT9aMT5AJRFtraAZGPWj+OuhVu6B+rDknDAKvxXAXjttMt65
	 zwN10ULdaxKsvHyfw+i6g8yhuaqjyHYNUD/Jr67Tp1L7pcf1fE4fPVcMH3bODi92JE
	 eDo1LdNf9G8w5Pl/syRwZJw2VvMdrwggU2w18rAOUwncrOoxgHCvmo9X5GogXv+UAZ
	 /aaysQGI0ki9F/HRQFZzboJ6nBR5aVNiZQhoNJ7lIGueS8pdzOkJtRBMOJo/LuINUJ
	 kYc79wkshRhjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7FDC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306775362.5106.2748882059018574941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7ed28be1cef2a347585a89069b2c608ffae4de735590f633b5df75d9c10ba6
Date: Wed, 07 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723067753
