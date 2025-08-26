Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274E33594F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756224594; cv=none; b=GMK4QfLL6IY1S+Dc8YkdJD5mkrWmsCL3Z1BNPsfRz56QYSC1/aCU/a924Nxaz4BlDGSsGX493V8eaRtXKVt5loCdQNf5ZCFyRJOmDcsOGb7h0WG8Nsn7tBaPrxvuABO9Aq6pTwRO/LqiMZNa4W1O3fNFFM8ERJ3Jynv4jiFCC0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756224594; c=relaxed/simple;
	bh=Lm241uaVWRYgseriDj3T6BxT2g8L0wrw5h3rIBVuqQQ=;
	h=To:Subject:From:Message-Id:Date; b=mlRGQWpM9g1TqyfF4UlHOuMEO+kDvzCCCXkpjj4sTh3uolv+hAsQMRwRB/O5AkuwNRM7I4RGgOYMBNeR1J4VgKe1jtNe6LpMfJBPl9X5oevPI1Yip3ImRWDvA2yPkVzoVAEDcJWfBfCd/FMsioTFFkuDsMDIRmtnXhLq7fzEblY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2iTCGjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2iTCGjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C39C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756224593;
	bh=Lm241uaVWRYgseriDj3T6BxT2g8L0wrw5h3rIBVuqQQ=;
	h=To:Subject:From:Date:From;
	b=C2iTCGjyz2KQ8gqlpXTneew8i0Qfwdx4QeLD7w0uiUEh1olpbeyazpPfyDSSRiNpi
	 N0QBfKD4J+M3QXv/AD3X23rgEW9xJkMxifB0V9A6StmoKV8VIXfGWQxc3/Zl2z2/YB
	 PgoPZKS4OVTbsBrRhZPoDdcXlrth43o3BdoOoJgllZvYZ4dn5yOzL4kAsKrfMBqiT6
	 8sAHCq9Ld2jAqPCgxs09akOoDm4OatchHQFlnPPtzvPKu3/b4f7KrR6jTkc62326yr
	 9Cb3fCHEsg8NKuw7UXTsJsb9aUXwdP1rT126zfp0arhzhOL6Inc5/Zob6N6HceAY5n
	 rU/Nh9jNfuVMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9DCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622459358.23197.8654128275065366761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc4f6a8bb52fbb9450b5c38080e52a2d83589dcb67900f264d37695e81e7212
Date: Tue, 26 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756224593
