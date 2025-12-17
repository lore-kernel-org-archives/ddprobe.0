Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3225327A442
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765940634; cv=none; b=FAqQKYhJsHChM5WlbDcrksbPYnwS/UGL8czqzXa6JgZLWY5nhYh5gJ04D6GDNpIKQhK8vnXRAjp1tAQfF8rRoLSNEOFBkWoEZkNqVtWkOOE31+eTxCaWkmKLPXGfXqAivk9B9bH3g3uPS7cnvtysoujW19PirNkx5Qvmg59NHHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765940634; c=relaxed/simple;
	bh=Yz8bhOsEMnJ5FzoSlDiKs0qBvFK8jSXNwfiPE38yjmU=;
	h=To:Subject:From:Message-Id:Date; b=je77EqbMxmKiZ4oXspke33AXf0nxGl1X/Nlf/pi9p08v0Fgxs7JHJWlbKQZtll7w2Xr5SB2gndm88TujGp8UPyFk7Qwa+d7eKXJXfyiKIIYpCO0jrq0E7b0zuLccjzfgYhtTWq0iRAXZfVhzYk2buZxlaOkweNJX6I7ZtmxtJMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1C973Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1C973Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7675C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765940633;
	bh=Yz8bhOsEMnJ5FzoSlDiKs0qBvFK8jSXNwfiPE38yjmU=;
	h=To:Subject:From:Date:From;
	b=D1C973Px+7q6B5xssX/RG8inp05KxnUN0ziqcTRKp7O8tw8bC1M+VC4e2hAmZ3kmS
	 pJBUcSDVuWm7Ux7EGVZPFn89gn7XFAW8JH7+jP4V4TIIrtKS5qejHaV3nSZv8UqHM+
	 3CiA+aSUIiI0TFCr6uzUxJlVdo6VdBblvZHmWQokVJz2hrUPZIA10XM1LbtzptbTDa
	 4JewdxSON5z6zaG8gQgmk0L0Mm022OFj4FBttUaan60h5CRGveU9ikLiPSPeLWuPPn
	 1mFaDPXcRGzI4u/xavhDQurnIhQgg592xz0fmKNLHlL4xlkPQ8v3wxlHf/xmr14hki
	 zSllcauGTeYKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95337D6406D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594063359.18886.1158010779124218845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c412ecb8aa42479d9490543fbccbd3033ddb489b7796f5006d403c25fc9edc
Date: Wed, 17 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765940633
