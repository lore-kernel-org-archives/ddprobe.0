Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E95D22C6C2
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733535954; cv=none; b=oZgO9ovY3NkStI6VJv/it0zIuYXF9rOaitHIcieO5AjskQkzfjxXvmA1y6+VH4qNMZXIT8d/YekYSeOvYk6mOU833MVw23iXuQR0RCh/rsI84iB9G+nCTiowrx3QTVoZojVgN9AVpLmd+iWcJuePRsvqiYyzOnzh0Jdy4IvpwHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733535954; c=relaxed/simple;
	bh=Q8okCiXqrC3bwVK20W+OJJGfvBZn32zKe9p5AzjinRQ=;
	h=To:Subject:From:Message-Id:Date; b=cHLfo335GKydaTDabctEuOEdttBoHOcd0bvoxp0UlOphK/g0DFJhsAlIzF9CUDW0/yBwdQBkUTZVb4skkkc66l8KqUL36snl4/TBJ858YByDJ9GI8/oY7/ArGg/zfxq9knUxIWgJ8nO34P/obT5bCtimyVZwXTIBnZb5smeLhTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4/+nBEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4/+nBEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA2DC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733535953;
	bh=Q8okCiXqrC3bwVK20W+OJJGfvBZn32zKe9p5AzjinRQ=;
	h=To:Subject:From:Date:From;
	b=H4/+nBEA3OCBh9gjmnryuhB4u1VMQdKHqr0shYh0PkDOAf4TMc/JT4yjJ5upAot1D
	 GcA8+YJj1WBo5PU2vTjCm3MrQJmXziPaem4S0ixVFsP97vsn82h/TvRhQ0gnoLLzCe
	 n1hnNhTdk3ck07Qa5yINLKUnDOx3bo1Kp0sAsCjbg7LTSqW0zdJLjO/vLJVUSGwz7V
	 hjUsX4r/5JBKAUXxTCJY7cPvo7VsNBhOrNKy4Hu8gYM/SwhPdgXkx905mExBe0MqDw
	 6luDdnx6e4bimqYpfpj3DHkzWNGUjWByo2sat8mL3dT0ub+ktRVeYMsPXOyl8hcCG4
	 Vog0RzCOydFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99304E77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353595361.13298.9243438478038081055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b89538ed1bc7a4e9811c6ccf36064879f9195cef21d35e5a0fe1c681f700fe2
Date: Sat, 07 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733535953
