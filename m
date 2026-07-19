Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B881F938
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784449714; cv=none; b=TTnHZuRlkgFjBka7TnaLHdp9jLEg0rKGKm1GhtJm5rZTSo4OE1taVx2Bxm7qNEd30LWDD06t+C68CaPdHG2A+8pyUe/0ijTV9mfgwRuf6GMZxiLjgO5s+A0FVSTiTClyh0Fyyth8K4W0W6Cb+ykx04FQ0NIq9rJ/T4khdRfTy28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784449714; c=relaxed/simple;
	bh=gkjgpwXo8M5aADiL0G/0Cl8H0Q8AE917DNVyUWZmPiA=;
	h=To:Subject:From:Message-Id:Date; b=PASYORCi6pojFQA6XfQDPkn0V/3OeC8LHZu+/2uxVQ8j7jEiH6qkwACGE+WOmomQ95OA81r+yvZSJku/YVtkiCzQek05i/RLBNzPX9JmJbPKw1RyZ7AXvy8R/XVPGQKk526rCmndcxY06WioUyfqkfh/aBPH9XtjL9zpDFzitnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApiKaU1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApiKaU1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA709C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784449713;
	bh=gkjgpwXo8M5aADiL0G/0Cl8H0Q8AE917DNVyUWZmPiA=;
	h=To:Subject:From:Date:From;
	b=ApiKaU1vMUILheCvDSuue7aKMnTfb9496u/FCm+n1WLbE0KhV/2cmQjwFZIFpWzVj
	 NkXBd6Mqf2lAxnrIEzpYPAQaUxXjgcydYEJ8hj8DyVlaY51VEnbFTO3oog+U1vCfJU
	 xzgJJfRimfzUlL54hdelhkHBjpdU8jaz5agdU8EQWa4189GYenMW/EnF/oaGPhq2bj
	 Ai9QOLOmems/qOCb8IQkCFH6m4s1lp7TG9lJQDuecto+JyFHpZU5PTq9GUhVHAlHx8
	 e/Sez07AliGIBsycwFgNs8/VNtiL3PXle5GKvsMBJ3Xj0WtcGZTq57ol1W19gw86tC
	 l1x8whPh8iWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88FAC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444971368.18649.16770212826572966155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d833c3626bbc59f1716714da39e1c1ef467723950d4313448dd11c613fc6b674
Date: Sun, 19 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784449713
