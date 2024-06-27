Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E17A14C5AE
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719512063; cv=none; b=SL3j6ZLB3kwO3R7OKpr5IiKuH8eA48ZNsDVB3V0Z9optDeG8kfe8suzzAjQObmFOm2ES3mhrm49JigX6dwKEB0Oa9+60ZJ2ma6Swe/y1NTA2rU5RQQscauJ8UleYRPej9TrW4NqLkav5vDV/khhLguDayUxsl5/IR3LwNqWjgYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719512063; c=relaxed/simple;
	bh=MKBV3YBoddJzW9VM7iOwSqwFq/etqCgJC2uzR1p+wf4=;
	h=To:Subject:From:Message-Id:Date; b=QDFVODrar4vawjFKVWzZaSneKvz4mFcirwla5foj8a1igql1nEb1/Jg2i9sjppNWeo1PN9lCRI6VuvPPBqgCkHss5qcb/Gj6PNomUlBZlhah9ZiR737NJ8EObots7cT/2FubnltblJrU4DJyqFRlkMaIZexaBgsACCeLbMfiAek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfZ8NV4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfZ8NV4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D246CC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719512062;
	bh=MKBV3YBoddJzW9VM7iOwSqwFq/etqCgJC2uzR1p+wf4=;
	h=To:Subject:From:Date:From;
	b=XfZ8NV4YzFhuEQvQ6kjnMR1JjbdhrfBGOhIoREWgA/xrFzL19uwqHpzp607/SIA8m
	 pHb8iuKSo0Ai/Tw+wDToEBz9ktEvcDWweWV5TRas7EWZyr2vs1zDhUZTB+A3xFFw4B
	 JTiMC4vSR5cd/IBOFLUH97NkFNJE/2N8xa6MNq9/TGkh5RH9K25y3h+9CXmT0OygMc
	 z5gqWSzrBNx4XmnOlbyEv0HNo9SIFoWdTARhKYadWd+X6Nfo0ag5Bt6xXKGPPozR/8
	 Zj3E29VN6+UPgpPk156zjpRuVr/SjTDqYkz+op4oa3eBQ6O04cUecj04gWi2tenKUY
	 WbXoBPjdbbcrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A99C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951206278.6733.6544771958450379088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba7e441501ecbeff2a19b01413c3bbd7e312b70ebe2d90c38ab0c8b80c1328d
Date: Thu, 27 Jun 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719512062
