Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF7B171C9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755309594; cv=none; b=oClZqxzIoY5wg9XTc0M34XAOsP3jiHIu4VxK6rX050WHZaQJpA3mXnssZcyiWpKLQzopPLdU5rBNTPvGDrKxDCyTGM4xkuMvNEW9lvyA7ufM+RVU4eLLiVf8X/xm2CL/rOdBnulF+zayGzcJp/2FhqztK96GyAY5PKosOYZfe4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755309594; c=relaxed/simple;
	bh=0esUpDTxLL2CQxedveHHdEXvlWr6mjebQKFETebNpd8=;
	h=To:Subject:From:Message-Id:Date; b=H3+PbJWV2NbbBn4gmu1cl0M2bfiLtlwOP8mAePvZIIlyzkHPfDE0f+3cS0nImVUXSs5d2snUdA+D9Yy1lFhAukP1Rsa+od/HF2vOtUxnQJ6sONNi1uAWI4f+wO6gD3Fm734i5sPCF31scNXM4PwPR0Ek8sIwyF8dWl+8NYgjiv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/SW0azr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/SW0azr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2697C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755309593;
	bh=0esUpDTxLL2CQxedveHHdEXvlWr6mjebQKFETebNpd8=;
	h=To:Subject:From:Date:From;
	b=H/SW0azrPydDMnby818hEdhmc9DislPuagYHjPIz0qolfam6Bt2ROmz9DDjrJr9ym
	 E7NjVwmGJApc07wANJ1oUogE5N99s1Ps4zoax5GTJQz0nEVlfJrlFQxV8KcwNoviIb
	 /hxLh5vVvvq9nwc/3XIAuLcgod30eUvIaOqqLLeHNXooT1TXyDPoqbpIqClmlbfAF3
	 jBynZPN29QE+O58zP6ug1Rcq+9W7P5h9N83sQVg8IL8eO+78XwsptJ2CoXIXzb7b4J
	 +YLgO8DtYqS2TZUhnxyyVSe5y7MdMIOjf7Q4p8scjaO8M/w8ENjIlz/RJvHsyAsgBj
	 lvyA8a/4+cXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064ECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530959358.26328.4622069983200699731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93f576d3024bd38a67fd67e23478bf698c541fd2d3a34e5c2cfc1a9f704d1e3
Date: Sat, 16 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755309593
