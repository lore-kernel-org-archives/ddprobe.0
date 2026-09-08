Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2E5C4E3778
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788867034; cv=none; b=us0UF770RTZrORFacHp3SC+ri7IInnYoy+ZcLhsANsfzOWn1Di/G47iXB87biF+GPkX7FcKzg4mgQ85phkSRe9mUwW7cdn08I/hJxyY9RaXh/znl58mBhWR2UNEkLc6/MXbJDnXYyTQbpHsiwQHBvN5esSsUv7u1vdnqKOHo0LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788867034; c=relaxed/simple;
	bh=bc+4gkW/SHSALERcXz/fpZuXptEbbuQmFPrvK7IoqNY=;
	h=To:Subject:From:Message-Id:Date; b=eG5ME8sBZCF99uIuO/Oechmzp2YRLpb1Pfb2yBm8x0NpPkfiSP5nOgQMYO1CdEomE9sOLBCG36nFDLHsqey9czT795TOdinkwr2vBhg/TlGNuCbaE5mIgi8ZhzMdyn1gPiLml11J1kbcT6cr0+FdU1B+GwIS0N1nvDBdR9XwKso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4bnI0pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4bnI0pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEA3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788867033;
	bh=bc+4gkW/SHSALERcXz/fpZuXptEbbuQmFPrvK7IoqNY=;
	h=To:Subject:From:Date:From;
	b=Y4bnI0pplghmAVT59xgek2exn7P9MyHZmGNcDoT4IxNBfpfoSzDSHPGIpKiBHLT5R
	 zEgj9mrhUVEMhVo5uzhYVeFqTO30HOU0uIkz8ZehIjmqIUyb+HU8n1E96RA9glusEt
	 YDBjpzlh83IACkMnNhjtqN4NaIgNyTTj8ELtcagXLBAM7b9GXYplEF0LGHnHpMxrVq
	 xLrv7AitNpYRL+1rrRfMxAUxkaXglbPuYolGZ2N4iN4bxHuRdOM70mEMyBuFJYsmFe
	 8hY0jp0PNDELMj0PQT3R1RfHmBsO3Qpie36q973X3c3Yczy94A+/PQNNNYJIt+TmbD
	 twMbp/XKS2pSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA817C79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886703374.3809.4556304115217453835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b7dd0d4f4f89649f6ccfa6174f48a17a18833185a4e34f23d9f3d5db932966
Date: Tue, 08 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788867033
