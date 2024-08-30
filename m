Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C8B1C1728
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725056754; cv=none; b=HlskPb0Y/ex9sxYkoSgCbYRY8qFwtWxiLRyi3kFQwVd/wER71KXkRZ/CEB6em1s1ezxsptHSFD/L11i8GfHv8vUSrf56OaTI/EZtiQs1P+TW2MtzbQFtYVle/19e/rpI/J4n3CCqCeUNCR4KdJ/+VYQHDARFGg6nOGYV3FIcRdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725056754; c=relaxed/simple;
	bh=N3nEDGKtHTZb6B8B1/aklLWP2GUD492L06rLwBV1kwU=;
	h=To:Subject:From:Message-Id:Date; b=XPsxs3USXfvMMbeCr/tzgow2MVlMmxcvqupDTWQ2uahKtpnyNAOivwhkS76xNrMjo9lTRFaug6VncJJ3AN2Lj7F34GIh+RgtgOREwEh+EBgvjmDUx/rekn5S6LD4k+ZvcmmMmOs5rvliJU9hEC5zb6WXSl9MN10jU3JyLgi6Fco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+8//lxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+8//lxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A14C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725056753;
	bh=N3nEDGKtHTZb6B8B1/aklLWP2GUD492L06rLwBV1kwU=;
	h=To:Subject:From:Date:From;
	b=j+8//lxgFA6nC0KXdx2KiUFkcpv4lfujN/xYyoSWbtXFG7Wc77HNl3gLFyD0qPWv3
	 WmjWAZkR1E9Bv9gWJ5mocUZ5a1v5ugMr9FX9V6SBDaiopRh1mIJRWaop6nZE5cS8i3
	 l0vHPrwCPZqZCdrrSpM3k3TSSbvtxMtbvIiI5xmKIa/UYJTj7+DHG2VdhrEeBjMDbp
	 Qc7kpkuTs0h6Ig1fxVV3LOCcrzGsifMvIxMZpRh3PZXaaxZ5q1ogPpJejQLUZuvWj3
	 gtoBPpGcrqLL0HtXRpgjXgk4D8amdECDzVwcxPHZodB/eBJru4wU0UPhq8dgVKX4wx
	 RDTPgxG9W0SQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CAECA101B
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505675359.28620.13223352013381899421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbb55f9f475799c64aeecb07ca50b976c6fcb49b14863282f39155072425dea
Date: Fri, 30 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725056753
