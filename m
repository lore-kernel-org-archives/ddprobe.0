Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298FB1442F4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749485994; cv=none; b=Rt3kgjcPlFE+mDLOPpjM3uwyWELqiRkA/B6vap1agXmgJ+vipisHDZI69KqyrZtxf6geMdriRKEdh4e5osqX0X6SBdB9CCnUJZIj3b7GnfbgVx9iNAVN7M985pzSe0SJhbUgqCNWRsi+jV8l2io46WpdP7ofHJPYVf+AXf+WtZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749485994; c=relaxed/simple;
	bh=UlXihXhy6Bmx2v4UyXWBwma3E1y7/eDJiz1UVooXvsE=;
	h=To:Subject:From:Message-Id:Date; b=WEUmadnCK3U56cW5FXEdkm/5CKIWMb5x0nm4/A6BIBYeuK3OD0wfuaivzemNjgtaBXhtMg3ST+xlZZqN4a8w4iyWcTiB7rS2hiQAr0ynVOPdZG/zbWDsb0Hj8FYEFcISKLl7kg0938SF1x2f64n/XZt2NyBr7yxp6Cfs28lvehc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uetygb+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uetygb+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A15C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749485993;
	bh=UlXihXhy6Bmx2v4UyXWBwma3E1y7/eDJiz1UVooXvsE=;
	h=To:Subject:From:Date:From;
	b=uetygb+PABgIJHl4Ml72HfcS108q9eejcZgkGoXZ7iQBZA9EEfiHxK7VPNaeUDhNS
	 98XNM+4bmvKxub2GHTtdbUv1T6YrA2NCK4ZEHSOqljzic+1qPUOHGjFhVZ60YvDdYB
	 AYRIe8xz2xvqVst5932pWhxKT3mQbJ5yzMPP8dvxU3RKln1o3PYFd4O9vqoALd0Xen
	 v82/21C5idTcznaItF+0Jx3e1oeGW6WzCmk1uF7SuCJDocrL/6II0BVxtTAbUeaYT2
	 qidsAY3ChKE6p7pqZs+TCFciA8GJS1QMwIteA2Vfsx9AUwXb2hiDaHFQFoIOp6qWuQ
	 Kyr+j5Pap0KiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F843C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948599358.26113.3470134250730201267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368459a0a24b349fa09346d0d255f52799d493cc15a2ed5277b984687dfa4a89
Date: Mon, 09 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749485993
