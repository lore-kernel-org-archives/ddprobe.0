Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF9F16DC05
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725803153; cv=none; b=rXMgSwPbMit4g06F/TLHx7VWaLW6Kolvi5fYg+ABGC1nNsOEGpUZ9DGa0NBE//um997DsJcXuy3fJNNvdIPy6zrXZBsB96ihZS4mfwnuX3YYqvRVDNhztGset/u1U3J2JFjRbEkRmyOPb+9wOb1AjL8QnqUkuDmMFHcmNYGPtyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725803153; c=relaxed/simple;
	bh=y8eFoHEZRLdsmWFOG21+63EfDdMTGAScD+f/tDmcEO0=;
	h=To:Subject:From:Message-Id:Date; b=iaAPYQy/YHp2eALd//h6ieGEnbK+MEtMirrxDbcCW9qZBawUlnpfhKnas3Kc43zporbeBfRkwjAqyiT/AuIYCJ+G8z4xr8ZfZSIB4bgRYqua0Aef8hU9bnDulYdy3UhtwKbnHCeJ+hvGhsBucgjy2QmZG2fdNWqLLX+Je/RdYnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsfnhyBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsfnhyBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB8C4CEC8
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725803153;
	bh=y8eFoHEZRLdsmWFOG21+63EfDdMTGAScD+f/tDmcEO0=;
	h=To:Subject:From:Date:From;
	b=ZsfnhyBMSEetIrnvC3OefeIbINOJd+MU4ylnnFoILvykzxT4YzcHZ/UJnSC0QvTov
	 0Iqk+4EfG4OM5rA2H9pgV3+vrH2s90f64vMppPQrtAVTXsTKxsqw7kCHYUF7YLSz9N
	 gMAR8Ft8Ocp9tx+KtFMlx2ztw3n5f1SiLl3V01/4THkskYD5JMplwvjprZq9V/GjdV
	 eLlgw5FTVx/SrN/MBFolXL2CU2Cc9w946nfUG5mZczhr+X7muPuzpEjvAzKgyK54/X
	 cm33YnK6wTpqCrVgfCNp/KKWz1UkwsoEtD8CAO/Glvi+HFMe3yeBTAE+8F+mNodwzT
	 1eYQYsBoco/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299BE6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580315359.15661.18262399097563257496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295a53b4b718e4aecbba7a556db8bf05d472f9b32686875efaa776ec3279b613
Date: Sun, 08 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725803153
