Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9C71FB5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722117954; cv=none; b=cFo3wp45VFXqRiY60X98xtXY2Ltp/gckIKfoEEzspkxW762LYr1qPVMXmg6ZNnE2qzNk1DtiX/Ap+jC63YC4TqSTPaCf2VM0py30Newk6zaZFyTRhxgO5468gyRcIajDzUeiKkkqUHCwq+cqw0GV+pmoJWjv5KKz4Lf9eqx7wKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722117954; c=relaxed/simple;
	bh=Y28nRute8enKOvWKxNHDJbVd/E5f0alvdWQaU0g1PTw=;
	h=To:Subject:From:Message-Id:Date; b=oz5WkuHjfFz4FndnOblJgUxb/A+ghztwI4vsozHtMnftjZrg3YlHSw8OBJLXSONpfeXwbyhwbSw/CrA1uujjJunsGu1/6qKqqaQzRB9U2bV2tcQOdYpd59IevhnOetqjFTNVu988UHj05Qag2/qB0ClhaAnGHyytJj6Y3bxh38c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQHRM6Ev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQHRM6Ev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE655C4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722117953;
	bh=Y28nRute8enKOvWKxNHDJbVd/E5f0alvdWQaU0g1PTw=;
	h=To:Subject:From:Date:From;
	b=kQHRM6EvAr7YTTFTgckOxCabMmUcfhUNV9GsRuMIh9Gdg8mSp0a876mhx1l7I4QZ8
	 VA/r4gLg2mRot9WFhR9DNpzUQvtEZ4qgRnb8MnBTx+OWGEV0u711he3T0ZL9lu3MWy
	 ewVOB4E9Ci7me6GfIWiNXfVDW+BklR+vpL60dxsZjwJgKO/tdO5HIx/HWXeDwh31Ts
	 CKp2u10iWoOBoIYKLOHQYnN5obt6/NqERsIWmLbNLZcvi50jxLrSzMuIFH1uohSCzK
	 s82vhv48/4EN5QJRzvfBokP+d2eBt66hu+Q8M7t6iKQsRfCYFrfT/oKQ6l49VKBc+X
	 cCSlSzXuy6vGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95193C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211795358.424.5148021408755839694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca8fbab6deb57c3869d291c887bf1d212a69377df985479bb54e81cded355c9
Date: Sat, 27 Jul 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722117953
