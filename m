Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E70F32E68D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777504654; cv=none; b=pu9mCO8oe2+Co+z5bNvfi9AaVhG+V+rQFiQX6oUhMAo0y2f8TPhVKSiWmulE8wJh7vXptr1zW6GcPxSKvpHwRyxxFIOKWqg+UtsFl5fR7ja+Qt+lvzJqNFSnInUil6ItMi2+CM1SSA+QyelsvI0SBsr6Qa9hZOlLL9LsSeCJBDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777504654; c=relaxed/simple;
	bh=29OVsb47uT5YMb9J4Uy60PgvEeafN9cB3opvNhyZXQc=;
	h=To:Subject:From:Message-Id:Date; b=jgKnYNlk58iHAi3wjHSqo4VGIDe/2E/zgo8qMZ/gmlYvZOhhixRnAiIe9dl3b4fP5jC3F0R3VbaHkb5mYSA3HGlCOEsetxCb6NI+hgXUkxclO9rpcbWyYNoZdFHT8a+4RQh1PwHdFkFGiQjfXrxHfMqlQG8E41MB2tKv0SVgUEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMoq18vJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMoq18vJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3F1C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777504653;
	bh=29OVsb47uT5YMb9J4Uy60PgvEeafN9cB3opvNhyZXQc=;
	h=To:Subject:From:Date:From;
	b=VMoq18vJ/f8CPtAv7gH9lxe924PPEj2noJ73jHhPy/5U4gc4S2vXirHe1pt1NfQcC
	 T66hYKXDO9PBFDyL5XyHbtecJuHHKqD9dy/oG3e9wALzkLfarkxEFzn5qxKeoIwG/Z
	 4o1SdaTBD5KQJc8/0U7T5F0uWRB84/taACT1HpZGKyvbMD1M6LlrPVDhOozYUxCraA
	 Rs7Yncjw10boEon1gNwt8WIwMxnCPv2ZVgfN1OFOEzNOOrtSgrMiQNHWEpgUT3Vv/y
	 tao8eS+nzrsRewccEM4Rp0JPAas4AILX8HNLotLv2Kiy1GkNfGPJASMApJdBAAXkA+
	 Gs8go77iRBfuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA38FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750465368.17692.5124238067671282488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8242c689f3b386120f150762f0d4cf69e9ca0dc5f450cf33b211980658aebbe
Date: Wed, 29 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777504653
