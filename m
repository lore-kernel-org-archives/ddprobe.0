Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3102018DB24
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754762994; cv=none; b=O8JUOXvLiuQGZ9psfncElLEaeGejCr0SavyHj79hi2WA2JdtlLIw58gZoB+jd6w+CLFlnDBC1DQlkSWijJbCQoAbaD+SCg1RSjFjznKfWoZKr5q7o/dHgCbEdBTOHq2udSeZ2DvhysLaAEyoz3CDrW6mndB+w+nWme0an3p7zF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754762994; c=relaxed/simple;
	bh=8mF13F6Jb0wjejcwHyhfYBZRyZgPUWebvkMoZyOt3MY=;
	h=To:Subject:From:Message-Id:Date; b=nqpjXXaEd3FWy24J3VCFz3VlXehPv40wmc/kRD6PNSDag/ZiHHzBMp/lkui3zFKGWGVKS8DoTJgNMuITlTt5Rejq0ehdTFjMp69i3jrWr0neH46rlCT3yAHbZi1Lr8BM+O8G2A38MwrQ37loim7u+PAdX2T5TuRHYT8qVkfWmGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AND1zgmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AND1zgmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754762993;
	bh=8mF13F6Jb0wjejcwHyhfYBZRyZgPUWebvkMoZyOt3MY=;
	h=To:Subject:From:Date:From;
	b=AND1zgmi/CgnupwU3PKqmDNxB7iwMstKR13Hh2A1yz0HCeeRulJbF6IbXivHI3tSD
	 GZt95xAlAM2EF2aSAf0K6+48ccdH72KJSHWOdEIB/uX9ep5okrr71x3IfKNTaPPZiQ
	 VJDxdWHku+3IAfPj8+eU98ubTKHU9f1HiuIVi2c0ZhZv9iiXve6SZerwOipWgQl1sX
	 //vjts2FCcYNf1HIp+x6Zm23O76iO5Y4XeVK2bkR7r6wfCnrs5FHQ4QeZ/eDUIMIoq
	 khRdUPHQSNQt3gHalTeL13rasGN/pXGwLhcA8flQ2QW4Cf5UAhmLM1leo7sF5/fL1H
	 VFt6apWw+aqGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E2BC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476299357.6458.16110234247949287168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c608513e5a37ea210a2ab0e6ad71eed9d57cd8f50f78fa295fee0c1a88d5b0c4
Date: Sat, 09 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754762993
