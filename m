Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FE7224AEF
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755504594; cv=none; b=PmLkzudDzTBFqKoycxNuOCUvcgs9efW9NlTEb3eBThpdUgEYlkcTYnTahGbyCMGBN70q/s6ZGGx3ENsGLcPzNUiWmva0JyrGPp15MylZiwC9L3wylerguq73ug+1gjGB0T24JAnpwVBEKmKxX0ALnHkJ6K0nxMB7d39k9bbW8oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755504594; c=relaxed/simple;
	bh=tnQEg4m54BAsTO5QQwlxDXqjGh5fBWSCml4wBrdP4to=;
	h=To:Subject:From:Message-Id:Date; b=ZTZUjrQj9r1Q4G0L17dVQI3nWxAkY4IpdMrpyiXDR0DteqIagBXO+GazJZYS2sFKtP2r0DylDqKMzr05+Nr9UdUTY0FU1KkrFjIQe6/VgMBr0CJYvLXBB5cCtgtxc5AI5EZCMd3X/XyKzCLOIjuuqbc8ibzFGsXrhl2nOHqidi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsZDWTex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsZDWTex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB91AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755504593;
	bh=tnQEg4m54BAsTO5QQwlxDXqjGh5fBWSCml4wBrdP4to=;
	h=To:Subject:From:Date:From;
	b=fsZDWTexG3CDFdOpgZsiqluRS6AMUyFvuC/lJGJApMTzGOVIy1HFq5S1+Hjf7/RH2
	 n1NIrfGEOyRoeNBizg/a6shPujJMflvb+9jtjDLqSt4z0hQYNkAGQ7tVC0Y/EpHyXv
	 bawtM0w0CrdJv4t2GnqbUOAPrlzNEKnHfxt/q0LQeut5fLTDbUExo2uMvlIL2l0xfD
	 vQIY/IO+1n4ryx21EQblXD/BZTLPYaJL3gNXEBwRPnP37zcZSJdJ4s/Tq0AdOyn2e0
	 Wttgi0MfTL6YOTNZRaFczZWUir5RrVKGqoLB4W1dIu06I2xUgF+M3qKF/ApfaEi5mj
	 GMb0aRRGr+86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3CBCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550459363.1686.14405210196091911611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfb59cc4c6b9451211a9cdac11e51b9c3e3a91548bc678813f7f4d534d4fd66
Date: Mon, 18 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755504593
