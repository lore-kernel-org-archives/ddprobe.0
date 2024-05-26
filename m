Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C99441D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716703463; cv=none; b=OmxeD3IvFBIq9KC44Dp/5VXZ+Oi/rwmV1bwokqcpmfG476ePazkR+rGu/ExGDDbOiRg5qm+8uM07XGZM/gT6JlwVOYhwjn1N5zmr5AZ3lPzOaadhJwijKGP2uX8wDhgS6S+0QMhvcnhx1zBakWyUqv5KDYSAhjEO4cB3/yuTcs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716703463; c=relaxed/simple;
	bh=KbPULrvS4nAyONPOUnckHOiwkOLv2S84YzP9egqtLAc=;
	h=To:Subject:From:Message-Id:Date; b=YPHDPaQVTWCHgePjW/G6SdMt8GKlkpT/igJ78w0keyVhF8/rm9X974Uvn6VQxFOvQEuQfbzMc01xR7D+XyrNYPJYaz5CrIKnYLNPNAH9JWOK4VB7lFtfaoAT5ndk8UU4Dglkys1A8ichfjE1cL2y+Tt9xB9Z08AWYxRc5E92dbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ur/GLQCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ur/GLQCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B2CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716703463;
	bh=KbPULrvS4nAyONPOUnckHOiwkOLv2S84YzP9egqtLAc=;
	h=To:Subject:From:Date:From;
	b=Ur/GLQCDtVUcC98ywZZcXgtOZ+SLS+OeqnYm2BPS8wgTe6EVD9oczI8RqBEgj8Hoh
	 hpCgdr07VX2SNA1RZ+IH4u7fQRtlfByj+PwRNMpomVr2yqVKyZ+X+Dw7jIWW+IdIUa
	 u3Oy1OxqcEyPW7GxPUJnWjm75cTYrxo3vafekc9ZeO2GMdWkmQFzrNT5cDF5NP6HdR
	 rhjU5TdmLCUzgJWekb1RaXixu8y35iQQt+XZQDxavUvsqfHyG1kop9NSNnxrd55Vqb
	 23WPatWrQAEx/81sb+BJjbjsUvlo/AtSuFqvxBpcZKZZcDsqrQ/0d3TpCNueU8/8oy
	 KlNbWUmWpzo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3DBDC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670346284.19361.9895012527112720475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c714b566219f83b4546e0d3d278051c3208efb3158bfc5a26116025b588e47b
Date: Sun, 26 May 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716703462
