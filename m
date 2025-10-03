Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1768D1AAA1B
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759488594; cv=none; b=FfI7J7GMe6rVNNRo7BCg87ntg4/AXw290lt8LI43SREdWk+IUCwRY9TXAOkOl4ra6qUr4AUIJBZxOQOxREedhLTbRTXFktPjrWK4m2se9UgCPF9M5TdG7ylY09YmaSGY7ogieqsmhrakDil0Dqwfi9mQnYNVGDtBSShpDDC/2iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759488594; c=relaxed/simple;
	bh=w1J9I6iegt02qE7PU6qpSD07uxB+V1GTsqukF+vgJng=;
	h=To:Subject:From:Message-Id:Date; b=jd5ds4MO4+iRMg6htBvPpnsBUaZ61gA3g8S9t3p5ydA9eZwhuidS96EbMN50aKk1fduXjhCVIX7dxj6ixghZR6pxtw3gcwvO3Sq2uHTaxnp+CBIsRtuFJ1ozVu+spCS/ZMGsm7cmGPyc/5+/Tfhtkuk3JVdGT+NGf+qLoUUsUCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpqZYL4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpqZYL4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2993C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759488593;
	bh=w1J9I6iegt02qE7PU6qpSD07uxB+V1GTsqukF+vgJng=;
	h=To:Subject:From:Date:From;
	b=kpqZYL4Aivtzu17JSKtfSf1vJlZkK3Sf4++wnD0PRcr1aXFpRAPsnsHC/mVIYOIxW
	 Y7GtSznN3XaiuUrtbJ1wCqV2Z/UyT1x28o94OnzHMBwWT56w5Uf5TQAwLgPBAKYOlT
	 V+1SrDmbyNQkCIm71uc6YxW9G3vqMf32Irgonq+PISzftOg5MNFGgpqntEmEu8P1zB
	 dCUpd+cFxe9EpOkU70PxaUE9tiYr9S5OWoI2qJawdG7Jm4ac9bvFJ9fZ1Nh8mAt+VN
	 qZRlGBGebhsyhaEpeYG0uZSe01GA8CkxZP/wHtE9pJMqGjbLOb3AyFhfBqFeEqFl2X
	 iypLJHqy28YpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F727CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948859357.9824.1543960845986704599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90ecd1002b660dc01a4dbeb5dcf91c33c68ed47056978ffd9f07cdbeab18144
Date: Fri, 03 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759488593
