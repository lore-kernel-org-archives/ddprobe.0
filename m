Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD4733DEC2
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771874694; cv=none; b=UgFwvVQKUoFQW0BVgtr1sHCb+1cJYEZ/Bid3jGq/rvAbiYLSUB/An60s4bZkMKoUNeE52aJFOF8vsiDmFc1UU4F9pGmg3iOrHcpdE0u/XmI011/4IDRw/IEO6P6H3WqymKm6HcsVtPRVlp6LZPWiGbDLHSQrA7XqiydgTs9YG4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771874694; c=relaxed/simple;
	bh=0bD9wdIdy3d0ghtIge0RoKjrt8Onvd3EbCXk8R/Edcw=;
	h=To:Subject:From:Message-Id:Date; b=itCZtpPnqrEj/011WFd7AL7D4rpHMnzFpo8538nkGalm3kIUb3ylqxH6wyMHp29TkfBhcfRwX4Xwda64WQARNtN2yK23nmKRzux77bd5YLRF+GHSEsnZX6Ou3Wq/m1JhhWpjkJosvUJIkRU4iAbsIts6E6kQYSBFc/FLDpnx2OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4pY8XMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4pY8XMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A044BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771874693;
	bh=0bD9wdIdy3d0ghtIge0RoKjrt8Onvd3EbCXk8R/Edcw=;
	h=To:Subject:From:Date:From;
	b=W4pY8XMMeACSj6pYRpLPrhQQEUZ6yYL5Efpbh30AY6A8qISBqdjw1qs+286B2M6r6
	 PbmB0qpmsbfxjQO/LcMptEa/jDbJ41i7TQHz77plxfe3SQZ+y9jEVBKD0ch++micI3
	 G2oGxb9rDtmc0ffjKx+gt6Bw+5TIgMFNutrt4KBP7xnnQuVfZnR95mtyQC9BGPlHCC
	 gdhN9XA78QVAne79ZRFM6AgdTN6wuVwz5yHL4YnNi3bERlwhABprgPMoIcQMEAIlIN
	 3esSs37/pjWLANqbAMyeR5QoaZ3I5l5SgSBOfELLn0twrV8FqpMxolymcFpOIFWxUF
	 aSpZUkPPS4i4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153EEC1127
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187469358.8766.10511686895122147826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2da0be6489c1e6f64aad0154cc59539fdea7cef2742691bcaec251dea4f3936
Date: Mon, 23 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771874693
