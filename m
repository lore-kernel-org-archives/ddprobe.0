Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3754042A97
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715855543; cv=none; b=i6AhLogRTUOOejdCelHYSgm24tU1/ty9v1K+n8t3RVTrNBhg0fx1egP5EfN+daiLvnyBz7qXniy61Jrc2rgDnNHluk2573I8E9lqlcNOiHQmZCxGQZM91bR/+JpymdZ/GAWzmTPDCjjFlio9wY7WM0Y5h/Bugs6JxQCUwc+LZyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715855543; c=relaxed/simple;
	bh=DWF2ck5U8L2zm36c8t+2EYVNOemqCUpaBOV65k/LzN8=;
	h=To:Subject:From:Message-Id:Date; b=LYXfD1NMbRWvFIzUoB5GtwSTiCouI9NdWFJOi9szw9fkh1H2aQh61T0tHOAIziIWCtayBwpbk2cvwZXsHmCt4zOUmdj4P0viqC4P8eYO1bBZEWNaoJF6+9qixFzDGIwCt94fXJjdSYFMMD7t2d3I64Z8kP7ID1C//4HrY33uXsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tp6/Wftv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tp6/Wftv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D555CC32786
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715855542;
	bh=DWF2ck5U8L2zm36c8t+2EYVNOemqCUpaBOV65k/LzN8=;
	h=To:Subject:From:Date:From;
	b=Tp6/WftvSQD+jRoW5bFlYP0iPh/r3ObugEF17IpOyQ2Y9QQMjGznL5DfprWHD9FnK
	 51XFeNsjxRULQHqZfNPp8nphN4HamX96yp9gOXdVvBb4ishn+7n7VDX7NqHcyNrg69
	 sSIUMuQVOYj9kC4x24Cz3h+B3NeEx6wdjKvtotudrjRllgPtHYC+DsEriEcE1bqJwe
	 t1FSluX2uDNtSpfO6vNTxer9tIgW+emlwc6y0PWlNjepNIdBCkk6MiEz0Ahda5bbNn
	 gfqI3BuQy4kg09+BnVzI+MgjJfy5tSS5SoPk84TyXKDKBHm4/+usj+cdDkk1RdATxe
	 UBElpZr1pD1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F67C25B79
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585554277.20201.7186398527297334444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe64a0fb9a9ca23c1c05b5101fa65c08b9039f66bd6d24c56b343b0dafd9dd38
Date: Thu, 16 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715855542
