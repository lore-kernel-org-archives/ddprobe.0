Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205E9314D0D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767174834; cv=none; b=BAcmwi29G5oWIeFlWCH6Rm30Gv4WMu26iN4M+U/8hp5NTDszib8yp2NcdOCDTWab4jfgBsXHQRGz1HbvZqsIgFpYY5NWzE/LT6TR0UwsN5cby9/mwKgRtfVVKgKOCZ8qLOpBSGmbrxy0MPBpYTGzbkn7UzHbFU6SX97FvJGbwhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767174834; c=relaxed/simple;
	bh=kaomxIAHcAZstXq5UnnmZbpmjHcK6+QDyKXuOGGGyuo=;
	h=To:Subject:From:Message-Id:Date; b=eKMfIpOLrUmt38wTVIP6ta/tXARHUM6AZ9k88RF65LAVMmzmt4ZlQD2RYENKO0/fYCOEhcx/owzifHfxKFH4sV7RCUXN/s+3X0NIQ5G+IbPw4x9EQ6wdwK7V0zrofq92WKSB8NtsHIFGInlSNgnolUzlbmCYqEI5OyCg3cUAGvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jl5mcdOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jl5mcdOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0654C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767174833;
	bh=kaomxIAHcAZstXq5UnnmZbpmjHcK6+QDyKXuOGGGyuo=;
	h=To:Subject:From:Date:From;
	b=jl5mcdOtjU9KzTCbgSjwEI8CFfxx/AZIyoLqS7dEzduY1aY9uBUsJExUMI8X44gP7
	 XpwkKtXxauLunmOHInl0/64jCe37/HT3pbgzFL7A2ldQLkTigk6PV3M8zjebwStQhP
	 lzEPOt73uh7ND6+SXWd91mfr1NYSotbuGnNuQNkBfcBpPvGgY3qqtOZedF49PtkKdM
	 kptx0rRQyjq5ivSnLQIMr386oH0xdpK2omtYsySpltvAajvWmxDdnKwP2PNIGkdmc7
	 bo2S3GaaN+ql1I9IifrZezeEhWO+tEi4pArczXgF8NQDKs/vJMGKij0LYr8iQsROOy
	 0QwaiMI3svAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930AAEE57FA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717483359.9312.12781614509847514500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e7e2ecc997cb270a079f0046764ef0cd032317f1f7ac2cf343d0f6df312492
Date: Wed, 31 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767174833
