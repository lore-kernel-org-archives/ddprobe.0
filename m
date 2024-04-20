Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B28FB669
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713635423; cv=none; b=ZsBejQr0QWL5USbjxBidHyW3Fvmz1gNaMoJLttnDqAWo5rn9z7ctfyKhKf11G2Xi9KCY+x/BP1bt1i9tirwYUdL/369VHLSeEItaFEl+Mn/L1uo5L0jiOdj4UZMpKcGkH+jmPZ9i1FYFQJGqGrFR0CKjVJl2Zk47geDs6+pT6k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713635423; c=relaxed/simple;
	bh=QjRagWmSRaLz+uhPFmHM6fFZlw2IIz6M6Ow51dEQUTM=;
	h=To:Subject:From:Message-Id:Date; b=bqRdKt34HkJTS1fRiA2ZqQpvIfvG7nlym+JaTK84JCdWLUsDGSSmN0Y5/qktUlB1k/LQeyga9ybDrgiSbc+6RAvKOZFa9TgA/ZKI1zEQmry45TjeLnOrKI3mirxv/gNcvLAgTU4rA7UfhvZDRU1tqdtMMQWzuoBQkhXVDVNDn5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyW3dy33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyW3dy33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51B3C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713635422;
	bh=QjRagWmSRaLz+uhPFmHM6fFZlw2IIz6M6Ow51dEQUTM=;
	h=To:Subject:From:Date:From;
	b=eyW3dy33RhmiPKWvC35CzVZRPpmV5SdoyDit0pQYIkjRpr3v596Dkc6hVMeqKRBEB
	 J+n4+4Xrd8y9p1Rx1pKelIjux7MSADEGtYz1AMD3hAlKT0t7lGrY7sSznp3rhFYLP6
	 xvMaBM68I4afKrqfxhlFNNKpTE5DdsgRP12IN3V8QEWDIEYWE6Psg9JWYbREYfT6bB
	 xfae8aIzB4EilNTFfapzV298Pz2Rj/sp08JHaRO43UZAICD/wxjaCjhnVY4rzRppXL
	 E8egU/+IMHudTY7NM8KSPrxPqbKcJEvvjcV0Wr1J/CWRMyL6opmwpC/OOCZpp5HNxp
	 iI7n8uKe8+U2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2BBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363542280.21777.1322275767700299116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bbd249e4187b0266ff79662b58af5ee07967e84eb9ef15e787293ce2166967
Date: Sat, 20 Apr 2024 17:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713635422
