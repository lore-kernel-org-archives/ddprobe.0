Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515CE30C159
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791280834; cv=none; b=mblJ9Nx5/NzRpVS/u7PXfuXdDc4JBq+yoQxS1iDBUqXBxaY/ff6/w/rk2zg8jWkOGJlpC2nIvrnfutuTVuTlA1tEDaSIKBF/1Jn01GEawAlb3P0DMVPmoeDowIDWICL7Ts/m8DRwTbWoEtb+MoN74akDvDdvt3KVLT55QyBmhNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791280834; c=relaxed/simple;
	bh=S+kTWuKN8iWgMLRxnWsq6mZ8f1Jr5p0QG7baDLY9Muo=;
	h=To:Subject:From:Message-Id:Date; b=UT1DsqzoqyT9yTQTu9tQabgb3kW+jW4sYHkub4sDaVVTmDHZwlUjxOglfJP53FXqXMuYwfdhVNu+BxjOFL35PRE1Ch4CNy1ay3i/g6pD7Dtkp8C66kA7eRepDFGjQE6N+Wf9jfDW+r9KIPN88pkoI9oxsbmVNxOtnNBpaBnNPQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzp5Zs5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzp5Zs5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32B5C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791280833;
	bh=S+kTWuKN8iWgMLRxnWsq6mZ8f1Jr5p0QG7baDLY9Muo=;
	h=To:Subject:From:Date:From;
	b=Rzp5Zs5mmD2Elx6GpOVkJEP129E/5JPLjxkN4NuqDb3M0mFXyAoJk8ciQ7I/1aX7v
	 ydJNpkPERBu/PTCWC76nkH7ajGpoH1P1ScRDOwkPL69R/yAOUaXon1J+A5Vc/3SdQ+
	 TSNFdR+NmrDnEEGDpmKxUf+wJQeXP5kQs84KriCp8Amky7A2ld63MTtZ7KVT6A3U4U
	 aBKVeUvSQW/ZF8yBL6THjE/WFjtfrND2ksf+fFk2dm8izvYX+cmIAYnVTmrXVTklOn
	 PvyUJGycdz46N/wQx9/lr7nV3cUWMHS8gSAL4zQv3gxVl9uV3k+vEsBrbFT+g0MS9I
	 LLoPkUDTNBEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12DCA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128083370.7809.4270601250887244065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a290834f9508a37a78b564b7d8d43d259eadf5484692dcad21392fdc4a6746
Date: Tue, 06 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791280833
