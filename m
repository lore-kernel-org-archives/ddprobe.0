Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BB679CD
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756680594; cv=none; b=Ngty2dhO3B/w3I8VsUVGE+vPjnr9V0Jca97P78wqTOcCrBm2Z8/h/8CJ1oEvVAD7AIPugEhf87SxEjtXwqJd3xSw9sjr1qh3Un+0jLCmwDfV1el0tG3cZcg81heHf0mcctdv2A23hd0qD0OCujZtAyJRTwqygB7GRLnlhl08uY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756680594; c=relaxed/simple;
	bh=FeRbf8MvjE8JpGIL2ilefH6UqPwKCFtIzvw6t13Fqhw=;
	h=To:Subject:From:Message-Id:Date; b=QO7hD/JNZAasvsAqFCrX+YSwEjg6OJQBuPlNFOfpTgnyzSu5jaUtFsVFszf5CRlk0Xv8LrNJazhQzoR12c2gOKOHCKJvOgmiRVep64E6EKMq8TmB1dvoqFncvtq12kK1S1ijGqhgVjvfgkqNgvsRiuBsPkkuLe7XkE0ZVC+Gz34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDqU2hur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDqU2hur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D46C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756680593;
	bh=FeRbf8MvjE8JpGIL2ilefH6UqPwKCFtIzvw6t13Fqhw=;
	h=To:Subject:From:Date:From;
	b=oDqU2hurNPn/PrtmCLQ7EaSU2LibltQ7LJY1rAuvyJ2Go5/DjYYxETfmodWBmxCVM
	 hN53BV4K0JVnjwoklUN9kk1OYnx0S8JjW8DHfVp34EXfYv9wmKiYK5abh9SEXYj1Lk
	 yp6Zn8rTsbNFcGgyrppB64ETzuYSqKKIkckcRJ3nvndaDOF/KA1O8y0vs3dlyG4i7K
	 m42YqQxO7mbhqycK+ooFTW9VZifagXm9HC4mr2fiGypZaa5BfJFYAl/Bq2n41FIx8s
	 Q1183Yw5IIeccKDJYRPXFOZJhseenE9gst4SHOmrLpb7vR4XH5irXMcnrd8mZAmFFd
	 sUBiUTsa+DFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E2CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668059358.32722.15962940118779503160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b9480711986af5745e8b970af37efbefe3a8d5f327bc1be3bce549e05964c8
Date: Sun, 31 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756680593
