Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1A32AD02
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755399594; cv=none; b=IAGo6kzPsOfeDRu5XvKxrRNOAz1ZKymjD3XSSLyuRtsNxRJ2S7Ka5KLRdtCU6cWdsHrZHfKHIQhmMS23tzimbYmWnocmnLxLgEwhsdmF3V5/Vqy++H8QiuAiupKUvOYDjgW1y00yYxY6hABBYw9WMw8WR3tUPKooyXI1rTFEYik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755399594; c=relaxed/simple;
	bh=QfKEhKlq5vha1G3VKtQ3qsKjqPIrDEZWFa+JpS7OLnc=;
	h=To:Subject:From:Message-Id:Date; b=jdBSZmp2dv5gxiF2d18kticEjolEA91KhnjZZ5/u9KmW0bTcOu0/B5+76c0OMjyqcVqCXe9YfAW814yvg73YuuzBMMoX6+oNJ7/TeiJP0kkyQY4a9jl/NTcopdyJ+NJV6qUOMppuBt2Y7p1/3/tXylVqYpJXIE36DZjE7bRPdTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+M4HNJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+M4HNJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122CC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755399593;
	bh=QfKEhKlq5vha1G3VKtQ3qsKjqPIrDEZWFa+JpS7OLnc=;
	h=To:Subject:From:Date:From;
	b=a+M4HNJdeLEVqYvMie+kw7oupwkqbpvrKsNxuAu+aptv46Vubo6xoS3MggFGqlJzr
	 sNRE85m8yzwtKUwItjYSwakwFucH7X+hbS+Mc1KxDvfn5h7doCEiZmbGXDE2gND1q0
	 cHZN+Vkmw+60dEzMpHkXaltl1L9PDsFDMZiyWuefmxSghQqSwkb6e9jfV6RqbQZnc6
	 g/KYoiHqGkeo/kI+wDIgC+s0mSXIhNcyU5hJoBJjwN2M05XKi7XZJPLb0SmJnMTtv1
	 JSaG25Stx8QmGG9Jpa0j1xklRsO6UEVwBBdgMK8jW36NUQB4IkeIv5/4G3onXDr4Kf
	 UoNXzvzJz4t3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD30CA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539959357.11567.16007058682348936329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09e8d28c9c83d9dbdf16af8cdba0e6122fd41be608e735e8c5e0934a65cc37e
Date: Sun, 17 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755399593
