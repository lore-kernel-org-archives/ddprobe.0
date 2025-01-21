Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452F08F6B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737448554; cv=none; b=bp3TJr/KObb/j/vze3ba+H7hadMOtpFK+Y4YSu2RuUjBH2AWGCnnS2Xk58w+Uiex27S88xsNFdXIsoDaoz74EqHEJu5f6ktTvgKsstLZGPiiTYB2qjSRH972yeGktC/0YOKreeaQRPWCpzzNfVWKK/O5h+yb2Q36mdnAIzYQpxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737448554; c=relaxed/simple;
	bh=br5L4eLGSXFLr73NFzvsLOlsr6goVVofJFjYyJ664eg=;
	h=To:Subject:From:Message-Id:Date; b=RLkawJvZtYlZrb0u7mRpnfIXLQ/q9zVT2AMAcnNT896d62+dL0Lfo7Qf8mhx32zvJyZ9H4VHvKGLteoiIyNX+WXbdxExwfcfvkP5I1GPqeyhNDkDOzGtpGu6Rp2B3SHMBk1l0UYRynW923YKubjCcem5nEX7rZFKMDFQQ80aYpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4mSfnqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4mSfnqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CBDC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737448553;
	bh=br5L4eLGSXFLr73NFzvsLOlsr6goVVofJFjYyJ664eg=;
	h=To:Subject:From:Date:From;
	b=c4mSfnqx8DChaFqyE2Oo6k01Xdaru+IaUh4qjqT1xCR9jQicDzMLMTw9jl9HmV0TX
	 HI+tAeheuoq+7Gy/0MpYMNmUdbzNiJFQ8mWVaeXJHL0fAWcXAOgEzhzPaAj2pubmeM
	 9uGLAvJBT8NQ13OkG33U7vjDBqa4unw/fijN99ltDrxLVnBiJ9w6I5il671XzBiegg
	 Z3J9l0nT58LzJ41zUkAG9LhfQ56sTdfqt9yHHANPZ9V+k3yGG1m9R0UBWA2MHUc1Fh
	 n8zOm2L/6KsA6NI2uz4PeLUC4hluRN1Zpvy6U6VTdHp/AUYPLqicLqrx6wxywCycQ9
	 5yk1xL8FOgUKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93373C02187
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744855359.17307.13575402737848515718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cb6e78615b12b56caf53026e4ca34df782096373b416624ef167fda00a918a
Date: Tue, 21 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737448553
