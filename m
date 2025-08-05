Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0746019CCFC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754413194; cv=none; b=dc2XV5PRuWNNRpIPC/erHIITpJCEINJAnTm0QlER+3KhQYqVNWDCynZoasPQmWKD8ux9NDDaEs7XBT54Kd64MoU85aOAThd/ehvherC5LsR8ksxIsQvMWuGGH33OqKh44/wKfc4TXMQI5FPPyhOQzZjyI86Vv71cSrun5N9NOkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754413194; c=relaxed/simple;
	bh=J6f1rO0TiQvab47VfAPhl41+RxL+nAPXQ8I89lMx82g=;
	h=To:Subject:From:Message-Id:Date; b=C0STbb0a1WWwSa6SkInhS3HnYDQVeSQVNfz5Dnft1VtdTM+eWnE9iuUEyZ4NA83iBpF7icbrnlFTwGKoDgjAlujAtG+520l6W6VapJOO1p29Kfl2bJPdr2YuJDSzwLlG0ZpEk+QioYQ/oz/cZJzb1BSliMeMZSIvviThzGKqY4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8v3A0wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8v3A0wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A198BC4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754413193;
	bh=J6f1rO0TiQvab47VfAPhl41+RxL+nAPXQ8I89lMx82g=;
	h=To:Subject:From:Date:From;
	b=Z8v3A0wYJus07hrD/KuIPgWuMeBowSt7+s11YmT1XPOkFB8sJcuOzTK1H8jA6ypOV
	 AJKR9W2lpMa/NKPoD7JJOuBGCDn6vg+Le3Gpnzkbny6fqYM8jfDbtKTuQi07qR3My9
	 EdcTNvrsd43t2/VhNzi1vJZeIy7aCnXU4xKuf1FJyuZHBs5gO6gWqrS/FpWQkAbFcv
	 fsbID9rX6PKyzfin0BtpCig/kHt1JT3gfI4l40Dr35692rc++XY0DvHEcV5COoUwK/
	 BGAI4zDLLMPNnXsg3VcikrerDK2+2WRxhoDjSq/xfM9gOeHY3TJgKouq9qLc+Pogxc
	 aBAnXhRGxHy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10CC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441319357.19666.1948414944054395282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50760d57269a7ee0c85cebf2a1a840c7fd4a1919b479cd700bdcfe8b38488752
Date: Tue, 05 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754413193
