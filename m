Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF257083F
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729915554; cv=none; b=rXQ2rLAjUWTC3Ov2xIneRfxyZnX2FIdxncfKU/FPfge1vBVPiFITchXsKb9esFHxbsO5HVLfFaO2O+ds5OTZ+/qrpglfTbaihPolo2RoNoLZija9JL5dCylDLsmIJxIa5Tx/yToH6KdDUrn5RrHXDIKYKxQcw2XSoKhQDYSiq7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729915554; c=relaxed/simple;
	bh=oXzw9EDs8LyaYdlp+yealKhofacHixRiFobZutGtxqE=;
	h=To:Subject:From:Message-Id:Date; b=har0FucDfzCV73SL8hOHD7yS3dS/tHCRmj3tszZuLZ/Mw1/Jl4bz/m9yDGhsqvuloDSOxnBcTTON1F2ZuZU/EnFFpZcyoMFXiqwEcWd53deuARCBmcky410czVktWld/j4qyjSnLbEhFqdpk0naWtOaTMfooJ85+1iWmZ9ylr3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LR1ivcA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LR1ivcA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7E9C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729915553;
	bh=oXzw9EDs8LyaYdlp+yealKhofacHixRiFobZutGtxqE=;
	h=To:Subject:From:Date:From;
	b=LR1ivcA5oFn8aytutzUUS1Ep5Hy+jO5j0tcre+MDCC9Q2dbFH1olHGUla8znX9P3Z
	 beaJnYYVOjFZddDe7Z28Yx+Oanu0rPPndapljVZXqZr6+2g79yayN80J/3Uz7JdxNs
	 ezuZyVkmbKoQAKZ/CCPW2NMTbB6m7QPSUG8zR8p5vTytRHcJbuO2PzL2uC+hKRxnaE
	 ckQPgszuCJhj0PUjNGKc4jvO4zI6H5ov0d2xcZh9u6auNxNdJA6KnBsB2gUHB/Kvv0
	 KohjH6A7ttondV3FFTE9cuRs9fCRL4ELJCIWwzXBkhB6xUo44gPsV/8gbEtLf3r/GO
	 zejXmFhbjXyCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B47ED10BE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991555360.30733.17574503862286731815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e653b08f825531e97611ff25992d21b9a0e5a82fc71933c1956478d25a9d5b44
Date: Sat, 26 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729915553
