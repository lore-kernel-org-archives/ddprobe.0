Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411D647607D
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788253234; cv=none; b=FHAkimG3NS6UYjZ68DpPBd3hBLH4EoExjooB3dj90TaC0QJprMAvYJEPVo/oBdRymP0c5Po8qWZxeWNwFhT6IuEGd9Th6KNF91htfWCP9yH7YuiZj1QxWYyNNuCaZjccADV+OmvUBFC/Si0UW7oYAR89R2yWcjWjd8N7J5GbrkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788253234; c=relaxed/simple;
	bh=8ur9LyGyvxHMSS2Dh1xNsOThEfcmG7WLohtll9N+rPY=;
	h=To:Subject:From:Message-Id:Date; b=F6mRyRExLALaRhmeduy3/+zzW5TEdudOnpaCsmVUsDdL32liJCwO0GqYf2boHS3Mi5bL76YwMrr6iSnYVlJ1HZJSEVVHlkRlczijQouaq1fy6wvcGR8V6RsyTHn3YA0Yz/ZKPVXFc0/tkxm+VCDuRrR6Nex5q7NUi14TOTOwWr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaYTLmpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaYTLmpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2D9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788253233;
	bh=8ur9LyGyvxHMSS2Dh1xNsOThEfcmG7WLohtll9N+rPY=;
	h=To:Subject:From:Date:From;
	b=gaYTLmpKr2q9Iz1Lj1+5N7zuO4vEpAdzoeou2mCx3aXufJ24+u741Yh0y8qRfI89i
	 0+DxVab7+WEeOaVr9vDDKILqP9uXYJxDhwEqi4zADDp4mgHLQWrYAVG0y4pkm9Hecn
	 511fnr46NRPruLBj4i3M7nV5D1x5l5REoskQHj1i/bOhM5AqjXsc9FhpYimOHsG6qD
	 fFSTS44fRVQbTzZmkBG93bGZ6TRX3Qq92DkgbGW1t65OqT9OmuE2vc2XmsUd9P/bLC
	 OF/KA4rMibCSEfwPpKyDy5IXemGrm+kyvZfhAk+NW6K0wR9PsTLDg5Xo/Cz4IzNIY2
	 cKlAOQCWhXDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB27CC624C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825323369.10043.7736246859477594679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b69d959fdddae863fa760b2fbee09deb01c87e2eba758553df653b43492975
Date: Tue, 01 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788253233
