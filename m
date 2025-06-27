Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285622192FC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751023794; cv=none; b=GGy/IGrQsfjsoXpLxRA5ENnJTj13QllLVrQpjmPch0EHn2vMdy7zLRMNrqYRbHpIPc59oGVw/CCLUsAVFA6+Fbkg4pKbsO/0gBFOIN8ozr+l57UZjxpCOQZbMa7sT4lHvcUz5AcKdo6O8RbG4a+5M1pWt74smEgalHXCj4ja2/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751023794; c=relaxed/simple;
	bh=g6/bFhCrIrRAGjsXgC3etdVDnVXv2FqvS+ZF8Z2Nkl4=;
	h=To:Subject:From:Message-Id:Date; b=HlPLT2086DMIaghqI1dCclltBC0NVMHG5h96KI416xnVahM1K6XiXtx47rGE6WzxoFTj3xIpNI7JC5HYTfiX2WPsVJa3nLETEtGiVev8dNS6D9XYY95GcN1DFit4XdcXBboa7dzVM8XBar04QshD5Y8RsJO9Ye8RD/fLgfY2qfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqt6WlX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqt6WlX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9415C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751023793;
	bh=g6/bFhCrIrRAGjsXgC3etdVDnVXv2FqvS+ZF8Z2Nkl4=;
	h=To:Subject:From:Date:From;
	b=Dqt6WlX8lXRtDM0g33rxANsevkSvkpFjHFZYcJME0IyMQMFYyDR3kewBKDSdel37T
	 MSlv2zBdrLjBl0PjCH+nfZ3dRQ14IbTa8223c3qUjusnwjbztHDaObL8obnnZPnaht
	 mgrQwWuEXiV50Gq4nihZJKnr7KVjNCqD7C9vbszf6jB31GcvpY5fp1OdIfloqsU5LH
	 xKFhBe0KgTKSS6CQr4dnKvjBOpIrsSej3UnpyKoyYOaLiuouWWrn5zvVNHLIjkFt0R
	 awm9p4PsY95pBGGS8YwZPp7W3AGgtiYjSn+sqHwon50KM9g/E6psIqLnJoMWgObVpd
	 iICDC6ZwqWa5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970B0C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102379361.6502.10518704779656563068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc209f61b265b09b97f4c8bf238dc041ff5cbf0ba4bc80a5d92f2adc7d35c1b
Date: Fri, 27 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751023793
