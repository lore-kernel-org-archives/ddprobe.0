Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57C33F3
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761014394; cv=none; b=LKwyNnlMHpVuRJYOzy5Woi8X+RyycXIacgBZ1Kat0LLRVtI0+LJDjgeaWB/PgKxv47bTye6yogmq0YttcJVNW8mtGyD34FBv4cFAcNqQrgJB90UJ17fEMb0zQnT3o/AdIIA/IUPnIPmkzxETlACExg/mINYbP8UKbsjq+mPpQOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761014394; c=relaxed/simple;
	bh=VfeGBPboOLBSfZeNrl99JWP2QuIcjlFpjT2yNttjVFc=;
	h=To:Subject:From:Message-Id:Date; b=iskktpmvG0bdttFWMQaPFRJNKzZglkjKH+IjOfBwe5Po3gESa7lFYjGhQB/GHuh6t5GYe3OjRkUHEjPiA4fXW8pc5vjnbuT9RqKM96gfT5BEktgXTdVH+lHSf7+vsFZsPiRYGjDFnul2O/OZbXxQ0ljo8Mb+z0a5RL+54ltVw0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/XWkBiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/XWkBiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A535DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761014393;
	bh=VfeGBPboOLBSfZeNrl99JWP2QuIcjlFpjT2yNttjVFc=;
	h=To:Subject:From:Date:From;
	b=r/XWkBiLF9OH/TR+CBCBP4ubXnQyTp4MCKZvtiv/JSGeeVrFU/9pv3kv28OyKg0xC
	 YvT0VxhzFyRF9sBWRF0eHAD+1IQtCHngOzIhsytrgb5R6mEXFFGtClhppq6P4b+rLw
	 MyJQEex8iG74M2p7XLP9yVGxZCzEQ93A6f04qtWQbj8rkMvj8kV6yW/Mxj7nIC4dr/
	 RTHy0EwK9GYxcg29kLVTofu+ReiXI218tqvmW6OpJ8wDlLwML95AbBdRdQ8u0+p+CC
	 s9CotdAgIoPbZMlMB7hEF8XQOxWgAiSdGdAkUwgmPbpGTHL5rHEdFKQ8PTKXY4d//O
	 l4AFCSBQ5VMIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90868CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101439358.30276.17042558129581998832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6bd46f1f10bcc990fc64f83b3dca21b505806f63abe2ab91b94490eff12ea29
Date: Tue, 21 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761014393
