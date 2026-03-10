Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423B920DE3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773128694; cv=none; b=RJjklDLKSz4XFlmN2Wf3DqsHKrsEQvMReN28CBKrIuKps1S/C8I8l3HEpdhmrgnEF8sYo1mNJsQOePvmggi+SXfUK8Xe49t5p88v3a/X5ja54hf4Lj5OZ/ZulU1guok5MRqEYbJRxcnoQx/HlKquDnivXQD0VB17P2P3TOgF/GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773128694; c=relaxed/simple;
	bh=RMmg6prHcT8fzPhwHHNFCOGIdrwPdohtjBKhs+ar9Pw=;
	h=To:Subject:From:Message-Id:Date; b=WnOkmIIW6IFnftdLbnFnbGmZmr2OwfvFGbgchAAL/vRfqXMGmHzjpDXvKYUd1d7Cid7lybbVmANE85gwsZfS5uzCcbK61OHLMCftWdA3V79FzhMNk0uNPlGiUNb73Y9pLHppKNUS3/FPTrXAqYFEKe7ZyPpcGVjOwIWGjMZgKDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcDenTeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcDenTeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7AEC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773128693;
	bh=RMmg6prHcT8fzPhwHHNFCOGIdrwPdohtjBKhs+ar9Pw=;
	h=To:Subject:From:Date:From;
	b=WcDenTeGHLg3U/I1zt/DcxGKQ4YErRqdJPaFqCHd/rvqZeA7Nvy7mfeAupJrr9vtQ
	 Plom7xYpfroQQJTCtLuaqaVCJr8ZOb3d3CAMZ0p7smXZVFvPrg/X+t6u/GBGAWIv8A
	 6TNIP3Dacgfe+SVk0/yiQxYUO2OOsWjAn06p8Btx8Ipzum0NSgEU6eBVlLzknAefb1
	 IElMv7OhnBGnVM9ch1UKRtKpJBeEYzzZJaDQX5ZGQq2Sf/A3YjucN3BYQftwqzOw2t
	 qi8gOzsTr9xSGMoRRhkqFOHXLcd1Fu2fc2LQfYQ1T4PU2HN70pOVAef+LpiYMhUoeA
	 VoAtUGwFLyN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9BFCC9D9
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312869357.4135.6360408083682982008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0218ebef3eaf5ce3a6a4fecfa56b522f06785f1825d4a538440ad83d75a078c
Date: Tue, 10 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773128693
