Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B5A4D8CE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781790394; cv=none; b=Vd7wbJxaW+b/Rl8txUTaapqVyyL7oS1xAOPKWAoQYyXJRpu0zZzboFn1EH+lBBjtdgNIa6JwECgHOnGdbGIJX/SeHBxmo7OMZbA19kfF6xdxscxATdbRhDb6n4PGCqGwNijjxZ7Rot10QKt2jgEv40E5WRnwSf/447ObXn2bPFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781790394; c=relaxed/simple;
	bh=C2XBN2CaGl6MMGN2kzrSLdflJbgBc3QBpJHP4AcQIPE=;
	h=To:Subject:From:Message-Id:Date; b=tuCPZpmGbWvCaA0m4SEmmgPduN7/nd2FN95Rq0vyUB8Bf+f3yu27v5JKmtBBK2yYV2NLuXyYOkHzIT4pAFgnBqsJQA8iPOz2tTXqD5r5hGtunQdAnAR8T1ToHNl5zgP0Fm2OcfIV5du0gtrw543ZR4NNxI7bueNaiCIfcy6tsk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICScDekd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICScDekd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C05C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781790393;
	bh=C2XBN2CaGl6MMGN2kzrSLdflJbgBc3QBpJHP4AcQIPE=;
	h=To:Subject:From:Date:From;
	b=ICScDekdUguaWjBRx3DVlWlSrFHuXfzxQbAWOM4KydgI/nos6q0YIt9ks7CatLYm2
	 b4TLY67EeVoyPOG/2gkpK2AOFQayGG2unKs28e7fD3Cneak0FZjgkroAQNSxjFapkv
	 /zI7VOOFtJsKXuLBFwplDz5jjTzoxQ+aBVlDrIEh2KpPMuSfpsdfg0uPvl3OLGxyFa
	 6XKzUDmcT+LIjE3rWKHVFSM4RXD8R/Bx89VQ/TvvAIA5c1QjtxgIX+pqruJTgV7v4u
	 acB5qOuyaUkOmPtHusDNt30KptMJNiNppAVO3XLz+1XyS4X8cdjgfcASxjTuabXFCR
	 MIbPmgBTmnUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5BCCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179039369.27602.18435071472453635579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cb4cdf606e3e991486ebf8aaf8fc720627fe479ba1dec380327983e2c30594
Date: Thu, 18 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781790393
