Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401A9349AE5
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766511234; cv=none; b=INkn+Ber09xB7ke1QhhqhwYnVftkUsTPrpLyHcTDHsApFz7XyDsZw/ch8Gkpm8lLTggiSS7hQJu5zib/Uz3OdaA5ar7Omu84keUys6pI4eOAiEfA7TNz9tzRALb4mStWGP5wEFTPLTAHOZ5gcIAdY1tAhPLejKxv19OcvhKgX/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766511234; c=relaxed/simple;
	bh=Qu/TB1j12ffWiO90LpEDwXM5HeTFzfKxA1jIeRhZvZ0=;
	h=To:Subject:From:Message-Id:Date; b=sNTM7ajHaKs1r6ciIYy9ok+7W5mLGx1VBu5yqjUgs3AvagsSjENJWh7lv1pfUDfEczl54EpfUMLxXijCkaaJ0dNz1kU5d2TYGUvWh3ayyuI+Tj4PDKVXkumbZY9SQFhFQX68q0BQ5tzFrRxAu+Z92tcgRyaJu0xf+d8WqSVHD5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubWnNbA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubWnNbA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CBC19422
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511233;
	bh=Qu/TB1j12ffWiO90LpEDwXM5HeTFzfKxA1jIeRhZvZ0=;
	h=To:Subject:From:Date:From;
	b=ubWnNbA6ObWmUBh2FGH402l0O3rm9Xw19OAICBxlLVxm4j33LF60v0gMyviwT0ppE
	 vjKuSPgw1kRVLFBI9TWzDgPy9gVATVPqSzjjQJ4IsEzln32Nzn7NlfHMKnVYhS5xgG
	 B1B+hm09Q1ZfAIIysdQaZk6LwcL50OAjgRY/ZLESjaz3vHszi643hi5utLV81TiZo5
	 J8ZI4gVBbKwM7VFSclA/gQ2j9puczL1mtXhh18+F0todemUekSf1tjvu6XCl28RiSu
	 UZ2lwZwDxiAmLmV6SIqcfLifsohgRXIfo/PGJ/+O/lhFzxovpAvIDoadi32MJwWJ8F
	 U4jStbki5aXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE9E6F086
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651123358.2912.12311908076820921811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44cacacc9ef85965a9687ad123259f538ebda89c94bc2523bbc153a1ad6ba4e
Date: Tue, 23 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766511233
