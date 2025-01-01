Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226BC184E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735740354; cv=none; b=G3qvINiPGrvSasPpqZ4ujmtykX2VdrY4DCrN5JE7uI91fYB4/fk/icbeHAKilMmXzXy+6jqlr+RHirVah9/zRljB46PbdNlWxwRRB0XkDdX57ATBAXV99GBqPddsaTDK9i81JQ+EL1czJfpqvUSc+djFnGM6motv9UCcBebRnW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735740354; c=relaxed/simple;
	bh=9EpM/1cwByA3ihoaOTI/e4xTdzmZuzmDOY996PuCKsE=;
	h=To:Subject:From:Message-Id:Date; b=L6y9bt5z+6eLXFLk4e38xLESYVFjg9jPyWnj0Yb6P26C1u4XVQ65wvtlrVH9JBpeoZUXOVv70ZHbHCqvxsAERHWfhJXnQCbTXhntRtHd+9Rrezcz9EOwLEVtNXRUtrCLwqBvUb5Qg9IM9ejZdT5A3JpGr8PAG7CdhmYNxEwYRvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6xbeFZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6xbeFZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9632C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735740353;
	bh=9EpM/1cwByA3ihoaOTI/e4xTdzmZuzmDOY996PuCKsE=;
	h=To:Subject:From:Date:From;
	b=A6xbeFZsB1SitOf25sPsol57Ak5dAYXcAUvwHsPOIr9tuF4vEjp2kzoLm7QVHYvx9
	 S0KiX+k53yZhyNQQqc0cspQhbawSgkAEwJf1fIOM+VYNVOEmciZ3LEvPZEdcxJU3yq
	 szsX00U21QJ/6bhcbyOL+XXYeyezxyAVKY16Wp7lqKtWa/dYfxBRv9NZm5IEfv5Ibn
	 727T+ld2oAJqKll2Iq8KuA2h7qm8IqLp3ZALkVnj2fZO87yBgPMwfzefLHiNimzZ1Y
	 nEznlAbreLyIn1PZ35NzMm5IigYuVQ0yc1SRAvRpA/QrK8XBSEtj0myCBaq50fFSfb
	 RvFlGijr2BTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E6FE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574035358.2594.14167800483656414376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24043e306d8eba16c0714ef3ede8deeda19df3949be34916efc1b592c8753867
Date: Wed, 01 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735740353
