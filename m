Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3697715D1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750243794; cv=none; b=prf8BSkY5rQ3NiiHeHOYyTUCYnljGT4MsHB4vT5NMUcnJd0JkCWF5v7yWh/5cLZxn6PqtxjuX8nkIcTen80MMsbuhDCnp0KeDv5Bm7tx+F1nbfMNHm/4AMUFU6rXhVDRcpQiTVrgR5NOzO5ml5Ror0Z3sLgBWJL0MrnlCHaJ7mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750243794; c=relaxed/simple;
	bh=AfvKfuKidpKm2fUN2Wtp0JRYqPgFa0IemdzihR+j/tA=;
	h=To:Subject:From:Message-Id:Date; b=qJ855aLNhRAzWj+LYJba0uebCUeDPIIh8Di4iz6VJ+tlNRlS21SyF+Rd6A4KqhCAzYFwDFg8BcmdB+BTCwWJiqeIOG0ZHdsoXct/kLlemASmULw8h6Aa4nzHchbjUkZQt004dMrEIq6dcIx7Bqz/fvn+VLdQtSBFVRMg0suD1cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fqh88r0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fqh88r0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750243793;
	bh=AfvKfuKidpKm2fUN2Wtp0JRYqPgFa0IemdzihR+j/tA=;
	h=To:Subject:From:Date:From;
	b=Fqh88r0avk1JF4Sdp0hK/w/+y+FeCLUq45EQa9dEKuSOfRjjtoyL5nZbnCpqYpiXo
	 gt8LyPS1qMWq8z+p2Ta3fK1txcjQ5d84RWPcY98spjymVb2sz4kAq9xyu3+bHAP7aK
	 4p3Bji0LszNhnlqO/myu7HOcoJKDoN0PWlFJemNHuPEUz0MH6QZkoFUliGtYcQcIwM
	 D6dvwIycGTN7XiiXA1wB5Mr+vjr1aP2U87Y0JvLkwi2SGcIhakbRIGFG+p8DnX9BQv
	 Ha8xzvFIaWts/f8Psa+svdoh3fzrE/zM9fFgC4oreZqal0fQoJ7HZpVPmLwZKmRtWx
	 HkBWsLGMb5Huw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90149C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024379358.8697.3555728790789140701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41c34c8f4487e18fbabc96fbf359cb12c8ff8042cf79a89b074385c9a891b21
Date: Wed, 18 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750243793
