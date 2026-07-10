Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB92433BAB
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783699114; cv=none; b=RLjHiKpPx3IkHNvMDQftedfZNW2R/A7k9ypxoq0+RtcbQsZm59uJUbVYTSBJK090o+rv9xXTueEKFuDf2A1Qtfvv9p94NT4V/zr7pvN0EKyMkhF2W8CLIVNwuyWtSgdVWkSfufOseicSwiidMu/BRU1gaMc5HYLXMB2Gcv34Erg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783699114; c=relaxed/simple;
	bh=eaSIdP0/9lvYyGoEKTC+QG7ILcNAPALRHWq5s2J8x0A=;
	h=To:Subject:From:Message-Id:Date; b=elSEXq8zgfX5TXyywzqkscRVntoX52JFFoxaT0z2dBS04a0LaaBptXunkxy47+Ao4ddSNUH7tI24JC0UE2Cf7f5/KAdEe3MmvQ4KC0UbOL60jv27OR0QPOww/EJZ4VXCW9KZqiVcLXqY2LyHJBZQjzNR58/9QyzMT2LMy82yXlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZjEJLZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZjEJLZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF80C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783699113;
	bh=eaSIdP0/9lvYyGoEKTC+QG7ILcNAPALRHWq5s2J8x0A=;
	h=To:Subject:From:Date:From;
	b=AZjEJLZ2iwMoM/xFHbg05iUpQtXpElZhNxyoqF4mUm71zSWwujvMbK0oG/HkiKK3q
	 AumeYe1xiGqUCFZSb5OU747OQ7ELGHaRD3gbawa0EzlV9+64nxUSw0AwEbSZj8xTi+
	 jKosbHREwQ41P6Rryx4H+3N2jaTu8y+oZs3NTcI7OqhT3tuUPh+jl8S62SjGZgdt1V
	 aWdaX3L9FHOsP06TrCw+vjYULthTtFDkzzox6Idw1rynxmpiFom87W0deqbG6RZADc
	 zzvCPmqVBfPQxOcf8OegO9fSkgvMqCnW3ciMxWMFh8Rf6cMOE2YtvZx1br4eTbTiAH
	 Ue6GbtT75jWnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A860FC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369911368.24016.8388281113079280157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630e0ecf38a931e70d93e5c1ed9e2f0bc8222afbe97674af384155ad2eb0f789
Date: Fri, 10 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783699113
