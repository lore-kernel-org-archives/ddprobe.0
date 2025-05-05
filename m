Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3539278F26
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746422994; cv=none; b=rink4NjIpeni6FeWlBA87bHJQ6PZxpHIjp582yHGjDOmHEAwMQrpcWcVBBsp8l0p+OsgQI9OP3sK/7nqSUCMb7Ei98+90mom5gN+ekCXt/qKPBPSy1RvwCkwSK8sySBGhplu+hOXrAL/gfPzHDa/tj1+GUGKDtDpW484DRRuXKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746422994; c=relaxed/simple;
	bh=4T0G/Tdlu5+MR2h1ajQGB5c2mc4PP45zhkFztxR8rzg=;
	h=To:Subject:From:Message-Id:Date; b=kfKvm5Jd5P7C5q03AwOS5Idy3UvPHPlsRTY7NSlEzPE73rMkG1NIV3c+mVlgLWEqVM8jRUM38NgCo94BDikawhTw6QnJTMSTCnuS7f2973+LmIHwZuddSRb3RNsdQj8h2j0dcbRQ/gUeCf3svA15tYbBCUCKrTX3B7KMzTPuAmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmTRg8Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmTRg8Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6830C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746422993;
	bh=4T0G/Tdlu5+MR2h1ajQGB5c2mc4PP45zhkFztxR8rzg=;
	h=To:Subject:From:Date:From;
	b=KmTRg8Aq786ZnVkEBQnTSiHGpkg+gtjtDgI/RYgLTzqDmugwhcK1o4XU2hPNGnF5l
	 pnVYNYe1ha+5kFlSyQg2jivbTdGWQ/FMF7Ik6FjBm+heCf1AJVGVj9qwlDeXRyOJHX
	 YZe0c3RIJ5/7iwgWYUY2h8uG9VaZ6thO42ILwXFoBuw62yajduspneoR2zWxqeTCB6
	 /098JSTaBd3tNRDxa2vb06Fwl1RKkmWeLnjQdkYBeVYUTjeVQ+Fgufz4I0EeM27jE6
	 nWk9INYX8PrpJCZ5TsVlfhhZwwqpgPghkeI+msEEfv30Oa7+DXEP7vvaQyvgKWelPT
	 NpxEOzAUbv44g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C4C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642299357.2188.2938010787024330078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80dae1104a89c038b7f2e12e04a0c492b64a6059c065de4e81fe6e166aacf1ad
Date: Mon, 05 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746422993
