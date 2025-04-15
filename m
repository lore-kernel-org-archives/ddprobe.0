Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D9217A2F8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744736394; cv=none; b=YyL74v5gkPlwtzIziU7FtgMPyJqEBQhM3+/yY0S+5VPpu6sluJ0Zf5tcIkkc0j6iB9FZUHT21YLsmGfC1SqzcmepKPeEJwSwacKcXHtSG9hL274BL8gUoXeBUVKO6JVwVMblzitgOaRFB9ExSp0TvDuk9i+bT91nz1FtF+gkcdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744736394; c=relaxed/simple;
	bh=ATPkYpHwGb1xYowoGwiDpcIwZfgzfC+xgjKbI6zDLdI=;
	h=To:Subject:From:Message-Id:Date; b=IQ58ra9Qj1taDgD6BL0O7mMRvMUv4KOrvBUl22T2HUhesgdnRPeoY4pmBcQf0OCUupNq0vLljFSBz2ZZrCfUwqXybWMnhTfy3G/xJQa2Vvcno8hZg1SdKtw7Y8QoEpWCClIFLDox762q9G6QmKoGJZuRm2DsJeNtWK5krwJs9VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZfXPBaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZfXPBaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4607C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744736393;
	bh=ATPkYpHwGb1xYowoGwiDpcIwZfgzfC+xgjKbI6zDLdI=;
	h=To:Subject:From:Date:From;
	b=PZfXPBaSyJ+ngL1UsZs8ZbChU1CxxCE7QlpYGUjVTtoV7vENXRbUcpf2+UYPo6iB2
	 dUSxZONYWG3uMkLZPlneAqHNGy8I3QtFBojibuCtVMA3TJuwL8uX+oSeO3u+Mf1CnJ
	 VCHoJ8w/QFKH4LHeXkuRyGW9Jil8uRrIEzK7upqisA56O+4ZJoZPC+rkl3p494REA4
	 6FggGjmgZLEV5+3iGuFMlzVLNo2iyGwcdUAzunxf8IUB66p6n1GMZ271/vPgdowWv5
	 83S69niwfIgK9GGRitQxCw1CjkThyHEchgeYphXjKfC//TnADZdAWvm0617b+AJ3KP
	 5bDmfwHKSSgFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99041C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473639361.8384.16139283909921635281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87440f063b05bd94d25aef47c7b57dc6310aecd15a6e84c4f75bc8cf53beae6e
Date: Tue, 15 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744736393
