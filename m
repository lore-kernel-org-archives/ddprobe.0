Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6225137F30C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792347034; cv=none; b=fWRRvq7M/Al2B2cksngBYGDvZaVwS2uUkuB5t9Un4Zg3RYEs3i4hC3Q6a4pYTJ+GUxwroDDyKgU9cP9fCQ5M8OWyBVqxG4cSno0EoTwjb6pgFoUoLmeY7uyCMf/eth6Q2L42bHjR+vN34F19Z6GqoyvRXZJIbIDhEnD1rcETzxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792347034; c=relaxed/simple;
	bh=oelI1eoMjUl+yZVVs8r9t4oukLycqrsNAYt3Qdl+VJM=;
	h=To:Subject:From:Message-Id:Date; b=qhDb3hOrqZaL+UFurSBGYLWlPaXFJl8015bFkvnFs+I9x1ZZq9p1DHsSZEx1x4BVAe6XJRZ4SHGU9jcsm536rj0cswTGABuMH6t/D0ENLJSlFECD2eIZbgtACsIkidACMxVSZcx59plLfuUps8Wbi6zGZ6ZqKGTF4yvfa7xy4j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itprbf09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itprbf09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D127DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792347033;
	bh=oelI1eoMjUl+yZVVs8r9t4oukLycqrsNAYt3Qdl+VJM=;
	h=To:Subject:From:Date:From;
	b=itprbf09jdDp7H3SlxowC/u9m6db4t4htTKR/gBhriN2vPiCxl7GKSRR25HzsdU3s
	 H8WQlV1L3rM21Qr1Tw3J6aZI9WJRGfU038Bw4hXg0IuyGNfpB4q6bf9xZl1thjaX9K
	 cIoMe5T49BrEk/gj+1LwO6MIoJGc0tZqGl0QPJnO49pO5thKk1mcoUHAYsqR1OVGMw
	 nKIiJj/ueOazY4ZOHW/cFqwm9c6+FnSMhYamYTi13L3y7s7a8wUXTxZOIk2nRwYBbF
	 RePH9bLyNxmGvaaVKh6l2NIAOqEkkVUexs4VXJIeopm3u8p/s0w0R8UnjLQvWr7xfA
	 NukNWEBb8r1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF21ACCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234703368.26989.15304678383569085754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95139d30e3d26b7d319c3cc58df146b2bb554fe9524ec37212f3b0e1282b1d2
Date: Sun, 18 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792347033
