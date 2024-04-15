Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9B336B
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713140363; cv=none; b=VrJibGFh2ut/KE+Da8YxV6c8t6dZBbVC7NVyQrN6YNmLF5xH0fte29/+5UbilvKEBXPFFO1SDibz72aEYu4hlQ5tifHtxT4FGdzvs0y4rY53hX0wcRz/pqy04K9VSN5iCEQbaAt+BjeRsiMaiySPVy8h5uSMbYppVS88pTlLQ4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713140363; c=relaxed/simple;
	bh=KVNp9kjSufa9dtbyMu93GiDuvGX8qFZpkS5dw5/dbuU=;
	h=To:Subject:From:Message-Id:Date; b=glCw/D0nwCGcjthYLd4wJqWiyThOlqcDzQNbkJkyTXyISvlN6mtmCxS4EpSjwxWNH5+KqnzTTV4Wt2GV9JJ4K/ja4Z+h6HknH3FBR+Kbl5k0wUllZxaXAnT4YnO4NptITbgZ4aj5Lyvn8+N2jPgyp9Wi8JNlEPMgW4iJ09jPpuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHO3efPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHO3efPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D664AC072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713140362;
	bh=KVNp9kjSufa9dtbyMu93GiDuvGX8qFZpkS5dw5/dbuU=;
	h=To:Subject:From:Date:From;
	b=ZHO3efPiBL+Dr3EOuZbSoTa1B0v6SG5D0aBJCyMGhK+78raP6hUVM8dqB0AyRmyR0
	 IUi1OEj/0fpTXe5cm+60NS2o4port/FHYgMUrJTIbweEtsFmvwca1u2Z/CpNtJXqNK
	 Zf9wXX0yv6caXZbl+i4rdf99SKBaBKd1WXKchD64QXUVVJ+dtxLLZzy2PLu5qI4gcU
	 cHNZLR8wA680OW0B6DH4G2zNZ6E3jvTiMTf0feJNlbYJH7din2kCPE4hP3HMFGhWxI
	 f45syxsHm/B5n2Fmip0hRC2ZteS4CIMkTQ8CMrc9hiMeTDHQXX9J3yG14IZS1oHipi
	 n4lZolfnqZiAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EA3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 00:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314036276.18958.7737283079080270302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f6613a32d7add51ceb0eb5527dad90981f808e5c589c90d1babe141408fc3f
Date: Mon, 15 Apr 2024 00:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713140362
