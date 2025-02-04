Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5399220FA81
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738679154; cv=none; b=Luwd+Gc23yuxi5utoClp4Po8DuK6rAVQF5NcZVt678wtj+8wlcBkD9OeWweJznekdukvjrU2fvJoEDmg+TDj+LVspGYwk6d2Ft05Tx45Hj0WG1+qN7B6b/0g/4Ux66JSmSiQxjwST3HgqH/rumhIAznpp2VltNF6h2cjzkoL0qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738679154; c=relaxed/simple;
	bh=WdQWUF3FEFVrotYEYwUx+tGMgeufTMHzinoiD0R35F8=;
	h=To:Subject:From:Message-Id:Date; b=kdp1pZxpnt6lJKq94Au14aYzlvIwN6Jb2LI87yTF4vKkMGgup8+gGkTWVpv72m0jG7Zs9a/3e4Ev0TLaH1uAB3Yvc/4iBb6sm7vmO6SP/3sL2ZZiFyQC2m8vLx3uv8v0ich53uwX4Uiza3ri4ctqURl8DW/S/Q+ZUNgPD31RGko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL+AkuA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL+AkuA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FB0C4CEE2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738679153;
	bh=WdQWUF3FEFVrotYEYwUx+tGMgeufTMHzinoiD0R35F8=;
	h=To:Subject:From:Date:From;
	b=CL+AkuA3EcHNyt2oeANEiLDR+90JjUrLWl6x6UlwiqEI5361ancskxTdI6lJF4t3F
	 3YcvNBShb+qHfLGSdESoxr7uVzHVcP5ZZX05RMYER4TbnEzQibXCoSlZwGn0+5i8zI
	 r+O6eBedtWqIovvkMdQvAszGC30EMwuDKyN6Seond2z7Udztw9dwZ6/qopiiwGM9yG
	 ZtHCZJWSgmAj9R3Ef5fnnZ1ZCOyiUlvv4AWwIAhyNYc6IGbixjGzg07Sd9/4jINm5q
	 V2Fa+VoO7vxLDoadkqbgoEcYmkQ944Rfnf+kx84qHC5rJBo+MD67mTFx+azzRRlmAK
	 wEqqvXpoRpJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9826DC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867915360.16521.13418340225615155681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d36374b8c1c8efeeefd5e79bd07d3984c51d8ebf121009a5caf8fe8e02dfbd
Date: Tue, 04 Feb 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738679153
