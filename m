Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545A8372ED5
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776843454; cv=none; b=boICr4UlHjy61WSZ2t0XI2BFipLYGDXcDBy7/jvRNDE7ZOhsH9RJJJ501unuhj9NeAnxPMGqZwWJ/wuYIi+KVsgztcCQ3fgj3dAHuFyWenkLwkcZswAbcLU7ok5jF216yHpqCc+A0FxYsdIqc8yfeQnF1fcedy2lG8hhC2kh7NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776843454; c=relaxed/simple;
	bh=3f5rLXmudkYzqyCk1QJZNcAaORKtQjtWLysDpm2WbA0=;
	h=To:Subject:From:Message-Id:Date; b=UUO/YtLwAwBQvjPRo0gAJRys7a7NdI84Q2rev6Ya4fziGij0hRT9vTaZSdbu9dVP7igJH0Q23K6inBUF9ROTgFXF58QBT2UfOBwqIJYo+Lr+KpY75+Jm3kqn3vbuuMXSVELAWEa0/3dg5gXSaAGBc4xjokbTJOrrc0xJNV8pbvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buddBtxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buddBtxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9D8C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776843453;
	bh=3f5rLXmudkYzqyCk1QJZNcAaORKtQjtWLysDpm2WbA0=;
	h=To:Subject:From:Date:From;
	b=buddBtxo5v8PB/y0hKRtzU8LD557PqHyalhOshowPlva8csdM8W1N3DBSQ3ZIlsjW
	 EdWN+57xgty0gXb5KIIg7iKp+6iQ8K/uVvD+JeQm+q4XO989lzBJaUT476bQvgCAB4
	 gZwoCJ7hTMOCXk0g+zUSfRu8jmzWcHMd4MeMdXjpE0/ZyHkyxJiNjsMPB9sYMrjtU5
	 xH/vFMO+Ty3Sjr55UwAFszHJcbqSNARVezik9zRdDVisMgTuIqYfsjh0LY83K6tJEi
	 Usb299BoOAKnD6Lo5GOHMmrNCjiJm6KgDmazrd3w1MJNFHOs/BvFGC/bYLq/AokeVI
	 R8GgW5XwUgRaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C6CF94CDB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684345368.14015.12354596264880031351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a615e3a2559bd24ef1c92b652d8ee9f594e9371c599979ff9b8faea80ef5ef8
Date: Wed, 22 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776843453
