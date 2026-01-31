Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C1926F2A7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769903634; cv=none; b=jik1tUOwOgK+MijyXwYY0JDAMUHJJg0hz1g6uYA6jkfyvr9kMfNNEvjaB9ViYsRR1pWVjK+kM9SuxOVupvdY06xmS1Kx8T99TaUUlu75P8IS08NqwgKsK1sg3yHdP21ReZt0etsNv+YuV1bY9VQW8sxMGaI1RW1qecO8/Orcqvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769903634; c=relaxed/simple;
	bh=Nse0NI02HwKHKBsz31hS3Hfi7Keu6OKVEOIByo8t5Ww=;
	h=To:Subject:From:Message-Id:Date; b=Rej5JtE4bBSAVJfihSSNFTEbi/rV8XbvdD5tmoSuSWu2vczmmIxjYhDXRWiTF3Wv9fZvMeSUgD2UkNRDYgqo2XT+65KDdApvrrsa++iM3eF5WhZO0brf7uJa9oZ3fpQfLMuv60WZQMqxGobSYK3HS/sDKsmcMqwaXTHlz+zzm4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFvKwevw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFvKwevw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769903633;
	bh=Nse0NI02HwKHKBsz31hS3Hfi7Keu6OKVEOIByo8t5Ww=;
	h=To:Subject:From:Date:From;
	b=BFvKwevw7p8llbGM5OOT3emLTx1bLAFHk5JOj8aPhFiAiIjmNJKD7rvJf7hDK10Ls
	 KEOlaatXRpuKRfdwUcK2/YRKGajAnbprZTojrqUPgtHklyFppIMUVLZxu90fr2Gagt
	 FBjkzzUIuBzAps7+XsaySg8pynvETqCJnlpQUdmS133FmqwhUkCCyLFp2/6WYpFsFV
	 X5j5oxUj25UFDZShr4v4sy4C9A9g7ahG4qwguh7tETqQ70G47CTWK5CKI16FgT5ytJ
	 NBGleMmg+k63HVOMLnHy22bEtI8c++zzj7Qelxwy8hnhtGWo1l3OXBLJxuY8ahRVnp
	 UyIqnv8T2psRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCFE7C6F9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990363357.32054.12321112961528926206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039cbf865529a00c89bdf901c4c96a09460f5314ff9ff16263a151c8d2fa13bc
Date: Sat, 31 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769903633
