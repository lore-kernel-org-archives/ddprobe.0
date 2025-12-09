Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176782FBDF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765306374; cv=none; b=AmUjzbOakLH8ozsu+kRHADYeU9KAOj8PDh2uxSTiq5ZXcmzlSJjx5LjBC7LYwzuzGZ6FkVSqyL8tGXBGv/mQMdgQYXt/kY1sLFu6TDaBprCSTX75TvNBhdwNgtLghZibEqs3JtodQihYRVhgYUk6TTPt6DozAKoSGaRs2CkacWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765306374; c=relaxed/simple;
	bh=cBRtmbuMRXaQo/F4ibj6CFqYmfIrr50pAAJuUivxYkM=;
	h=To:Subject:From:Message-Id:Date; b=g6fTy5jrQLXwmXGFlNX7gxZHFNX9zzD1DY+kuCDmywDnL12EbYUG53+2s0y7K96IEcHbxWbdsKv7EQc08RXBfMBb/QDtlqCSTiPY9m7JHugR72TMDNuvHvUNfYKHQ2TjU1Ge3WgpBlKhFqQrzdVW0zzt0q4PZAimgdiE3nyqg64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrJABwjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrJABwjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB50BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765306373;
	bh=cBRtmbuMRXaQo/F4ibj6CFqYmfIrr50pAAJuUivxYkM=;
	h=To:Subject:From:Date:From;
	b=UrJABwjQUxJuIftF9NcKz68mx/5XEo0BtrJ2V9VuB3niJMj85xPz4hQ/fjE8hm8yV
	 VQwt+ae2cWU2ZGnu+9aR9d5z3XT/fg1609wpMsxpPuOjyDdkCNgztu9bjsEbxYD7A7
	 W959SeBxxagJm1Fnvz8GN2ukmulIl4lyaJOqaEZaKkwtUKiTjvmCamqcF5MtdsSw9o
	 Dr6Hd3xTTbrAzqNg8hKF+o6DDDCr7gcd3Wxmf7wwaOQVyzZflxysutOvNv9VQWLILO
	 5VQVwaYbabzCmP7X5ObseMcolOOFAv9Zv6Agpj96GTl1LCPdh9Q0BGHb6O2TxQcInD
	 jbq13uclM9LwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE7D3B98C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530637358.6188.14700041495434350720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe5ce7411e60ada53054657100fa3bb873ab0a7c5f6b5bae728da3f6dbe3ab0
Date: Tue, 09 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765306373
