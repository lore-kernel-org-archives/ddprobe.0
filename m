Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF2926AE4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718407703; cv=none; b=O2xBauxFxBgg50qbbKrMHlTJD/ZkY99iYdLOjJrTURR8ZJnFHjRIJw97fcXrK424983fwfSjt9HvL3l8S52GbeIxCPJ4CwRqk3r3AfCzYsWB5W6QT6pdywPWzLML1TpfcZjMfjpAwYtT/fvkjXDTng7ZQJZ3TXgCFhY6oyt3gCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718407703; c=relaxed/simple;
	bh=OJgzAjD5jyt7dDyzj1ZW020AVXqzIczhKxfYBriA2eM=;
	h=To:Subject:From:Message-Id:Date; b=sTQUCBRWlCTB/vWPwar1E94AuDgLDrXOiDSji1JPsqq+ZFdGnPiR1lsw7nO993HikHoHOIpHFOoMyAGIrL9NpQrZjNBXRsFgMNPBE+XMywbeZviAcJt4J68cX6Xsn38zb/jCHoZU0fLaPxpncouiUBCWGIwy+BR+sVKPAM9WGUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o657QjrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o657QjrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A34C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718407702;
	bh=OJgzAjD5jyt7dDyzj1ZW020AVXqzIczhKxfYBriA2eM=;
	h=To:Subject:From:Date:From;
	b=o657QjrAc7nG5MZhKKOXD7uIp0tZDNyoUHE3iiCo0Wt80bZ0RShFTdx6Hy+byRY8f
	 nKsddsEVLH75MiALWpivXC9wacTT6rkust2E7Op0H8UKfcMaSsAF6h3EvuUBPiA/1o
	 NdRLnhOl2NNs3fLSa5eP+bN9k2aEDDDQk6/J0CfYx5Ricb2iGTVmzFBB6SkZCC06sT
	 mpYcj53DjGY5W025KebD8hu2ngn17r/3WU5Y/2CmCgsmimm6N1Dokurwd5Woa3ajiD
	 4D9cTDW6MyegFNM7NFYxA4QGdhmFrIWhcBEQ3BGibEfCrMMTIIYomNK0i9Rs6cTIhe
	 muWsRkPBbXI5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEB7C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840770276.27814.2631234997983436549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdb9cf51d33978c87c43022b2e503c839ced8d8b66c126e7fa7bf25ef4b0e9c
Date: Fri, 14 Jun 2024 23:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718407702
