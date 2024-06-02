Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616173A1CC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329323; cv=none; b=eLHdxW+eJtkkyvIq/jnltSCTDL5Ozw3RDPgBPEhuYNzZDVPt5jlyoSiAHFQHbe3rwiGFkQD2rYMtQGjvRKiMuUTpqN2xPE/hPReT3rkvjXnWcm87/zoAn3bcAdX3TR+ep/l4K5tPlz8z++OicCPKk5fTgFa1pCBHwYMqFseY0Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329323; c=relaxed/simple;
	bh=7Y0iGxPUt70V7Wf92Xl3sg6ueUddsHTBpALrionEKDM=;
	h=To:Subject:From:Message-Id:Date; b=KVxTGS2hyGrHt6P4mkFSUg32ZE/G+29CxsQOze44r3HiK/IeqTY3pG6ZXvb4cfkXATBwdeaHVPOVWUpmZNNv0FOvC7Wm2zgZapiYaXsT4s9E/rFBJM/6obLd4g2JhneHaN0Ep74WM3TxAQBhlYsbAn6ae0BI9paZt/EqiTYtqVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYdfcyKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYdfcyKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AB7C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717329322;
	bh=7Y0iGxPUt70V7Wf92Xl3sg6ueUddsHTBpALrionEKDM=;
	h=To:Subject:From:Date:From;
	b=gYdfcyKZkbztrLNIbQpwPjMWGoKj9ZOxuZ9vQiINCow5aYFT695zNwbmrQWQW1Mll
	 23c4lRQISkK8tq6gBk/BswB0okNDElzzS3rRME5WC9gfotq2Fqh2qOkaOUPPxdro8b
	 LuUoMn0ixt4iBEqBFOdgY8UZzkDXiqIwmnq9Ea/SmQaJqtrt1AbX+ZDj8dO6cCg883
	 HXy34Sr5xblfX46KGobQmggCqGpDaTZmlvRshRFtM9bvSR+KeJfS0k/ZVDRWsKHLX+
	 z/VDHAU7VPgdVNBWmALlbs75ksBcTt2ks7hF+6D3CKA5IIyo0NyngoImEOXD9wFvas
	 f2UEPe1q40jug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECE2C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732932280.27097.14200119790409843959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a65a426203d6e6c977fa88ef7c6fb30b53138dda21fa0b64a6427cd8af4623d
Date: Sun, 02 Jun 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717329322
