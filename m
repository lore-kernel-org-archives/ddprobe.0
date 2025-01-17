Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F5925A627
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119753; cv=none; b=NROrKYFdLRpq60NR2cpz6ii2nQG4HwDF3vlkDMcoMOqJb4ajFUTxN48Ejk0QNimCEzgv1b+WDKlIqwC2XDIF8ZV4CDSSK2vtwBwXqRtxYkJE/aSEKMtrSVGa54+pphQEAnwrxuBSLOwxIRk88ZinnCi/2VR5y71YYf7Kkn9eVbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119753; c=relaxed/simple;
	bh=0z7KhoLpilqStkrM8YN7TVyBAe5UGNxC4michkVNUSM=;
	h=To:Subject:From:Message-Id:Date; b=StZFf4yOL8UbBQEUeYd2il7UAlLq5UqQj+99HIolFYEMuGcCFF5WcHZup7LENbAJ5zXZMMQkH08x+v2cvF2LXQcSyZtyJfTrDC6gdSJgq++NfRTBW0QEPhiA0msop9TO2+BdaKWWjMaVAzGhEEB6Sam2mAICCXjyMeqeXKt+HEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1RMpw8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1RMpw8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BEDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737119753;
	bh=0z7KhoLpilqStkrM8YN7TVyBAe5UGNxC4michkVNUSM=;
	h=To:Subject:From:Date:From;
	b=c1RMpw8HdqyB33ChDy30yt5LfolpWz/tZaCw77YbdPlheaqlJqOcll4KFBpY0IypE
	 bXzlFz+S8FqWevXVSzAnu2WIb/XPkOwbTz/0o+TEPWB47In0BomjexJMIEWiHyyXiM
	 jwAl9DCcJB+r6xgmKJHJwIqpveVgqAfu2f889YqZ+kAyzC/PQN5QIO2UqavC5TfLtP
	 zi/KKGUybuF1rfZ8FJS/2u2S0kklZ9XBEKDFKw/9/2Ku7jHBjOUfwL7qFrmPKvU7HG
	 VA0Q44AAqstuC9N4KbTBu8JbuT17wNAf5ZgbvU2rc9n4F+yGoatgmRdVugkTpIOXry
	 1Chj5imS/mGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A30C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711975357.29872.17029720931008500804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6471e6a12d20f00e3bc65c1036e8188033fb499f9c160ae86fb85817b0951e
Date: Fri, 17 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737119753
