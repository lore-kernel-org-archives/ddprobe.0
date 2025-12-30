Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115B521D3E8
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767125634; cv=none; b=TRIdj8+n/YtSUbyG+EbLveDw1erJXR/8F1PHAFOIIr2MtE9krcndhlpndlhwBrugyGUCArmEXbfazeZrdWlebcdsR+8fhnRtGSxgJSHLje7wFkH/gIHQDKM23uExJ6xXcf6CBleP6HDCT0kwiRMJjB9yDsrmGA1UJ9Uw0iRkBwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767125634; c=relaxed/simple;
	bh=fQtqvbf2k5OEvYzJQ4XRKCcBR5Gtmbri+lItMv21BDo=;
	h=To:Subject:From:Message-Id:Date; b=h5Yj+dy06Xr17uY4wjRbENn9lCmL3SfJzIajJbhg+BEA+VFDpx/kNhLID3yPiEf10X72gpkpFs0oNjIOvl2dTw4B+t56+cCkXk4a32Y3JerEvSR2oadqWOsx3KEnfIKsLLfEfDXhEd28Tfgwz+en8/9iNJ1SokvDFUvOj9AsqF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5OHKWf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5OHKWf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE1C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125633;
	bh=fQtqvbf2k5OEvYzJQ4XRKCcBR5Gtmbri+lItMv21BDo=;
	h=To:Subject:From:Date:From;
	b=e5OHKWf5b3uEm+KSdKk3x7PjnU8MeqecGiQ148rPR2DgDqZSVaeF3otBtKFuU4ivD
	 bXMrVUcbumI3FdpqS95GAh9q/qvaQ/eycgFHGTUyjIv+44KuYOTl/t03CV3nFnUbO1
	 rwwNIXVBB365kzQxhSPYTzOcTt7ST2zx1EzCjt0x86jYdUV90uHiw69gzPjLx1MvgI
	 rMIAEYJaKYMKzK35TLRa/kgGrFScgQT/YegAhoAvRozZDZHptCphmpno20C+KRp1gr
	 +vtEcxQ3y6ylqGSLYQswWjYP4BJZHCQrG7DfbEIbgNxvHSD43TkghXsXuKi6Mr8IQY
	 3reK2iiNsOjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F698EE49BB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712563358.14393.7832019073174057757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534b627fb24f8110a225aa363acf76265fd079693e8491dade40a1f0dfe4589d
Date: Tue, 30 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767125633
