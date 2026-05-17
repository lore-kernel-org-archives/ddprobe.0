Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C42B26E706
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779025834; cv=none; b=JheO2sF3aY6VFZar9gdyTdshX0wYO+8wWBIZVYipSDRQOPt1r9yniXxgZtu24qI1fgCWuZ9Kt0bq7gpdykiVJPsNOVM3tyI68bp+ejRhgzH5JihOeLGSjGJWDrSuXRxzFQR1IXEtjYubYpNDoqs2r7opLSERkJMihBeuMtuGFMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779025834; c=relaxed/simple;
	bh=eZa4DFWigwhLACRgD4L+Ng3TCB4VdFFT0anq9+f8kPA=;
	h=To:Subject:From:Message-Id:Date; b=sZcbmG3MASQJfPTByjKKKN8GqFwXN5PSw4hN8PMsDt1vwoaHis8FXcmQnv5QWajRsSkq9H4X21awJrTaP3KvvMwM4eDFOfsovVb/2/uB1QSl/DA5sY2WqOtByE9Ac3cHpRIaxwpWKUoNJ3jTCbku3oBzc/1upx12FpguH4iSFWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ka5XYSN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ka5XYSN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46CFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779025833;
	bh=eZa4DFWigwhLACRgD4L+Ng3TCB4VdFFT0anq9+f8kPA=;
	h=To:Subject:From:Date:From;
	b=ka5XYSN02X8wkoloGXikvvLSejpBrJFuyvUqm5dX6RWqUQc0u9RW8UZacYvtUM92G
	 buPfm3DRZUiRWXi9IFCOcNrN3qySbSLunvf/Q3d16v7521CGq3bIDEl8WIM1udB0eh
	 oYKh7bodn3fC9XdDWo6+fswK53FB5XnFFiAY8TSwSsI4Mqm9mduT+nOQy+uX1Uekjb
	 QbZt5OrjxEPKLv11m2mn3EuLwwRPb2E80te5ZvVUZUrjxiRHo6LwKJw78q/saXs1a7
	 tizoz7r6od6EKjScOJ0aF0s5wc3ZPNvu1+Z7dFwNg8IqdUdBVqcFoTZAGgT4RwSgmh
	 uydgNqqRXZR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D5DCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902583369.9767.14643672762522689491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00e486a2465d33387510c6b0bef1c55740270bd5b12a8a0ecf6fff65b8028fc
Date: Sun, 17 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779025833
