Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41E235C0B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736761554; cv=none; b=XEohWxDumzyrUPuL0DgM3UA6uikdRBV+/BJlV0pFLhy1FyyAIDqVK2tu6yrb+vCNuHaD3acHWJtkMAb55U2OY1iDqXv1VWZ3qGW2DDjBi+eZ4UTCoO7q2bu4xu066pIR9Ntc1RQT+QBuiRlCVubDjFHXUZWHS4jkQ9T9v2nIaL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736761554; c=relaxed/simple;
	bh=CLmblSU5xapjdoLrF/ntuw0cYHaAP319vaJOfsQPw1I=;
	h=To:Subject:From:Message-Id:Date; b=bGrUdcS8MNGSjZQbSiTuw49qxtlzmgkxShhU2N2onukTDIOwY2ORaptsWxbDfOqDAXS6x/PVNusQwBRLGhusYpXya48DFCXmtq97VIKu7iRjCSk1EHDm5IPwFncVnjKxeByM3QCiV8CUzUHl2xp/zq+6FKe8+SovkzSa8NnoQvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3vmytB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3vmytB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FEBC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736761553;
	bh=CLmblSU5xapjdoLrF/ntuw0cYHaAP319vaJOfsQPw1I=;
	h=To:Subject:From:Date:From;
	b=q3vmytB6DkksuS2QJRtHZINxj/hGrKMy9H0ITFuGrYhkJ+s33ApAPWB+AUbzqzQk5
	 SIW2sLlwN5ksaGIcnmw3KaIqv2FHaFFBcom2M9R6KG5AxXvcBKMX0J1nza9MrawZyE
	 m1Qf1Zy/apnDitHbI5nd2ScbTBMYj9DtLfAxZjPrYBQCXtTs6Op7bSi1nYzAObDJHM
	 zVQ1PbP3bYj2Bcs4gj7Ap3TygK/zrupAb2fbLyCyiY4JReuDnlmf+BagnG9d8jNlhU
	 RBSb8e4bxCjBUi/p/EpoDq16k8y/6RZl+7ijS8iy8/8viUMRPjeWejExWA6Iw9NM11
	 HSBvPT8AfhhhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F161E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676155357.18907.12627354206609647479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22798da603979c698651e3fde7a52e188e77733020b2b31d6b91693d29b6e76d
Date: Mon, 13 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736761553
