Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31181368D4F
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788579034; cv=none; b=Tb4vFGN8Gtkz29PRiljbQ0tus7HaTIilxcjEM9FragBdJX1guEvX+FeZO7Adzf0RRexcDKsDVHF7cpfMyKZ8NJEQ1PnH16B8L0ACJWHWH0K5qEPixIb1wt8hiVZnTNyIH7EiewKOc9cPS0mcUp+2rl9+2JFx1/BVHikRw4sw9ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788579034; c=relaxed/simple;
	bh=sfj4A/iCMQpnpAYgpGmbR1Cml+ZgHdGXdCFqrOzPv4A=;
	h=To:Subject:From:Message-Id:Date; b=fBDt7dI7dMcS8e8WAlZSyeRHOOUT1iIl1KWEs/YZxcB4OTTaClMXMjH09kruFSz70PCKthE80BjV16DZ3Sw5g9EYBEvNjtkIlKtl8emyZPoA8oNWfTrdjfBh/GcPW2BJa1XrbLOPygyKOkhXPsOp69r3n4/lBN1ntWk9IkQi3Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQWKvfZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQWKvfZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFB9C2BCF7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788579033;
	bh=sfj4A/iCMQpnpAYgpGmbR1Cml+ZgHdGXdCFqrOzPv4A=;
	h=To:Subject:From:Date:From;
	b=UQWKvfZPG+73yNHqUKI5xMalsmTSYZaZTaN8wy3uV/9KE1g2GUH/JzsFJs2bRcC/8
	 vn3g+SrLBS2rSmEwZui6XODLe81VhC0zUh8tpuRlzHDfYmbRzvQFLU1KTSPo63CXhX
	 xgCR5XREBBBQQWXaq39m0vE4Wn0i6bZvXDhIk4/Vc5F3xQPsOtrIBRGta0g348MT0p
	 3BoMfoqN9LJ+aFpDgCGVPnp9rmChT9ysNYW4kmfELJgNa25jsJN6diiGNy9z9weYkO
	 NRu/Iw3Q9w6yz2UokBnnaSBosTmN5g7PgcYKaDXJmMHlzMhRhPF5BMRBI31isGaPbO
	 EWdULPqv6zzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C2C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857903368.20748.11757693939829061670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4fe5ee5a918f44e022a9887ccc2b3e6dc1ccfa8a175ac1ccf756998c85b5ae
Date: Sat, 05 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788579033
