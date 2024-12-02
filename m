Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EFA1F8AC5
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733117154; cv=none; b=WMNGi2tf79PG2pql39iywj0niKWXxeT0MnDObEucQn/AB9GhMO6CASU7jDV0c0mhbsiXCBjl/MRlmwCJGasUDBnhjTDSRs/vE/b5SBNGaWmjHmA57EgrLhDN3RgOb21CNVpWU7NvoUbjEqK2yFUPDUVYsDZGJLABLHVCb1TZOQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733117154; c=relaxed/simple;
	bh=rQbwG9adEq55KrjMDUsBEEZ+voCEmZYm1VpXfxYmajg=;
	h=To:Subject:From:Message-Id:Date; b=IUsrZFOWGp6oFTifdWhAAREcQXKj1K8/fs5KAwd9meKYDOUIlbWsJVwgK4+gfoaGvEnsaXlxtxx74pwcDaqEEwrmj7CUNfxNCjr5dWKOpZR+Xoos9HLDyEEgst1uydQ7bYBsrNnxw/7p3xbmop0BbHoK6gzh7+UQRGb2s0Bro44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS625Mlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS625Mlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6902C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733117153;
	bh=rQbwG9adEq55KrjMDUsBEEZ+voCEmZYm1VpXfxYmajg=;
	h=To:Subject:From:Date:From;
	b=NS625MlmGQScpFC6l7VcZOB62U8QsUrx/aMrBGXOLEELCK6QPt2SrapxkVYA5CTlX
	 tL1y7PSlMg2T50S7T4kj334ATfFdWl3dM69I1x3JCGp+L8galjS/beWib4UU6rxF1C
	 mT23kf4Wk6pf+2YM5QnSjhDVpaxgNHLf4oEOwOoI2AxfxJjhxZLIu7/jgWc5byt/Zg
	 5kUy4GdtiA9AaQIgM5lWo9MCeZ8iA54gl2EkPAVgIQvl+xOtaPvT+d6tdX1/ROaVl4
	 gJO/6PNEcJKMjfpn7AoG9ZCgYgLQbgkfkyOXimcSwhMPnCzgot6yRYlaq91Xc+a0Lo
	 kHGBeH83oneEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B414D49795
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311715362.9521.1764634452295828967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259ec4eb87f5344654d01834b55cdaac1ba8b67c54c229c5f5c3032b88cafbec
Date: Mon, 02 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733117153
