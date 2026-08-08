Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528772E7396
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786162234; cv=none; b=KMw2okPYERxTnEp6lP5I6950B8/CmKNSD1ManIEfFMrWbkyETrlb1jKM/jaMR+5FILdZFkFOq/AddM2sJjIK9Nm3l9Pp7qF7vuW2/iVQ1mgg+gTgfZc5O+A6tdPJELyq9aINs4GQSj7x51gHNegSG+9toJU7V80ruSJUiSvHAH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786162234; c=relaxed/simple;
	bh=//G4/MxO3c5K7oqk3kVAABzBmh4HqVbJbIv/6ATQC+A=;
	h=To:Subject:From:Message-Id:Date; b=oIYV81MfaEO2ol6rhVz0xv7IXiZlELrty5LI4f7/j9xq/SClNRTdGmfZDFJnfiAi3+EbmIXXp+L38tUfEh22+G3o0rFtvcEHrDnGIrxNvm2J3QUvnKmtAjGNAW4j2ajlAi1KtSCohAPJlU7oWvsv8Ix6zPRzFhIlqga0+pt8eqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdn7UWLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdn7UWLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7936C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786162233;
	bh=//G4/MxO3c5K7oqk3kVAABzBmh4HqVbJbIv/6ATQC+A=;
	h=To:Subject:From:Date:From;
	b=gdn7UWLXCPy412KSDRXh+yrw1AyAJBFqj028drEYRbax2z6aRrRKtGsdNmlO3d+wx
	 nAYVRrkh71OMkLZEWHHcRhYqBwv9lbWXRcp2pTkHwolUpURGPGTDAgyIaBU8WE5rUv
	 BNUVv3CCrHMZMxojUlNSeJueeDTPLUiyRr9uOEUzlwX9WhJTlQfG6Qmn2/9LgOtuNH
	 APKCfNgbzFcOqa2vJj8mGyqmvVVmEYvvUOekqDzJTW7zUZNG7Zs9W2PWJ4vPSanXnv
	 TeittPU34meqDJp0OdSDwmy3RQcCZ8j1sxn/B1KyoWuyJpTkp9Lq2I1/MCyRsLtHYA
	 LJ1b1I9KW4GZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4127C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616223370.4070.6240232487002663809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77572594fa40caa3f90b4eb1595f5e96e728fd1d5fe2bd370b01d8998b7fc53
Date: Sat, 08 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786162233
