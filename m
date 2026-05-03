Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259E939B484
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777844854; cv=none; b=psJV6YE2f0WEpjZ4id3AimpRbCgYVBT63mGYWq8Rw7R2Dr/VOFWno268/2p6UgKhP7/Ssw8ifetuQu2c+IRkaYV1+koAM1uDVA6SNLQL6KL417qC4VFv45bzG6Gz62zBmMcAANhsw+YLyqJ937rYBdJv8eYanntS13bsp4Wb2Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777844854; c=relaxed/simple;
	bh=faLB4N4AeYTq7dczady+ZWWlS2NtlTqMjjpCdxhBdT4=;
	h=To:Subject:From:Message-Id:Date; b=Mve/NS4K0CPJcOvuVjUVE6yDAJXx9SPxa9M9hAbFvOY/HiEJgK7MR3n4mCLmr0j+VOT3KpyW0IOTy6zPXH/ag3/RrHgYSYErE17ZtfIKo+JCaLky0Y0f+KSw094Af5irF/YXWMzo2qLccv9BtaY8UCdJzpxwqHAslZv88B810I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k89QfdWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k89QfdWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04A5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777844853;
	bh=faLB4N4AeYTq7dczady+ZWWlS2NtlTqMjjpCdxhBdT4=;
	h=To:Subject:From:Date:From;
	b=k89QfdWvfoOIJSGQv2w/vqavE7s3S2jwJQtJvb/eeErC0aVbGTmcKlMuRqsGHZb8w
	 Ru2X8MM+2cUU+DGx+hwqz+X6lWR5721HFDdpHX9OfVOscstdg6er5iIc4c68++n9CK
	 CnK3mGzJNhEAyfeycphbnKwNgUKdvoXFMDkyk4idRlhrU7btl7fvcCFcJKFNFhYYgT
	 nfU27Rg81lyrYKBSSuX5ER3/x6anxOp1T58ALBClFWfONQw8A7Pov0vkyWiFQFiHPu
	 cKBpgUy5OQQ1k0rhpumKUl2LWu561orh+fjMdCZjHIb10Il7PMWerJ/dvDVaN/hogq
	 5BpIelubcKgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1C8CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784485368.29836.15681743299366945153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b91e7e2a2b7132feb00c9957e12958f4d0798037a20eecfe683939edf5c428f
Date: Sun, 03 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777844853
