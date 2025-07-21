Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3168C2F41
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753076994; cv=none; b=f0QM4GF4Tu+BZ9qlcvjsK2w7VlSRMocoXYCB7MyizKaAF35psePU/OLXHlsye4WsE2rG0xxNSr42OqQLZaIbcw1ZysenO+xbPFbxZ19UHpDisYRCTy2UaW2Owc7OqixrxkS/z0UVQMw+xpncDzzkuEoSfRQZpFqbEqlC0NS3Uag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753076994; c=relaxed/simple;
	bh=AvdI/uonf2F6lRh2E1vBWE/xk8Kfqem6EnsF3ngX5NY=;
	h=To:Subject:From:Message-Id:Date; b=r8bS8+83+uUZ1Z4dImp+CQVzcbzJ1JpieC0E4/s9BDaIG8+vNwzDcPqaF7FOb8dRf3Rear+pMxKBx6WCyiNXxrhBRS0+IOZ/I1PvxNzofS0oi1NBpH9H3UbmAcp/sj40mSfI4jCYE9YS9yXhG+Z6nRrs6nomlnzCP2cUWUdle0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTE6n0xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTE6n0xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A375DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753076993;
	bh=AvdI/uonf2F6lRh2E1vBWE/xk8Kfqem6EnsF3ngX5NY=;
	h=To:Subject:From:Date:From;
	b=PTE6n0xplMZn89ojW8+17O8d3kSv03dr7OxxCIvvCobqknEuECOCDH3tRjjQm9+Pf
	 FDNC1HX4baBb22/2SRBsRjO8QSkgAyIbktwLDFppxPOa2g0C3LrHYnx4iAIq1jaDrl
	 44v0T77qjBRhXfKiZhds54m8OcO5cTccolk79euGN79Y9uGFeXfZyig8MtuH9rz0jT
	 E+kDgtMX47CUpwnEvCujZywVm+ebUWItbp1yCdfEbIZliKcQJg90iYFOyRX573dtj3
	 qHGQXnQ1PwsyfR2ll5gQfzxNIP+6I9bVNziKsqETYctHe/YF2hgBm1R/zK2OQ8yJ3G
	 LtCTmz1cfldVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F977C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307699357.25818.18394045159279397719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d5ecb90c27212a8e9c5f8f4bbf708387433a7bf1b41b478829d07cb144f99d
Date: Mon, 21 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753076993
