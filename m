Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C8F15853B
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749921594; cv=none; b=fgY21LuLFLElcdWd1aJLbhn4JE7BnsmlGXaosU3LG0OIMMC9jMMHncKrfacORQHLfpWopm0Y0yVP4m9lvcqDNIJvvoN0Wt1PDAt2MbUJyxj4O3qDpdVh0XiLucZCvp/vwGF6spMhtBa5SUCsx+b6B2WURjLJxVlzkRdbh+NKTe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749921594; c=relaxed/simple;
	bh=yxtb1oFUBNo5l8PZdIqIaZm1fnEOsCUK+m7YBAeMqfk=;
	h=To:Subject:From:Message-Id:Date; b=FW5xTp49SwbJzIZXp6nc/U36QYACB50hmonm9fiIvM9gB7aiGhR+98eiE6yn10WyK34dfR36Q9b2mSkyN1ssEdaT/0KZtAzqmkYBwMrR6GqqMHAH3RHvv5wB1X1k+bth7cqw+WvdiI34541nUPjLHl77gQmmCpffWc1Laim/kgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxbUfI/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxbUfI/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749921593;
	bh=yxtb1oFUBNo5l8PZdIqIaZm1fnEOsCUK+m7YBAeMqfk=;
	h=To:Subject:From:Date:From;
	b=oxbUfI/k/hBl0hQZUpTUteojDrMCSGUU5joch7npvnbZOyzCy25HF6n4s4xc8iz/3
	 5gCnvSRbRYjrVBRMeBi9XoXrXj4WyWnET9SNOT0NRwr+pvSrLNPkKCYDWS5JYdw6Is
	 08OFCPC6ctCUdrumEIUw66E/JBdGyAScpnkECxgK/Z/xuXRaui5NC/aHIfHtmV88V9
	 OIOTLEZmU6oQl2z1wcTgWQCX3M20k4QZjldmJ+4aLU5Ecj17l+2ldMC4v0qmhpL8jE
	 Wu5hJVw7PgoCH8cI4AIAWufaDUayYubKYzfcN6WgO1UHGsjshbHVXEWpiN1r72HJBy
	 YxS+rnS+x/2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F01C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992159359.3478.4437614469004186173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40bb6ad38877959c565464790b74bba273e0961d46273ced4196e8e598f9579
Date: Sat, 14 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749921593
