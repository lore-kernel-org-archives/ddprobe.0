Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFE837DAD5
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780693474; cv=none; b=sZMXM/pZc/pk1e3QKXk5LA86l365uBMK1nBsjJcic33Vlk6nuyEN7owkpI1WtMRUKCdEgAddF4CkdXGFiupo+bkbIyfbP4R98Xi0lOm/0NICcIg5vxy2E9PeM74JioIVxFU3H5O8t1+T0vAq2HHW+9EP/XBYgbjRmNn5sPdCMA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780693474; c=relaxed/simple;
	bh=ZVBb/KGZUkfv3eJHCwwE5TsWMI6WaW7gmgAsE5BV3ZE=;
	h=To:Subject:From:Message-Id:Date; b=fCjrEgVq8EB6R1ccOm40nwdF/v8MZ9IqZIGItPWROjHZ0tvF2m5V4AuaNm4YFF3I/M1vA+K15Lwg1OuvdvDzPaKUuTX7LktD5SlSlySDYw6WT0jFAOOsuhEYhyOaYbcH0YOT9nhjj8h43bp0opRsf9kLmg+c0EtjBEYy6CPGau8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNyvFy83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNyvFy83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9664C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780693473;
	bh=ZVBb/KGZUkfv3eJHCwwE5TsWMI6WaW7gmgAsE5BV3ZE=;
	h=To:Subject:From:Date:From;
	b=lNyvFy83PSlgp3HaqBKI0A02q5owvKAByAX/8a9uE9E0JLE5Dxevz+QARigKvq+Va
	 zEyQ1r0GJOZEJCns59r29gnvI3tDrO1EiJe90jhuDBlrXR426v/HmxUnmtmhBR+dfJ
	 k1PEMqUVUtoF5JEJiZ0AzJeuzzsW6iboIRCcdLrgZsdSi9hJ27hhU5dH9/KZKeGmLl
	 rxVuBeKM02+jGEOC5Gnnpc/Jr00zxMthHWDzME7Y3NB/E4hxRoW7tUqSq2PG5sWUam
	 OdvE/VM5E/8adc9wCJIYMiNOUq7fZMS7BlBfYKMgIC24tngX7qsdqi0zYH5gCL0bHr
	 3PO8Rg3EGgv2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B726BCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069347371.17131.15712848431937667290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d744bc4ba8debedaa522b581ebc1283387cf9bff8bed66c7abb95c543be86b3f
Date: Fri, 05 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780693473
