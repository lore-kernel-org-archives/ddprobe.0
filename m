Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041A6823DD
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772090694; cv=none; b=FbKBXiQzzpxmmryCIFFmhZ1/1RZc2mPDewL91XDbbMZSQMrhwUX8eu1rjabbHeKfq64IVVfKJI8nqIvX+WfcedqZQWzKMuMoP779Rc7yxTrCiajwLK5SVr4MQs8J/NQfFJYvlRXOEiUKx8fGySR67pbiy1bgITd/mY3c6q1B6AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772090694; c=relaxed/simple;
	bh=0qyB4Bf74/Tl5PQorSrkPClXajFmUXpmYSmYIYfPKKc=;
	h=To:Subject:From:Message-Id:Date; b=sJ1XgX6gri1py4RJWPGiUT9CcriNYMvc8ySSt90SziN5jioi7qErq+vGfNCyLpfsLM9eZKFp7qf403Rcfu5aMDDb7xCCNUHGWcP1MQrBSdcLGcEEaZn611mBKUv+JH/Dz9HJpPTsXEqHBYydFJLfgdeMEKogsVSYTwnIZ5rGAOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnxDMsdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnxDMsdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035BC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772090693;
	bh=0qyB4Bf74/Tl5PQorSrkPClXajFmUXpmYSmYIYfPKKc=;
	h=To:Subject:From:Date:From;
	b=VnxDMsdyYk7SSFgbiWpxFB88fvUh/4wqubDKV0PimljVIJ2RY/fWQx7CKVyNgTLAM
	 0YgaY1DRDguILXRD58hHQo9/B3gSZGnLxzvtG3jnIxtfbFjlVEv7vjXOEuHJe05+BL
	 6Np4uUYlswnZhgpM7Qa6V1B8VHSA8WNm7dMlcaG5oBXGrfcnIvfLQtwwaux74CLxdn
	 i7omVyMOglzMRnGXYl1MnQTOa2V44LjaaMRuYw26zvt/4XCNUMOhGzoVqrGMtdBUXN
	 QFelfVB+VUJWJfrnChcyrQpor8PK8AnGtxrueo2Xf238j6y4gV6Vjth65fdmqmFYIv
	 eTttDuBhQcAoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3EFC5907
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209069358.12643.6580346451047013980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e55e86a88b9edf24e6cb76b7397fb0d76d8ee86185774a70912f62b18bedb0
Date: Thu, 26 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772090693
