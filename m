Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB53534A791
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789710034; cv=none; b=oNhxDvjdJoePDZbddDPr81GqIhByEarM0A4wmvsxLtSq2iT9GAOi4oGrexZ0pcIa7o3tJuVGqi4fzdKqtJ4kKkU9RUyOPvqw/g/U+NJgqddftRtM3tCOqyYSStWTwh1UI/wf9SN8wkDrdqmki+1Ksq/DYnzITaO5iibq/LXPUeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789710034; c=relaxed/simple;
	bh=xZxdMDLPqbxqiK2Q9EdIVvgSQZw8ISYwVW2jNR+XKwc=;
	h=To:Subject:From:Message-Id:Date; b=g+sCxeWHhx8+AR/nBcsd+jxqLnRX3TjUcCv/xGDsXkgJrzj3tZhvSyYYfgeHQqHMN8ZfdwE4HAXV/o2kxBVgj/EIUiqK/UHOuoF9pNUpHGJFICi1rnpg8YgMJL665gSlrh14T1URpXNPiZGMvtc2Uvhd0hDk+iinoJY9B7cb8G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehqgqnqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehqgqnqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6B2C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789710033;
	bh=xZxdMDLPqbxqiK2Q9EdIVvgSQZw8ISYwVW2jNR+XKwc=;
	h=To:Subject:From:Date:From;
	b=ehqgqnqVduGnIdqCy5aBDBh+Y4fC2gFhRBWm6+6KPYMTRq7tLogSL7BTNLo7dmmfs
	 ogCs2706Ao2MfIO1HLyxTlKUJ8qzYFzSjBHnppnP9UT7uvAYvNGYZ1d6NoPYe844WL
	 rjmZvGOGSUFsoi8OQYuIH4Ao9LTClux4d+JvKdh9zkS9djBYYgYPcAAyYR78C2/FkY
	 0g61WGciBa7OtBWfyqmRPLi2IuuvA3fD3AzWJ+sD7LgDy0zehgmftMFqZp7+YpawUe
	 Fu9rNZqbr/93BfjBm4awAGSyOeEHwa6P+6WgOr5yogTJIRs2D6kET9/lXyFp/V9Vt7
	 2ByRx1LuLpB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D3FC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971003368.18735.836827385132787292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d54aaf3e12ef29433db6acad6875e7a4824ebcf90f62fbccee05f41f2fd73e7
Date: Fri, 18 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789710033
