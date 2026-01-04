Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1795F214A64
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767510834; cv=none; b=mQfIZ6yMsFZbHaeG7mt4tQHyVnvyrL7HZSIPclHnqEvwOv2k8Ep2ClaFfyjaMFGKlKMgorDTFah7xJUZeSjbt8DDa6blSErXsLy0B1KDzzeD1l2fH+Kpwjqy1Hxh16jigKVOV92VHfKQ4hVCOo1EUyx+UVHHZmQqluaUDQztQ84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767510834; c=relaxed/simple;
	bh=ynsp9DBgY6cgo6NMRJZvCK8fun2H084xCZxwLH8Gz5s=;
	h=To:Subject:From:Message-Id:Date; b=jlh9KBXiIQNAda5jNhPeSQiJFHVadcAce+7cm7v6FZeVHhJqijhbzOZ0xpL2GEg4k5exMpZmFSV9bGNW3kp2FShHRh4yprIyY+fBrybUX5ANnaem65grPCj5kZXHCCjTwb7MC2RCZK7qK+Y7SqnCbdnFDWlVYyQuVIx1jD6mMUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY+861HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY+861HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C42C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767510833;
	bh=ynsp9DBgY6cgo6NMRJZvCK8fun2H084xCZxwLH8Gz5s=;
	h=To:Subject:From:Date:From;
	b=cY+861HE063jZTX7Tu9Ogi5OfOnWdLWwx9QIdGAC4pkrojtBKTLa7CjD/2l2ZZNL1
	 Bb2unNYcekrq1Rvguw37ac1Ghal/cKvMVGVAq1prRdQYeJnfpXzw8M479Res7cV26M
	 n8hYq1oXbU16YrKtglE/NrW5nQexTTrlu9Dqgbt51zY8p0gPpJCxctW/3vojwnq2Nx
	 GHdFWjfA/8p2/ly7KdQ+16mRY3+sKOX2Yn0jqc5KxySVaXVhYVI5qPJIP7v84hvbcv
	 EaeyzSAT2GOsxMcwrwhrkhv5KCe2k21O0/CgLQXDI1rBFJBIRT7COPMbTlJ86uxE6B
	 vpQYwsFrQVQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E2C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751083359.19506.16281495535175135103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcefadc9c22af2c765a9ed1bf130ea4c410f196379ca51b459c31aaf7ab21a96
Date: Sun, 04 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767510833
